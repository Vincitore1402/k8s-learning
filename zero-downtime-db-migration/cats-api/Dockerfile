FROM node:14.19.1

RUN npm i -g @nestjs/cli

WORKDIR /usr/src/app

COPY . .

RUN yarn install

CMD ["yarn", "run", "prebuild"]
CMD ["yarn", "run", "build"]
CMD ["yarn", "run", "start:prod"]
