while true
do
    clear
    curl -s localhost:$1 > lc
    cat lc | tr -d '\r\n' | sed -e '$a\'
    sleep 2
    
done