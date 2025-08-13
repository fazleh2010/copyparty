# copyparty

## How to run a copyparty in server?
Go to server and go to the location: 

cd /data/copyparty

Build the docker 

docker build -t copyparty-python .

Run the docker

docker run -d -p 5010:5010 -v /data/copyparty:/copyparty copyparty-python

Browse the file share follow:
http://137.248.186.54:5010/

## How to run a copyparty in Local Machine?
For local machine
cd /home/melahi/code/fileshare/copyparty
Build the docker 
docker build -t copyparty-python .
Run the docker
docker run -d -p 5010:5010 -v /home/melahi/code/fileshare/copyparty:/copyparty copyparty-python
Browse the file share follow:
http://localhost:5010

