# static Pods 

when no master is there


there is no scheduling of pods on the node. The node will be in NotReady state and no pods will be scheduled on it.so kubelet can create pods and read the pod file and create the pod from this directory
/etc/kubernetes/manifests. The kubelet will create the pod and run it on the node. This is called static pod. Static pods are managed directly by the kubelet daemon on a specific node, without the need for a Kubernetes control plane. 
This is ony for pods not for deployments, replica sets, or other higher-level abstractions. 

1. to see the pods
bash
docker ps -a
