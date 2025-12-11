## Why did you have to delete the Pod manually?

Sequence you described:

ReplicaSet created with template using image tag ...release0-5.
→ Pod comes up fine.

You delete that Pod with kubectl delete pod <name>.
→ ReplicaSet notices it has 0/1 Pods and creates a new Pod from the same template ✅

You break the template (wrong image name).
→ New Pod is created, but it goes to ImagePullBackOff.

You fix the image name in the ReplicaSet YAML and run kubectl apply -f workload.yaml.
→ ReplicaSet object is updated, but the bad Pod is still there.

ReplicaSet sees: “I should have 1 replica; I already have 1 Pod (even if it’s failing), so my job is done.”
→ It does not delete or recreate that Pod.

You manually delete the Pod.
→ ReplicaSet now sees 0/1 Pods and creates a new one — this time using the corrected template, so it works.

👉 Key idea:
A ReplicaSet does not update existing Pods when you change the template.
It only ensures the count of Pods. If the count is satisfied, it won’t touch running / failing Pods.

To force new Pods with the updated template you must either:

delete the old Pods:

kubectl delete pod <pod-name>
# or all pods of that RS:
kubectl delete pods -l app=webapp


OR change spec.replicas (e.g. scale to 0 then back to 1).

For automatic rollouts when the template changes, Kubernetes uses a Deployment, which internally creates new ReplicaSets and gradually replaces Pods. That’s why for “normal apps” we use Deployment instead of raw ReplicaSet