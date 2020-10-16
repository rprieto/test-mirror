FROM alpine
WORKDIR /dist
ADD site .
RUN sed -i 's/world/everyone/' index.html
