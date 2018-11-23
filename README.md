# Transcriptomics-CABANA
Dockerfile for e-Learning Transcriptomics CABANA 2018

## To run the container for the first time with generic graphics:
```
xhost +
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e DISPLAY=unix$DISPLAY \
-v $HOME/:/home/training/ --device /dev/dri --privileged --name transcriptomics ebitraining/transcriptomics
```
## To run with Nvidia graphics, add the following option:
```
"-v /usr/lib/nvidia-340:/usr/lib/nvidia-340 -v /usr/lib32/nvidia-340:/usr/lib32/nvidia-340"
```
## To resume using an container:
```
docker exec -it transcriptomics /bin/bash
```
## To build the container:
```
docker build -f ./Dockerfile -t transcriptomics .
docker tag transcriptomics ebitraining/transcriptomics:latest
docker push ebitraining/transcriptomics:latest
```
