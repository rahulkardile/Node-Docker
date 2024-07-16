FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs   

WORKDIR /app

COPY package.json package-lock.json ./
COPY . .

RUN npm install

EXPOSE 3300

ENTRYPOINT [ "node", "/app/index.js" ]
