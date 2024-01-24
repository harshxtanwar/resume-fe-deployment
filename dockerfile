FROM node:20-alpine3.18
WORKDIR '/app-fe'
COPY package.json .
COPY package-lock.json ./
RUN npm install
COPY . .
RUN npm run build 
RUN npm install -g serve
EXPOSE 3000
CMD ["serve","./build","-l","3000"]
