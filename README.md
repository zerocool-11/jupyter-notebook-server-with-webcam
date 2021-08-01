# jupyter-notebook-server-with-webcam-supported

it have some python modules which are mainly required are preinstalled and jupyter is also preconfigured
list of some main libraries that are installed specially for machine learning and neural network:
 keras
,plotly
,sklearn
,opencv
,pandas
,numpy
and many more

how to use it:


just download my repo in your system and run:
xhost +
docker-compose up -d  (make sure you change the home directory name in the yml file)
it will setup the continer for you 
after successful completion of this ,just go to your browser and open:
http://localhost:4444
 

it will open up ur jupyter and the best thing is all ur program and will save in your host linux you can access it anytime just go to this directory:
/home/user:/home
you'll get all ur program which you will create in jupyterin ur home directory
and the best part you can use opencv webcam too in the same server (which is difficult to configure in container)
 
 
and if you want to go inside this container just to install some new libraries so just type:
docker exec -it conda bash
 
and then you can install and modify some libraries there....
 
 
 Happy coding ;)................
