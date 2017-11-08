#!/bin/bash
DEBUG=0
filename=$(echo pacs*)
output=${filename:0:6}

cat pacs* | cut -f1-5 -d, | sed -e 's/^.*N/N/' -e 's/|//g' > tmp

awk -F ',' 'NF == 2 {print $0}' tmp > tmpp
rm tmp
if [ -e $output.csv ]; then
  rm $output.csv
fi

echo 'CID,Donation,Party' > $output.csv
while IFS="" read -r line
do
#  echo $line '('${line:0:9}')'
  ID=${line:0:9}
#  var=$(grep ${line:0:9} CRP_IDs.csv | awk -F ',' '{print $5}' | head -1)
  rv=$(grep ${line:0:9} /data/opensecrets/CRP_IDs.csv | head -1) 
  var=$(echo -n $rv | awk -F ',' '{print $5}')
  len=$(echo -n $var | wc -m)

  if [ $len -ne 1 ]; then
    if [ $len -eq 5 ]; then 
      var=${rv:0:1}
      len=$(echo -n $var | wc -m)
    else
      var=$(echo -n $rv | awk -F ',' '{print $4}')
      len=$(echo -n $var | wc -m)
    fi
  fi

  if [ $len -ne 1 ]; then
    if [ $len -eq 5 ]; then 
      var=${rv:0:1}
      len=$(echo -n $var | wc -m)
    else
      var=$(echo -n $rv | awk -F ',' '{print $6}')
      len=$(echo -n $var | wc -m)
    fi
  fi

  if [ $len -ne 1 ] && [ "$var" != "R" ] && [ "$var" != "D" ] && [ "$var" != "I" ]; then
    var="?"
  fi

  if [ $DEBUG -eq 1 ]; then
    echo "var: $var len: $len"
    echo 'Writing ' $var ' to the end of the line!'
  fi

  echo "$line,$var" >> $output.csv
done < tmpp
rm tmpp
#var=$(grep N00029147 CRP_IDs.csv | awk -F ',' '{print $5}' | head -1)

echo $var
