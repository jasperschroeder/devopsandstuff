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
echo "Done for now."
