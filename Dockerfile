
#Specify base Image 
FROM node:14-alpine

#specifying the base working director
#id directory isn't present it will create the directory
WORKDIR /usr/app

#install some dependencies
#COPY ./ ./

# to make sure all the below steps do repaeate and they get used from cache when there no chnage in package.json
COPY ./package.json ./ 
RUN npm install

#Copying all files 
COPY ./ ./

#default command 
CMD ["npm","start"]
