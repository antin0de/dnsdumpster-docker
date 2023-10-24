FROM python:3.9-alpine

# Install build tools and libraries.
RUN apk update && apk add --no-cache \
    build-base \
    libffi-dev \
    openssl-dev \
    libc-dev \
    linux-headers \
    libxml2-dev \
    libxslt-dev

WORKDIR /usr/src/app

COPY ./dnsdumpster/requirements.txt ./
RUN pip install -r requirements.txt

COPY ./dnsdumpster .

ENTRYPOINT ["python3", "dnsdumpster.py"]