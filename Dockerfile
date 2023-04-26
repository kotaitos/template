###################
# SINGLE STAGE BUILD
###################
FROM node:18.16.0-slim AS base

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile

COPY . .
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
