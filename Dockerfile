FROM alpine

# Install Node and NPM
RUN apk add --update nodejs npm curl

# Copy app to /src
COPY ./.next/standalone /src

RUN npm install sharp

WORKDIR /src

EXPOSE 3000