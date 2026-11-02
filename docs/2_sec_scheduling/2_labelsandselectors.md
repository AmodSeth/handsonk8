# Labels and Selectors

Labels are key-value pairs attached to objects, such as Pods. They can be used to organize objects and select subsets of them. Labels can be attached at creation time or added and modified afterward. Each object can have a set of key-value labels defined.

## Example of a Pod with labels

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
  labels:
    app: myapp
```

## Selector

```bash
k get pods --selector=key=value
```
