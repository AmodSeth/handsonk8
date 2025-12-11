# Deployments

- A deployment is a Kubernetes resource that provides declarative updates to applications.
- It manages the creation and scaling of Pods, ensuring that the desired number of replicas are running at any given time.
- Deployments are commonly used for stateless applications, allowing for easy updates and rollbacks.
- Similar to ReplicaSet but with rolling updates and rollback, providing zero downtime for application deployments.

## Nothing but the glorified ReplicaSet

```yaml
apiVersion: apps/v1
kind: Deployment
metadata: 
    name: webapp
spec:
    replicas: 1
    selector:
        matchLabels:
            app: webapp # this should match
    template:
        metadata:
            labels:
                app: webapp # this should match
        spec:
            containers:
            - name: webapp
              image: nginx
```

## Revision
- Every time you change the Pod template inside a Deployment, Kubernetes creates a new ReplicaSet, and that creates a new revision.
- Triggers a new revision:
  - Changing image (nginx:1.19 → nginx:1.20)
  - Changing env vars
  - Changing labels in pod template
  - Changing resource limits
- Does NOT trigger revision:
  - Scaling replicas count
  - Changing annotations on Deployment metadata

## Rollout
Rollout is how Kubernetes replaces old Pods with new Pods during a Deployment update.