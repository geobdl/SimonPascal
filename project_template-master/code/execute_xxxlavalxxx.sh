#!/bin/sh


cd PIRATES

echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> xxxlavalxxx.txt
scrapy crawl userxxxlavalxxx

cp xxxlavalxxx.txt ../xxxlavalxxx

