# Services

--> service is a long running object with long stable running port.


apiVersion: v1
kind: Service
metadata:
    #Unique key of the service
    name: flettman-webapp-service
spec:
    # This defines which pods are gonna be represented by this service
    # The service becomes a endpoint to access the pods / or for other # # services to access the pods
    selector:
        app: web#app

    ports:
    - name: http
      protocol: TCP
      port: 80            # Port on which the service is exposed
      targetPort: 80     # Port on the pod to which the traffic is 
      nodePort: 30080  # Port on each node to expose the service (only for NodePort type)

    type: NodePort #second P is capital





### Type of service

ClusterIP - **default type** - only accessible within the cluster

NodePort - accessible outside the cluster using <NodeIP>:<NodePort>
--
    Nodeport has some conditions
    It must be greater than 30000 and less than 32767
--

