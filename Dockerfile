FROM node:13.1-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm cache verify && npm doctor
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]
