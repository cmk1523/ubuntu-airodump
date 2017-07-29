#!/bin/bash
# prepares csvOutputToJson*.sh scripts for Elasticsearch bulk ingest
# Usage ./removeJsonArray.sh output-01.json > output-01.elasticsearch.json

file="$1"
tail -n +2 "$file" | head -n -1 | sed -u 's/,$//' | sed -u -e 's/^/{ "index" : { "_index": "airodump", "_type": "v1" } }\n/' | cat

# bulk ingest in to Elasticsearch
curl -s -XPOST http://bos-01:9200/_bulk --data-binary "@output-01.elasticsearch.json"