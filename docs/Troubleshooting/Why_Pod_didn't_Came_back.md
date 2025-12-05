# Why your pod didn’t come back

1. The pod labels do not match the Service selector
    - Ensure that the labels defined in your pod specification match the selector criteria specified in your Service definition. If they do not match, the Service will not be able to route traffic to the pod.

    kubectl get svc <service-name> -o yaml

    kubectl get pods --show-labels