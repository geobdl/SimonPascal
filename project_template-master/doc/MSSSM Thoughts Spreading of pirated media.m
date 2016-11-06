MSSSM Spreading of pirated media

basic idea

4 functions
	seed
	cinema
	pirated
	evaluation
	(connection)

whereas seed
	generates a random pattern of moviegoers
		depending on one or a few variables
			size
			occupation
			(excitement)

whereas cinema
	is a spreadingmodel 
	iterated over a certain amount of times
	depending on 
		the cinemagoers 
			from fct seed
		threshhold
		max time
	generates data on how often somebody watched a movie in cinema

whereas pirated
	is a spreadingmodel 
	iterated over a certain amount of times
	depending on 
		evaluation
		the pirates
			from fct seed
		threshhold
			from evaluation (of cinemagoers)
		maxtime
	generates data on how often somebody watched a movie pirated

whereas evaluation
	is a function to evaluate the matricees
		created by
			fct cinema
			fct pirated
	is able to calculate and display
		moviewatchers versus time
			for both cinema and pirated
		compare them
	fit suggested models and mathematical contexts to the graps

(maybe)
whereas connection
	is a function to link 
		the functions
			cinema
			pirated
