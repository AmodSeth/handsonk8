# Hands-on Kubernetes Notes

Welcome to my Kubernetes practice notes.  
Everything here is organized section-wise with simple explanations and examples.


# CKA September 2026 Plan

Goal: Complete KodeKloud CKA + Labs + Mocks
Target Exam: Last week of September
Study Time: 7-10 hrs/week

---

## Phase 1 - Kubernetes Fundamentals (June 22 - July 20)

### Week 1 (June 22 - June 28)

- [ ] Course Introduction
- [ ] Kubernetes Architecture
- [ ] ETCD Basics
- [ ] kube-apiserver
- [ ] Controller Manager
- [ ] Scheduler
- [ ] Complete all associated labs

Estimated Time: 6-8 hours

---

### Week 2 (June 29 - July 5)

- [ ] Pods
- [ ] ReplicaSets
- [ ] Deployments
- [ ] Rollouts & Rollbacks
- [ ] Namespace Basics
- [ ] Complete all labs twice

Estimated Time: 8 hours

---

### Week 3 (July 6 - July 12)

- [ ] Services
- [ ] ClusterIP
- [ ] NodePort
- [ ] LoadBalancer
- [ ] Imperative Commands
- [ ] YAML Practice

Estimated Time: 8 hours

---

### Week 4 (July 13 - July 20)

- [ ] ConfigMaps
- [ ] Secrets
- [ ] Multi-Container Pods
- [ ] Resource Requests
- [ ] Resource Limits
- [ ] Practice Labs

Estimated Time: 8 hours

Milestone:
- [ ] Create deployments from memory
- [ ] Expose services from memory
- [ ] Generate YAML using kubectl

---

## Phase 2 - Core CKA Topics (July 21 - August 24)

### Week 5

- [ ] Labels
- [ ] Selectors
- [ ] Node Selectors
- [ ] Taints
- [ ] Tolerations

Estimated Time: 8 hours

---

### Week 6

- [ ] Affinity
- [ ] Anti-Affinity
- [ ] DaemonSets
- [ ] Static Pods
- [ ] Priority Classes

Estimated Time: 8 hours

---

### Week 7

- [ ] Logging
- [ ] Monitoring
- [ ] Metrics Server
- [ ] Cluster Troubleshooting Basics

Estimated Time: 6-8 hours

---

### Week 8

- [ ] Persistent Volumes
- [ ] Persistent Volume Claims
- [ ] Storage Classes
- [ ] Volume Mounts

Estimated Time: 8 hours

---

### Week 9

- [ ] CoreDNS
- [ ] DNS Resolution
- [ ] Service Discovery
- [ ] Network Policies

Estimated Time: 8 hours

Milestone:
- [ ] Create PVC from scratch
- [ ] Create NetworkPolicy from scratch
- [ ] Troubleshoot DNS issues

---

## Phase 3 - Cluster Administration (August 25 - September 7)

### Week 10

- [ ] kubeadm Basics
- [ ] Cluster Upgrade Process
- [ ] Drain Node
- [ ] Cordon / Uncordon
- [ ] Cluster Maintenance

Estimated Time: 8 hours

---

### Week 11

- [ ] ETCD Backup
- [ ] ETCD Restore
- [ ] Certificate Basics
- [ ] Control Plane Troubleshooting

Estimated Time: 8-10 hours

Milestone:
- [ ] Perform ETCD backup without notes
- [ ] Restore ETCD without notes

---

## Phase 4 - Exam Preparation (September 8 - September 30)

### Mock Exam Cycle 1

- [ ] KodeKloud Mock #1
- [ ] Review mistakes
- [ ] Re-do failed tasks

Estimated Time: 4 hours

---

### Mock Exam Cycle 2

- [ ] KodeKloud Mock #2
- [ ] Review mistakes
- [ ] Build personal cheat sheet

Estimated Time: 4 hours

---

### Mock Exam Cycle 3

- [ ] KodeKloud Mock #3
- [ ] Review mistakes
- [ ] Repeat weak topics

Estimated Time: 4 hours

---

### Final Week

- [ ] Killer Shell Exam #1
- [ ] Killer Shell Exam #2
- [ ] Practice kubectl shortcuts
- [ ] Practice documentation navigation

Estimated Time: 8-10 hours

---

## High Priority Topics (Must Master)

- [ ] Pods
- [ ] Deployments
- [ ] Services
- [ ] ConfigMaps
- [ ] Secrets
- [ ] Node Scheduling
- [ ] Taints & Tolerations
- [ ] Affinity
- [ ] Persistent Volumes
- [ ] PVCs
- [ ] Network Policies
- [ ] ETCD Backup
- [ ] ETCD Restore
- [ ] Cluster Upgrade
- [ ] Troubleshooting

---

## Daily Command Practice

- [ ] kubectl get
- [ ] kubectl describe
- [ ] kubectl logs
- [ ] kubectl exec
- [ ] kubectl explain
- [ ] kubectl create
- [ ] kubectl apply
- [ ] kubectl edit
- [ ] kubectl rollout
- [ ] kubectl drain

Goal: Execute all commands without needing documentation.

---

## 📘 Sections

- [Section 1 — Installation](Section_1_installation.md)
- [Section 2 — Pods](Section_2_pods.md)
- [Section 3 — Services](Section_3_services.md)
- [Section 4 — ReplicaSets](Section_4_replicasets.md)
- [Section 5 — Deployments](Section_5_deployments.md)
- [Section 6 - networking](Section_6_networkandservicediscovery.md)