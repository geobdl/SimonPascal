#!/bin/sh


cd PIRATES

echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> makintos13.txt
scrapy crawl usermakintos13
cp makintos13.txt ../makintos13

