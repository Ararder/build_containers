# build_containers


aim:
provide as :
1. devcontainers.
2. automated github CI that pushes dockerfiles, AND (?) the singulariy images
3.  




Some notes:
I'm using the default codespace container (need to check which one it is)







# Building with apptainer

apptainer build genomics.sif docker-daemon://ararder/genomics:latest

docker push my_repository/my_image:my_tag
