#!/bin/sh

n=$(wc -l < PIRATES/links/users.txt)
cd PIRATES
for (( i=0; i<$n; i++ ))
do
	echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> user-$i-$(date +%d%m%Y).jl
	scrapy crawl user -u $i -o user-$i-$(date +%d%m%Y).jl
	cp user-$i-$(date +%d%m%Y).jl ..
done
