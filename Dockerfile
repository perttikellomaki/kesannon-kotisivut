FROM ubuntu:18.04
RUN apt-get update; apt-get install -y ruby2.5 bundler jekyll
ADD docker-entrypoint.sh /
CMD /docker-entrypoint.sh
