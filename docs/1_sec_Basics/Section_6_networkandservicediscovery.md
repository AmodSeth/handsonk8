# Networking and Service Discovery

## Namespaces
they are the logical partitions within a cluster. They provide a way to divide cluster resources between multiple users 
- To get the list of all available namespaces
``` bash
k get ns
``` 
- To get the details of a specific namespace
``` bash
k get pods -n <namespace-name>
```
## Services
- Creating a db mysql container and service
``` yaml
apiVersion: v1
kind: Pod
metadata:
  name: mysql
  labels:
    app: mysql
spec:
  containers:
    - name: mysql-pod
      image: mysql:8.0.44
      env:
      - name: MYSQL_ROOT_PASSWORD
        value: password
      - name: MYSQL_DATABASE
        value: fleetman

---
apiVersion: v1
kind: Service
metadata:
  name: database
spec:
  selector:
    app: mysql
  ports:
    - protocol: TCP
      port: 3306
      
  type: ClusterIP
```


## Networking Models
- check relolve.conf file inside the pod
``` bash
k exec -it <pod-name> -- cat /etc/resolv.conf
``` 

