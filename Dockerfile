FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build 
ARG password_var=1234
ENV VITE_APP_PASSWORD=$password_var
EXPOSE 8080 
CMD [ "http-server", "dist" ]