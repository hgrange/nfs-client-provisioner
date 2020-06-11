#!/bin/sh
NAMESPACE=nfs

oc delete StorageClass nfsclient
oc delete ServiceAccount nfs-client-provisioner -n $NAMESPACE
oc delete CLusterRole nfs-client-provisioner-runner 
oc delete ClusterRoleBinding run-nfs-client-provisioner 
oc delete Role leader-locking-nfs-client-provisioner  -n $NAMESPACE
oc delete RoleBinding leader-locking-nfs-client-provisioner -n $NAMESPACE
oc delete Deployment nfs-client-provisioner -n $NAMESPACE
