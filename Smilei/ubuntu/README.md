# Smilei docker built on ubuntu

```bash
docker build https://github.com/iltommi/dockerfiles.git\#:Smilei/ubuntu -t smilei:ubuntu
```

To lauch the image and access the content of the local directory (`pwd`) on the docker image (on `/mnt`):
```
docker run -v $(pwd):/mnt -i -t smilei:ubuntu bash
```
 
