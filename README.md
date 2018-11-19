# docker-scene-stealer
A Docker source repo to run [scene-stealer](https://github.com/Rainist/scene-stealer) as a container

## Why?
Even though scene-stealer is easy enough to install and use as npm global module, it doesn't run as a container as a normal nodejs container because puppeteer (the core dependency) requires lots of graphics related libraries that normally not comes with many images.

So you need something like this to run scene-stealer or puppeteer inside docker or as a pod inside kubernetes

## Why do I need this image again?
Again you need lots of graphics related libraries in your image

That's why it's built on top of [alekzonder/puppeteer](https://hub.docker.com/r/alekzonder/puppeteer/) which comes with nodejs and required libraries.

## How to use

### As a container
`$ docker run --init --rm -it -p 3000:3000 rainist/scene-stealer`

### As a k8s pod
`$ kubectl create -f https://github.com/Rainist/docker-scene-stealer/blob/master/kubernetes/scene-stealer.yaml`

## LICENSE
scene-stealer-docker is MIT licensed.
