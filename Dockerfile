FROM node:lts-slim

RUN apt-get update && apt-get install -y jq qrencode

WORKDIR /jsonresume-theme-aurora
ADD jsonresume-theme-aurora/package.* /jsonresume-theme-aurora/
RUN npm install

ADD jsonresume-theme-aurora /jsonresume-theme-aurora
ADD entrypoint /entrypoint

ENTRYPOINT [ "/entrypoint/entrypoint.sh" ]
CMD [ "npm", "start" ]
