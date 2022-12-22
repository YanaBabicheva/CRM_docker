FROM node:14 as client

WORKDIR /app/client

COPY client/package.json /app/client

RUN npm install

COPY client /app/client

RUN npm run build

FROM node:16-alpine

WORKDIR /app

COPY backend/package.json /app

RUN npm install

COPY backend /app

COPY --from=client /app/client/build /app/client

EXPOSE 5000

CMD [ "npm", "start" ]