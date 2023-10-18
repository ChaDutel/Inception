# syntax=docker/dockerfile:1

FROM debian:Bullseye
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000