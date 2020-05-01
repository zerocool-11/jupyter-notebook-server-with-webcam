# anaconda_full

it have some python modules which are mainly required are preinstalled and jupyter is also preconfigured
docker image link:
https://hub.docker.com/r/zerocool11/anaconda_full

list of some main libraries that are installed specially for machine learning and neural network:
keras
plotly
sklearn
opencv
pandas
numpy


how to use it:
just download my repo in your system and run:
docker-compose up -d
it will setup the continer for you 
after successful completion of this ,just go to your browser and open:
http://localhost:4444A
 
it will open up ur jupyter and the best thing is all ur program and will save in your host linux you can access it anytime just go to this directory:
/var/lib/docker/volumes/jupt/_data/
you'll get all ur program which you will create in jupyter
 
 
and if you want to go inside this container just to install some new libraries so just type:
docker exec -it conda bash
 
and then you can install and modify some libraries there....
 
 
 Happy coding ;)................
