# How to use this docker container to download from synapse

1.  create a token on synapse.org
bottom left on webpage, go to account, scroll down to personal access token, name it something and store it in SYNAPSE_AUTH_TOKEN


Lots of info on the synapse python client here:
https://python-docs.synapse.org/tutorials/python_client/

## 2.  Download the docker image from dockerhub


```{bash}
singularity pull docker://arvhar/synapse:latest
```

## check that the token is set
```{bash}
# SYNAPSE_AUTH_TOKEN=<token>
export SYNAPSE_AUTH_TOKEN

# if on dardel, you need to load singularity
# ml PDC/22.06 singularity/3.10.4-cpeGNU-22.06
# check that singularity can access the docken
singularity exec synapse_latest.sif echo $SYNAPSE_AUTH_TOKEN
```

```

For some reasons the commandline login is not working. Can run the python script through the container.
The files are by default saved to /home/user/.synapseCache
This will probably need to be changed, as we don't have tht much local storage on dardel.


```{bash}

singularity exec synapse_latest.sif python example.py

```



```{python}
 syn52363617 = syn.get(entity='syn52363617') 
 
 # Get the path to the local copy of the data file 
 filepath = syn52363617 .path  

```


synapse login -p $TOKEN