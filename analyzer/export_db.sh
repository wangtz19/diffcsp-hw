#!/bin/bash
 
db=cspuzz_result
user=cspuzz
pass=cspuzz

mkdir -p export
for table in $(mysql -u$user -p$pass $db -Be "SHOW tables" | sed 1d); do
  echo "exporting $table.."
  mysql -u$user -p$pass $db -e "SELECT * FROM $table" | sed 's/\t/","/g;s/^/"/;s/$/"/;' > export/$table.csv
done
