# just a demo how to use FUSE mounts in openshift with the privileged SCC
```
oc new-project fuse-mount
oc create sa fuse-mount
oc adm policy add-scc-to-user privileged -z fuse-mount
oc import-image  centos:7 --confirm
oc create secret generic s3-bucket --from-literal=S3_USER=s3user --from-literal=S3_PASSWORD=s3pass --from-literal=S3_BUCKET=s3bucket
oc create -f s3fusefs_is.yml
oc create -f s3fusefs_bc.yml 
oc create -f s3fusefs_dc.yml
oc start-build s3fusefs
oc logs $(oc get pod -l deploymentconfig=s3fusefs -o name)
```
