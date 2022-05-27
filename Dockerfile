FROM node:13
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm audit fix
COPY . /app
CMD npm start 
EXPOSE 3000
