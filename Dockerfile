FROM node:latest

WORKDIR ./apps/app1

COPY apps ./apps

COPY layers ./layers

COPY packages ./packages

RUN npm install -g pnpm

RUN pnpm --filter nuxt-app install

RUN pnpm --filter nuxt-app build

CMD ["pnpm", "run", "start"]