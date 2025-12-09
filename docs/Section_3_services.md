# Services

--> service is a long running object with long stable running port.

```
apiVersion: v1
kind: Service
metadata:
    #Unique key of the service
    name: flettman-webapp-service
spec:
    # This defines which pods are gonna be represented by this service
    # The service becomes a endpoint to access the pods / or for other # # services to access the pods
    selector:
        app: webapp

    ports:
    - name: http
      protocol: TCP
      port: 80            # Port on which the service is exposed
      targetPort: 80     # Port on the pod to which the traffic is 
      nodePort: 30080  # Port on each node to expose the service (only for NodePort type)

    type: NodePort #second P is capital

```



## Type of services

* ClusterIP - **default type** - only accessible within the cluster

* NodePort - accessible outside the cluster using **<NodeIP>:<NodePort>**
```
    Nodeport has some conditions
    It must be greater than 30000 and less than 32767
```





## Excersise 1.1 - Deploying a queue service
1. Deploy the image
2. Port 8161 is the admin console
3. Expose this to a browser using NodePort service 30010


```
# writing the pods file
apiVersion: v1
kind: Pod
metadata:
    name: fleetman-queue
    labels:
        app: queue
spec:
    containers:
    - name: queue-container
      image: 
      port: 8161
      targetPort: 8161


    



