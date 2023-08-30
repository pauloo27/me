FROM node:16 AS builder

WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM code.db.cafe/pauloo27/garcom:latest
WORKDIR /app
COPY --from=builder /app/build .
EXPOSE 80
ENTRYPOINT ["garcom", "-error-404", "/app/404/index.html"]
