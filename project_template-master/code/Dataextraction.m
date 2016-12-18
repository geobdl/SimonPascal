function [stats,Names,timescale ] = Dataextraction(FileName,SeederNr,NameSeeder)
%Dataextraction extracts data from scraped files
% FileName: containing the data for timestamps and name of the files
% SeederNr: containing the data for the number of seeds in the same row as
% the name
% NameSeeder is a 'STRING' which is used only to save the file. normaly
% defined as the Name of the Seeder

timescale = []; % preallocation
Names = {};
stats = []; % size(stats,1) returns the number of data colleciton cycles, ...
                % size(stats,2) returns the number of different seeds
sets = 0;% counts the number of data sets aquired during the session
newname = 1; % forces the loop to enter the newname the first time

for row = 1:length(SeederNr) % for every line one by one
    name = strsplit(FileName{row}); % splits the name
    %% Date Found
    if strcmp(name{1},'date') % time and date stamp has been found
        datetime = strsplit(name{4},'.');  % splits into date and time
        date = strsplit(datetime{1},'/'); % splits date
        time = strsplit(datetime{2},':'); % splits time
        timescale = ... % saves the date as [year month day hour min sec]
            [timescale; str2double(date{1}) str2double(date{2}) str2double(date{3})...
            str2double(time{1}) str2double(time{2}) str2double(time{3})]; %#ok<AGROW>
        sets = sets+1; % sets next saving (should be called first, otherwhise programm will break)
        stats = [stats; zeros(1,size(stats,2))]; %#ok<AGROW>
        %% Name Found
    else % a name has not been found
        Movienameparts = strsplit(FileName{row}); %remove the file appendix
        Movienameparts = strsplit(Movienameparts{2},'.'); %split into different names
        Moviename = strjoin(Movienameparts,' '); % saves name into one string
        %% Loop 
        for Namenr = 1:length(Names) % check for every name in the list
            %% check if name already in the database
            if strcmp(Moviename,Names{Namenr}) % name already in the list
                %% Existing Name    
                stats(sets,Namenr) = SeederNr(row);%#ok<AGROW> % Save stats in the dedicated matrix
                newname = 0; % sets the condition for next if to 0
                break; % breaks the for loop, because the name is found, and the data saved
            else
                newname = 1 ; % sets condition to enter %% New Name
            end
        end
        if isempty(Names) % creates namenr = 0, because the forloop creates namenr = [];
            Namenr = 0;
        end
            if newname
            %% New Name
                Names = {Names{1:end} Moviename};% Add name to the list
                stats = [stats zeros(size(stats,1),1)];%#ok<AGROW> % create new row in matrix
                Namenr = Namenr + 1;% increase namenr by one,  ...
                % because it has not been found in the database
                stats(sets,Namenr) = SeederNr(row);% save stats in the dedicated matrix
                newname = 0; % reset to status
            end
    end
end
%% savedata
    dateandtime = {NameSeeder,...
    num2str(timescale(1,1)),num2str(timescale(1,2)),num2str(timescale(1,3)),...
    num2str(timescale(1,4)),num2str(timescale(1,5)),num2str(timescale(1,6)), '.mat'};
    % set up strings for strjoin
    savename = strjoin(dateandtime, '_'); % join strings
    savestruct.Names = Names; % struct save
    savestruct.stats = stats; % struct save
    savestruct.timescale = timescale; % struct save #ok<STRNU>
save(char(savename), '-struct', 'savestruct') % saves the stats under given name
end