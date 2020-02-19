FROM node:12

COPY . /CWOM-Action-Integration/

WORKDIR /CWOM-Action-Integration

RUN npm install && \
        openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /selfsigned.key -out /selfsigned.crt -subj "/C=AU/ST=Victoria/L=Melbourne/O=Cisco/CN=localhost"

ENTRYPOINT [ "npm", "start" ]