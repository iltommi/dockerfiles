# Smilei docker built on fedora

```bash
docker build https://github.com/iltommi/dockerfiles.git\#:Smilei/fedora -t smilei:fedora
```

To lauch the image and access the content of the local directory (`pwd`) on the docker image (on `/mnt`):
```
docker run -v $(pwd):/mnt -i -t smilei:fedora bash
```
 
