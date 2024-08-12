FROM swr.cn-south-1.myhuaweicloud.com/fenggp/origin/node:latest
WORKDIR /nuxt-app
COPY . .
RUN pnpm install && pnpm run build
CMD ["pm2-runtime", "start", "ecosystem.json"]
