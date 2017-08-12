# docker-qbittorrent
This repository holds the Dockerfile to create an image with the qbittorrent web-based client.

## How to use
To start the container either build it from source (using `docker build .`) or use the version from dockerhub: `docker run -ti --rm -v "$PWD:/workdir" -p 8080:8080 demonsthere/qbittorrent`

### Docker run
![](img/docker_run.png)

### WebUI
To access the WebUI simply navigate your browser to your localhost on the port specified in the command (here it is localhost:8080)

![](img/webui_login.png)

The default credentials are as written in the output of the `docker run command`. 

Now, to start downloading just add a local .torrrent file, like the Peppermint Linux from the files directory

![](img/webui_example.png)
