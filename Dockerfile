FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash \
  && mkdir -p /home/node/app \
  && touch /root/.bashrc | echo "PS1='\w\$ '" >> /root/.bashrc \
  # && npm config set cache /home/node/app/.npm-cache --global \
  && npm install -g @loopback/cli

# USER node

WORKDIR /home/node/app

# COPY --chown=node package*.json ./

# RUN npm install

# COPY --chown=node . .

# RUN npm run build

# ENV HOST=0.0.0.0 PORT=3000

# EXPOSE ${PORT}
# CMD [ "node", "." ]
