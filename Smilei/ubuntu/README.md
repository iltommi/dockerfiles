# Smilei docker 

This is a copy of Smilei https://smileipic.github.io/Smilei built on fedora

## DockerHub image

To get the Smilei docker image:

```bash
docker pull iltommi/docker-smilei
```

To lauch the image and access the content of the local directory (`pwd`) on the docker image (on `/mnt`):
```
docker run -v $(pwd):/mnt -i -t iltommi/docker-smilei bash
```
 
