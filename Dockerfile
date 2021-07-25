FROM node:12-alpine as develop

WORKDIR /usr/app
RUN npm install -g @angular/cli@8.2.2
ENV PATH /usr/app/node_modules/.bin:$PATH

COPY package.json package-lock.json ./
  RUN npm install
COPY . .

EXPOSE 4200
CMD ng serve --host 0.0.0.0 --poll=100
