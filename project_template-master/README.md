# MATLAB Fall 2016 – Research Plan 

> * Group Name: To err is human, to arr is pirate.
> * Group participants names: Simon Ghysbrecht & Pascal Zehnder
> * Project Title: A Contagion Based Model for the Spreading of Pirated Movies over the Internet.

## General Introduction

In the last few decades, internet piracy has known an incredible growth, reaching proportions by far exceeding any counterfeit type products before them. Illegal copies of digital files are being spread in huge numbers and all over the world. Most frequently shared are without any doubt entertainment products like music or movies, but other types of products ranging from software to scientific articles are being distributed in unautorized ways and on a large scale as well. As these ilicit practices seem to have a considerable influence on the industries involved, quite some effort has been done to understand and combat pirating, both on the demand and the supply side of the matter. The problem can be studied from multiple points of view (economical, psychological, information science etc.), and further literature study will be necessary to figure out which facets of the problem have already been investigated to what extent. However, the spreading of pirated files seems to lend itself for implementation in a relatively simple social model without actually needing a huge amount of background knowledge on the issue. Our main focus will be on pirated movies. The reason for this is two-fold:
 	* movies are one of the most frequenty pirated files
	* contrary to music files (often downloaded per album) or tv-series (often downloaded per season(s)), movies usually stand alone.


## The Model

We plan to implement a social model for the spreading of pirated files on the internet based on a two layer contagion model. The first one is ought to simulate the viewers who do or do not see the movie in cinemas. The second layer, which bases on some data of the first one is to get an estimate of the distribution of a pirated, illegal version over the internet.
Research has to be done on how this implementation might fail and make it work, and to determine necessary parameters in the running system.

## Fundamental Questions

How can the spreading of pirated movies be modelled using contagion models?
Is it possible to correlate single parameters as budget or normalized box office (normalized by the budget) towards either the amount or the velocity of the spread of a pirated version?
How does the delay of the HiRes-Media (DVD/Bluray) affect the spreading of the illegal copy?
What is the influence of accesibility of the illegal files? (this can temporarily drop, e.g. when some of 
the more prominent torrent sites get pulled)


## Expected Results

On one hand we expect the model to behave similar to a contagion model, in the case that someone who has seen the movie will not watch it again unless he really liked it (popularity). On the other hand the first few days of the model will be very different, as a good movie will flood the theaters with visitors on the first day already, it does not have to become popular. This initial state will be controled mainly by the budget-parameter.
Also there might be big influence on the amount of visitors in theaters if a good version of the movie leaks early.

## References 
Novos, Ian, and Michael Waldman. 
"Piracy of intellectual property: past, present, and future." 
Review of Economic Research on Copyright Issues 10.2 (2013): 1-26.

Miyazaki, Anthony D., Alexandra Aguirre Rodriguez, and Jeff Langenderfer. 
"Price, scarcity, and consumer willingness to purchase pirated media products." 
Journal of Public Policy & Marketing 28.1 (2009): 71-84.

Smith, Michael D., and Rahul Telang. 
"Competing with free: the impact of movie broadcasts on DVD sales and internet piracy 1." 
mis Quarterly 33.2 (2009): 321-338.

Schechter, Stuart E., Rachel A. Greenstadt, and Michael D. Smith. 
"Trusted computing, peer-to-peer distribution, and the economics of pirated entertainment." 
Proceedings of The Second Annual Workshop on Economics and Information Security. 2003.

Watts, Duncan J. 
"A simple model of global cascades on random networks." 
Proceedings of the National Academy of Sciences 99.9 (2002): 5766-5771.

## Research Methods

Agent-based model


## Other

Posibilities for further investigation: 1) If there is a possibility of data sampling, it would be nice to test the model against empirical data. 2) Influence of competitive sources like Netflix, streaming sites, ... 3) Investigation of less obvious parameters: susceptibility of audience (younger people vs older people, men vs women, ...), geographical influences, financial influences, influences of law makers and policy. 4) Other types of pirated files like music, tv series, books, pornograpy, software or scientific articles could be modelled as well, and results can be compared. 5) Movies don't always appear on torrent sites in the same way; often, bad quality version appear shortly after release in the cinema. The best quality versions appear once the DVD/BluRay is released. Movies nominated for oscars usually get leaked in decent quality very early, sometimes before they are in cinemas.
