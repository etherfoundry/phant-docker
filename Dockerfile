FROM node:alpine
MAINTAINER garrett@garrettboast.com
EXPOSE 8080
EXPOSE 8081

#RUN apt-get update && apt-get install -y unattended-upgrades &&  unattended-upgrades
#HEALTHCHECK --interval=5m --timeout=3s \
#  CMD curl -f http://localhost/ || exit 1

VOLUME ["/phant_streams"]

ENV NODE_ENV production
RUN npm install -g https://github.com/etherfoundry/phant/tarball/master

ENTRYPOINT ["phant"]

CMD [""]
