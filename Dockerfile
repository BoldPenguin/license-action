FROM ubuntu

RUN apt-get update && apt-get install -y \
    curl \
  && rm -rf /var/lib/apt/lists/*

ENV LICENSED_VERSION 3.1.0

RUN curl -sSL https://github.com/github/licensed/releases/download/${LICENSED_VERSION}/licensed-${LICENSED_VERSION}-linux-x64.tar.gz > licensed.tar.gz \
  && tar -xzf licensed.tar.gz -C /usr/local/bin \
  && rm -f licensed.tar.gz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
