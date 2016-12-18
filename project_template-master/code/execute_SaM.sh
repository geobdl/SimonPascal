#!/bin/sh


cd PIRATES

echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> SaM.txt
scrapy crawl userSaM

cp SaM.txt ../SaM

