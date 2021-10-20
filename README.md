# jsonresume-theme-aurora-docker

[jsonresume-theme-aurora](https://github.com/saurabh73/jsonresume-theme-aurora) packaged as docker container with qr code generation.

## Getting Started

### script
create and run the following script in the directory where `resume.json` lies
```sh
#!/bin/sh

docker run --rm -it -v $(pwd):/resume -p8080:8080 ghcr.io/rsteube/jsonresume-theme-aurora-docker
```

### docker-compose

edit `resume/resume.json`

```sh
docker-compose up
```


then open [localhost:8080](http://localhost:8080)
