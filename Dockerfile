FROM node:23-alpine3.19

ENV NODE_ENV development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
# COPY yarn.lock .
RUN npm install
# Copy app files
COPY . .
# Expose port
EXPOSE 3000
# Start the app
CMD [ "npm", "run", "start" ]

# RUN mkdir /app
# WORKDIR /app

# RUN npm install -g nodemon

# COPY package.json package.json
# RUN npm install && mv node_modules /node_modules

# COPY . .

# LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

# CMD node server.js
