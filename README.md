# dnsdumpster-docker
Docker for nmmapper/dnsdumpster

## Running

To use `dnsdumpster` Docker image, use the following command

```bash
docker run ghcr.io/antin0de/dnsdumpster:latest -d yourdomain.com
```

## Building

Before building, make sure you have cloned all submodules

```bash
git submodule init
git submodule update
```

Then use the following command to build and push for all architectures, you must be logged into ghcr.io.

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/antin0de/dnsdumpster:latest . --push
```


