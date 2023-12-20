FROM node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . . 
ENTRYPOINT ./entrypoint.sh
EXPOSE 3000