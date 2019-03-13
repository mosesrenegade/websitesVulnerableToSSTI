if [ $# -eq 0 ]
  then
    IP="127.0.0.1" 
else
    IP=$1
fi

docker build -t go-template .
docker run -d  -i -p $IP:5090:5090 -w /home go-template sh ./run.sh 