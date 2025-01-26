FROM node:lts-buster
RUN git clone https://github.com/MRSHABAN40/SHABAN-SOBX-MD/root/SHABAN-SOBX-MD
WORKDIR /root/SHABAN-SOBX-MD
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]