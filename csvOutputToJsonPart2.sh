file="$1"
cat "$file" | sed '/Station MAC/,$!d' | csvtojson | cat
