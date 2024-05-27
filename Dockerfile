FROM nginx:alpine
LABEL org.opencontainers.image.source https://github.com/ondrejsika/ondrejsika.mojeid.cz
COPY ./src /usr/share/nginx/html
