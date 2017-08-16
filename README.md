# docker-qbittorrent
This repository holds the Dockerfile to create an image with the qbittorrent web-based client.

## How to use
To start the container either build it from source (using `docker build .`) or use the version from dockerhub: `docker pull demonsthere/qbittorrent`

### Docker run
![](img/docker_run.png)
Here we have to set the volume and port:
- Volume: local directory which will be synced to the container, downloaded files will be stored there
- Port: local port on which we can access the WebUI

### WebUI
To access the WebUI simply navigate your browser to your localhost on the port specified in the command (here it is localhost:8080)

![](img/webui_login.png)

The default credentials are **admin:adminadmin**

Now, to start downloading just add a local .torrrent file, like the Peppermint Linux from the files directory, or copy a magnet link

![](img/webui_example.png)
