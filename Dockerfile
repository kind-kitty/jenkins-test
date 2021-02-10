
FROM node:10

WORKDIR /opt/usr

RUN apt-get update && \
    DEBIAN_FRONTEND="nointeractive" \
    apt-get install -y --no-install-recommends \
    chromium=73.0.3683.75-1~deb9u1 \
    libgconf-2-4 \
    openjdk-8-jre-headless \
    && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
