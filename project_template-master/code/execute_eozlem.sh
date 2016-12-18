#!/bin/sh


cd PIRATES

echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> eozlem.txt
scrapy crawl usereozlem

cp eozlem.txt ../eozlem

