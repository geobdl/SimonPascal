%% MSSSM sopm

function [network] = spread(s,p,threshhold,maxtime)
	breakcriteria  = 0;
	runtime = 0;
    network = GenerateNetwork(s,p);
    matrixold = network;
	while breakcriteria ~= 3 % number of times nothing happens
		network = UpdateNetwork(network,runtime,threshhold);
        %% Spreading
			%########### INSERT ###########
			%###########  CODE  ###########
			%###########  HERE  ###########
		%% Count calculations, time
		runtime = runtime + 1;

		%% Break criterias
		if matrixold == network % compare old and new matrices,  
			breakcriteria = breakcriteria+1; % add up times nothing happend
		elseif maxtime < runtime % break if something happend
			breakcriteria = 3;
		else
			matrixold = network; % set up new "old" matrix for comparison
			breakcriteria = 0; % reset if something happend
		end
	end	
end

