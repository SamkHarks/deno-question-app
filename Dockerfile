FROM denoland/deno:alpine-1.22.0

EXPOSE 10000

WORKDIR /app

COPY deps.js .

RUN deno cache deps.js

COPY . .

CMD [ "run", "--allow-net", "--unstable", "--allow-read", "--allow-env", "run-locally.js" ]