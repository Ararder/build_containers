
# Purpose
This repository contains docker files to install and run genomics tools in a containerized environment.
https://hub.docker.com/repository/docker/arvhar/ldsc/
or
https://hub.docker.com/repository/docker/arvhar/genetics



# Building with apptainer
The docker images can easily be built and run with apptainer from your local cluster.

```bash
apptainer build genomics.sif docker-daemon://ararder/genomics:latest
```




# notes on docker and apptainer syntax
id=aeca1c2df733
name=ararder/genomics:latest
docker tag aeca1c2df733 ararder/genomics:latest
docker push my_repository/my_image:my_tag


``` 
# build sif image from dockerfile
build apptainer image using local docker daemon
```