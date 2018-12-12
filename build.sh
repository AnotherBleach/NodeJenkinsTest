sudo docker ps|grep 10.108.210.227:8000/library/nodewcy:latest|awk '{print $1}'|xargs docker stop ||true;
sudo docker ps -a|grep 10.108.210.227:8000/library/nodewcy:latest|awk '{print $1}'|xargs docker rm ||true;
sudo docker rmi 10.108.210.227:8000/library/nodewcy:latest||true;
sudo docker build -t 10.108.210.227:8000/library/nodewcy:latest .;
sudo docker push 10.108.210.227:8000/library/nodewcy:latest;
