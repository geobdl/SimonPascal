# MATLAB Fall 2014 – Research Plan 

> * Group Name: (be creative!)
> * Group participants names: Simon Ghysbrecht & Pascal Zehnder
> * Project Title: A Contagion Based Model for the Spreading of Pirated Movies over the Internet.

## General Introduction

In the last few decades, internet piracy has known an incredible growth, reaching proportions by far exceeding any counterfeit type products before them. Illegal copies of digital files are being spread in huge numbers and all over the world. Most frequently shared are without any doubt entertainment products like music or movies, but other types of products ranging from software to scientific articles are being distributed in unautorized ways and on a large scale as well. As these ilicit practices seem to have a considerable influence on the industries involved, quite some effort has been done to understand and combat pirating, both on the demand and the supply side of the matter. The problem can be studied from multiple points of view (economical, psychological, information science etc.), and further literature study will be necessary to figure out which facets of the problem have already been investigated to what extent. However, the spreading of pirated files seems to lend itself for implementation in a relatively simple social model without actually needing a huge amount of background knowledge on the issue. Our main focus will be on pirated movies. The reason for this is two-fold:
 		* movies are one of the most frequenty pirated files
		* contrary to music files (often downloaded per album) or tv-series (often downloaded per season(s)), movies usually stand alone.


## The Model

We plan to implement a social model for the spreading of pirated files on the internet based on "a two layer contagation model. The first one is ought to simulate the viewers who see the movie in cinemas, or dont. The second layer, which bases on some data of the first one is to get an estimate of the distribution of a pirated, illegal version over the internet.
Research has to be done on how this implementation might fail and make it work, and to determine necessary parameters in the running system."

## Fundamental Questions

How can the spreading of pirated movies be modelled using contagion models?
"Is it possible to correlate single parameters as budget or normalized box office (normalized by the budget) towards either the amount or the velocity of the spread of an pirated version?
How does the delay of the HiRes-Media (DVD/Bluray) affec the spreading of the illegal copy?"


## Expected Results

"On one hand we expect the model to behave similar to a contagation model, in the case that someone who has seen the movie will not watch it again unless he really liked it(popularity). On the other hand the first few days of the model will be very different, as a good movie will flood the theaters with visitors on the first day already, it does not have to become popular. This initial state will be controled mainly by the budget-parameter.
Also there might be big influence on the cinemavisitors if a good version of the movie leaks early."

## References 




## Research Methods

Agent-based model


## Other

Possible outlook: 
	* if there is a possibility of data sampling, it would be nice to test the model against empirical data
	* influence of competitive sources like Netflix, streaming sites, ...
	* investigation of less obvious parameters: susceptibility of audience (younger people vs older people, men vs women, ...), geographical influences, financial 													influences
	* other types of pirated files like music, tv series, books, pornograpy, software or scientific articles could be modelled as well, and results can be compared
	* movies don't always appear on torrent sites in the same way; often, bad quality version appear shortly after release in the cinema. The best quality versions 
	  appear once the DVD/BluRay is released. Movies nominated for oscars usually get leaked in decent quality very early, sometimes before they are in cinemas.
