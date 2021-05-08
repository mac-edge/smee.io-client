FROM node:16-alpine3.11

WORKDIR /usr/src/app/

RUN npm install --global smee-client

ENV SMEE_URL=https://smee.io/new \
    TARGET_URL=http://127.0.0.1:8080/path

CMD ["ash", "-c", "smee --url $SMEE_URL --target $TARGET_URL"]