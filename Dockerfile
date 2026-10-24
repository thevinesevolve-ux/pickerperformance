FROM node:25-alpine
WORKDIR /app
# The app uses only built-in modules; drop the bundled package managers.
RUN rm -rf /usr/local/lib/node_modules/npm /usr/local/lib/node_modules/corepack \
  /usr/local/bin/npm /usr/local/bin/npx /usr/local/bin/corepack
COPY package.json .
COPY server.js .
COPY index.html .
USER node
EXPOSE 3000
CMD ["node", "server.js"]
