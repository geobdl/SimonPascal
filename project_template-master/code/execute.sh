#!/bin/sh

cd PIRATES
echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> pirating-$(date +'%d%m%Y').jl
scrapy crawl pirate -o pirating-$(date +'%d%m%Y').jl
cd ..
cp PIRATES/pirating-$(date +'%d%m%Y').jl .
