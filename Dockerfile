FROM alpine/git:latest
WORKDIR /usr/git
RUN git clone https://github.com/dirigiblelabs/zeus-v3-applications-sample-html5

FROM httpd:latest
COPY --from=0 /usr/git/zeus-v3-applications-sample-html5/html5/ /usr/local/apache2/htdocs/
EXPOSE 80
