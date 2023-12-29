# How to use this docker container to download from synapse

1.  create a token on synapse.org
bottom left on webpage, go to account, scroll down to personal access token, name it something and create it
set
TOKEN=<your_token>



2.  run the docker container with singularity

singularity pull docker://arvhar/synapse:latest

singularty run synapse_latest.sif --it /bin/bash



synapse login -p $TOKEN