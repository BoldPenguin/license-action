FROM ruby

RUN apt-get update && apt-get install -y \
    cmake \
  && rm -rf /var/lib/apt/lists/*

RUN gem install licensed

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
