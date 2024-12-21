Step 1
Firstly i generated a react fronted application using vite. This is the command I used
“npm create vite@latest react-app”



Step 2
My dockerfile for the react -app and a .dockerignorefile to ignore the node_module

I excluded the node_modules directory because it is a best practice that leads to smaller, faster, and more reliable Docker image. It ensures that my application dependencies are installed based on the defined specifications in package.json, and maintaining consistency between development and production environments, it helps to avoid unnecessary files and complications in my Docker image.

Step 3
Adding “--host 0.0.0.0” to the vite configuration file


By adding the --host 0.0.0.0 option, I am instructing Vite to listen to all available network interfaces, to accept connections from any IP address. This means that when my Docker container is running, i can access my Vite application by using my host machine's IP address or localhost

Step 4
Building the docker image


Running the docker image as a container 

Step 5
Docker Login: logging in into my dockerhub through the terminal and pushing the image




Step 6
Creating an Ubuntu instance on aws, then i installed docker on the instance



Step 8
Pulling the image from my dockerhub on the instance


Step 9
Running the image as a container and allowing custom tcp port 5173 in the security group of the instance and assessing the application on the web with my instance public address

 

