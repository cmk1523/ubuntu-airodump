#!/bin/bash
# airodump-ng CSV to JSON converter using BASH
# Usage ./csvOutputToJsonPart1.sh output-01.csv > output-01.part1.json

file="$1"
tail -n +2 "$file" | sed -u '/Station MAC/,$d' | head -n -1 | csvtojson | cat
