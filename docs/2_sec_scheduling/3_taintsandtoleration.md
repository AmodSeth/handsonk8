# Taints and Tolerations

Taints and tolerations are a flexible way to steer Pods away from nodes or evict Pods that should not be running.

## 1. Taints

Taints are applied to nodes and repel a set of Pods. Tolerations are applied to Pods and allow them to schedule onto nodes with matching taints, although they are not required.

> By default, no Pods have tolerations, so they can only be scheduled onto nodes that do not have taints.

```bash
kubectl taint nodes <node-name> key=value:taint-effect
```

### Types of taint effects

- `NoSchedule`: Pods that do not tolerate this taint will not be scheduled on the node, but Pods already running on the node remain.
- `PreferNoSchedule`: Kubernetes tries to avoid placing a Pod that does not tolerate the taint on the node, but it is not a hard requirement.
- `NoExecute`: Pods that do not tolerate this taint are evicted from the node if they are already running there, and are not scheduled on the node if they are not already running there.

## 2. Tolerations

Tolerations are applied to Pods and allow them to schedule onto nodes with matching taints.

```yaml
tolerations:
- key: "key1"
  operator: "Equal"
  value: "value1"
  effect: "NoSchedule"
```

## Use cases of taints and tolerations

1. Dedicated Nodes: Restrict nodes to specific workloads using taints and tolerations. Use node labels + node affinity to ensure those Pods run only on dedicated nodes.
2. Special Hardware (e.g., GPUs): Taint GPU nodes to keep unrelated Pods away. Pods requiring GPUs use matching tolerations and resource requests to schedule there.
3. Taint-based Evictions: Automatically evict Pods when nodes experience problems, depending on the taint effect and toleration settings.

```bash
kubectl taint nodes controlplane dedicated=special:NoSchedule-
```

> CKA tip: The trailing `-` removes the taint. Replace `dedicated=special` with the actual taint shown on your node.

## Quick Revision

- `NoSchedule`: New Pods without matching tolerations will not schedule.
- `PreferNoSchedule`: Kubernetes tries to avoid scheduling Pods without matching tolerations.
- `NoExecute`: Evicts existing Pods without matching tolerations and prevents new ones from scheduling.
