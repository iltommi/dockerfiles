# Smilei docker 

This is a copy of Smilei https://smileipic.github.io/Smilei built on ubuntu

## DockerHub image

To get the Smilei docker image:

```bash
docker build https://github.com/iltommi/dockerfiles.git\#:Smilei/ubuntu -t smileiUbuntu
```

To lauch the image and access the content of the local directory (`pwd`) on the docker image (on `/mnt`):
```
docker run -v $(pwd):/mnt -i -t smileiUbuntu bash
```
 
