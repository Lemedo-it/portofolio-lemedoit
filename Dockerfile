FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

EXPOSE 3500

CMD ["npm", "run", "dev", "--", "--port=3500", "--host=0.0.0.0"]
