FROM postgres:latest


FROM node:16.15 
#Add a work directory
WORKDIR /app
#Cache and Install dependencies
COPY package.json .
RUN npm install
#Copy app files
COPY . .
#Expose port
EXPOSE 1337 
#Build command

RUN npm run build 

#Start the app
CMD npm run start
