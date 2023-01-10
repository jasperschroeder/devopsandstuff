echo "Hello World!"
echo "Here are some Docker commands: "
echo ""


echo "Let's first start with docker pull"
echo "First execution will take some time, subsequent downloads will be quicker since only the additional layers will be downloaded"

echo ""
echo "Pulling the latest Ubuntu image: "
docker pull ubuntu 

echo ""
echo "Now the image is downloaded, but no container with it is running yet."
echo "A check with docker ps confirms:"
docker ps 

echo ""
echo "Let's run a container with the latest ubuntu image"
echo "We need to run this in a new command prompt window"
start docker run -it ubuntu 

echo ""
echo "We can confirm that the container is running with the docker ps command"
docker ps 

echo ""
echo "In order to shut it down, we need to stop it by passing docker stop command"
echo "since we may not know the image id we can use the following command to get it:"
docker ps -q 
echo  `docker ps -q`

echo ""
echo "Shutting down container (No grace period, sorry): "
docker stop `docker ps -q ` -t 0

echo ""
echo "Finally, check that no container runs again:"
docker ps 

echo "" 
echo "Let's check all running and stopped containers:"
docker ps -a 

echo ""
echo "Let's download Python3 and Python2 images:"
docker pull python:3
docker pull python:2

echo ""
echo "Ok, that worked out. Let's now look at all the images we have downloaded so far:"
docker images

echo ""
echo "Not that many yet, but let's assume we don't need Ubuntu anymore."
echo "We first remove the container:"
docker rmi ubntu 

echo "This fails because a container is still using the image."
echo "We have two options now, remove associated container and then the image OR force to remove the docker image."

echo ""
echo "Let's try option number 1"
echo "We list all the containers that use the ubuntu image"
echo "explanation of the tags:"
echo "-a: all containers are listed"
echo "-q: only container ids to be displayed"
echo "-f: filter by a condition provided"
echo "Filtering based on the 'ancestor', i.e., the containers that use a certain image."
docker rm `docker ps -aqf "ancestor=ubuntu"`

echo ""
echo "Now we can proceed with removing the image:"
docker rmi ubuntu

echo ""
echo "Done for now."
