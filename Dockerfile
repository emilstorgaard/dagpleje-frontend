# Build stage
FROM node:lts-alpine AS builder

WORKDIR /usr/src/app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

# Production stage
FROM node:lts-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build build/
COPY --from=builder /usr/src/app/package.json .
COPY --from=builder /usr/src/app/yarn.lock .

RUN yarn install --frozen-lockfile --production

EXPOSE 8480

CMD ["node", "build"]