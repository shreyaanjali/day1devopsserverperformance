echo "Top 5 IP addresses with the most requests:"
echo "$(grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' log.log | sort | uniq -c | sort -nr | head -5  | awk '{print $2   " - " $1     " requests" }' ) "


echo "Top 5 most request path:"
echo "$( awk '{print $7}' log.log | uniq -c | head -6  | awk '{ print $2 " - " $1 "request"}')"  

echo " Top 5 response status code :"

echo "$(awk '{print $9}' log.log | uniq -c | head -6 | awk '{ print $ 2 " - " $1 " request " }' )"

