# build phase
FROM node:16-alpine as builder
USER node
WORKDIR /home/node/app
COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./
RUN npm run build


# the place for where all of our files that will run in production build will be located at /app/build

# run phase
FROM nginx
EXPOSE 80
# this copy statement essentially says that I want to copy over something from the builder phase, which was ran above
# so it is saying, refer to the builder phase, take from the folder /app/build, and put the files in /usr/share/nginx/html (which is found on the docker hub nginx site)
COPY --from=builder /home/node/app/build /usr/share/nginx/html

# also, there isn't a 'start' command b/c just by starting the nginx container, the nginx server starts for us automatically








