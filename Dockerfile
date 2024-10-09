# https://medium.com/@dwarampudisaireddy1514/how-to-hide-the-source-code-from-browser-in-react-application-ecd18086ca9a

FROM node:16.16.0 as base

WORKDIR /app

COPY package*.json .

RUN npm ci — only=production

COPY . .

# COPY config/webpack.config.js /usr/src/app/webpack.config.js

RUN npm run build

CMD ["npm", "start"]