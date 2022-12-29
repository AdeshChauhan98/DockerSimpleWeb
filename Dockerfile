#Specify a base image
FROM node:14-alpine

#setting up directory where your application 
#copies inside docker image diretory
WORKDIR /usr/app

#copy dependancy file only
#because on changing any file npm install do not re run again
COPY ./package.json ./

#Install Dependancy
RUN npm install

#copy whole files
COPY ./ ./

#start command
CMD ["npm", "start"]