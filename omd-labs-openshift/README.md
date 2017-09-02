# Openshift objects for https://github.com/ConSol/omd-labs-docker
This template provides openshift objects to build, deploy and expose the 
omd-labs docker image in all supported flavors

a serviceaccount with anyuid scc is required for omd to work in openshift.
persistent volumes can be attached

## usage
#### apply the template to your project
```
oc create -f omd-labs-openshift.yml
```
#### list all supported parameters

```
oc process omd  --parameters
```

#### process the template
```
oc process omd -p NAME=foobar -p FLAVOR=ubuntu -p HOSTNAME=foobar.example.com | oc create -f  -
```
