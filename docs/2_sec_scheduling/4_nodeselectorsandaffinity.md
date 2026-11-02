# NodeSelector

NodeSelector is a 1:1 mapping between node labels and the pod's `nodeSelector`. If the node has the same label key-value pair as in the pod spec, the pod is scheduled on that node.

Label the node with a key-value pair and use the same key-value pair in the pod spec to schedule the pod onto that node.

```bash
k label nodes <node-name> <label-key>=<label-value>
```

Then add the following to the pod:

```yaml
nodeSelector:
  <label-key>: <label-value>
```

# Node Affinity
