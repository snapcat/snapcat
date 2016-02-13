DATE=`echo "SNAPCAT CHAT" > log; date>>log; echo "">>log;`
while true
do 
  #cat some_file_to_server | nc -l 8008 | tail -n 1 >> log_file
  nc -l $1 | tail -n 1 >> log
  echo "" >> log
done