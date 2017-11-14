```
oc new-project fuse-mount
```
```
oc create sa fuse-mount
```
```
oc adm policy add-scc-to-user privileged -z fuse-mount
```
```
oc import-image  centos:7 --confirm
```
```
oc create -f curlftpfs_is.yml
```
```
oc create -f curlftpfs_bc.yml 
```
```
oc create -f curlftpfs_dc.yml
```
```
oc start-build curlftpfs
```
```
oc logs $(oc get pod -l deploymentconfig=curlftpfs -o name)
```
