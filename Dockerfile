# Use an official Node runtime as a parent image
FROM node:boron

RUN mkdir -p /usr/src/app

# Set the working directory to /dist
WORKDIR /usr/src/app 

# Copy the current directory contents into the container at /src
COPY package.json .

# Install any needed packages specified in requirements.txt
RUN yarn

COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000 

CMD [ "yarn" , "start"]


