FROM node:13.1-alpine

COPY package*.json ./
RUN npm cache verify && npm doctor
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]
