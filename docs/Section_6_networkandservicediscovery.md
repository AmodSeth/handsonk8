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

