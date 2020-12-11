FROM alpine
WORKDIR /dist
ADD site .
RUN sed -i 's/world/everyone/' index.html
RUN if [ -n "${http_proxy}" ]; then echo "Proxy is $http_proxy"; fi
