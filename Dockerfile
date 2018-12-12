FROM reidweb1/node-typescript:1.0.0
WORKDIR /code
ADD . ./code

EXPOSE 8080
RUN npm install && tsc
RUN npm install -g ts-node
CMD ["ts-node", "./code/app.ts"]