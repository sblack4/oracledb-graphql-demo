# By Steven Black 2018-04-26
#
# Fully patent-void and copyright free
#

# node v6 for sqlite3 support
FROM node:6

RUN mkdir /app && \
    cd /app

# VOLUME [ "/data", "/app" ]

# copy over package json
COPY package*json .

RUN npm install

COPY . . 

EXPOSE 8080

CMD ["npm", "start"]

