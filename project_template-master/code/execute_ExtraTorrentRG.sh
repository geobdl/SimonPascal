#!/bin/sh


cd PIRATES

echo "date and time: $(date +%Y/%m/%d.%H:%M:%S)" >> ExtraTorrentRG.txt
scrapy crawl userExtraTorrentRG

cp ExtraTorrentRG.txt ../ExtraTorrentRG

