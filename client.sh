if [ -n "$2" ]; then
    USER=id | cut -d ')' -f 1 - | cut -d '(' -f 2 -
    TIME=`date | head --bytes 16 | tail --bytes 5`
    echo "$TIME : $USER : $2" > msg
    echo "" >> msg
    curl -d "@./msg" localhost:$1
else
    curl localhost:$1
fi