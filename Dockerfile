FROM ubuntu:18.04

MAINTAINER Johani Vajakas <mindthecap@gmail.com>

# build intial apk binary cache and install iperf
RUN apt-get update && apt-get install -y nginx apache2-utils && apt-get clean


# Expose the default iperf server port
EXPOSE 80/tcp

# entrypoint allows you to pass your arguments to the container at runtime
# very similar to a binary you would run. For example, in the following
# docker run -it <IMAGE> --help' is like running 'iperf --help'
#ENTRYPOINT ["nginx"]

CMD ["nginx", "-g", "daemon off;"]
