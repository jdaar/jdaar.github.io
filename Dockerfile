FROM node:17
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "build"]