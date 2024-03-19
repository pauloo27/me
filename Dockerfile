FROM node:16 AS builder
RUN corepack enable pnpm

WORKDIR /app
COPY . .
RUN pnpm install
RUN pnpm build

FROM code.db.cafe/pauloo27/garcom:latest
WORKDIR /app
COPY --from=builder /app/build .
EXPOSE 80
ENTRYPOINT ["garcom", "-error-404", "/app/404/index.html"]
