FROM nginx:latest

ADD . /usr/share/nginx/html/bolek
WORKDIR /usr/share/nginx/html/bolek
RUN cat .env>version.html
RUN echo $(date)>>version.html


EXPOSE 80
