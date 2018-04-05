# Smilei docker 

This is a copy of Smilei https://smileipic.github.io/Smilei built on fedora

```bash
docker build https://github.com/iltommi/dockerfiles.git\#:Smilei/fedora -t smileiFedora
```

To lauch the image and access the content of the local directory (`pwd`) on the docker image (on `/mnt`):
```
docker run -v $(pwd):/mnt -i -t smileiFedora bash
```
 
