FROM swr.cn-south-1.myhuaweicloud.com/fenggp/origin/node:latest
WORKDIR /nuxt-app
COPY . .
RUN npm install && npm run build
CMD ["pm2-runtime", "start", "ecosystem.json"]
