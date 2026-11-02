
  - [Section 2.1 - Scheduling](1_index.md)
  - [Section 2.2 - Labels and Selectors](2_labelsandselectors.md)
  - [Section 2.3 - Taints and Tolerations](3_taintsandtoleration.md)
  - [Section 2.4 - Node Selectors and Affinity](4_nodeselectorsandaffinity.md)




# Troubleshooting

What if there is no scheduler? Then all Pods created after that will remain in a `Pending` state.

Check the scheduler health. If it is missing or broken, use either of these two methods:

> Note: If you want to create and delete a Pod in a single command, use:

```bash
k replace --force -f <pod.yaml>
```

## 1. Add the `nodeName` property
This only works at the time of Pod creation.

```yaml
nodeName: <node-name>
```

Sample resource YAML:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - image: nginx
    name: nginx
  nodeName: node01
```

## 2. Add the `nodeSelector` property
This works at the time of creation and after the Pod is created.

```yaml
nodeSelector:
  <label-key>: <label-value>
```

## 3. Send a binding request to the kube-apiserver
This binds the Pod to a specific node.

```yaml
apiVersion: v1
kind: Binding
metadata:
  name: <pod-name>
  namespace: <namespace-name>
target:
  apiVersion: v1
  kind: Node
  name: <node-name>
```


