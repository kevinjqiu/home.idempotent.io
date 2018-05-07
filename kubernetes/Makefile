PROMETHEUS_OPERATOR_REPO=/home/kevin/src/gopath/src/github.com/coreos/prometheus-operator/helm/prometheus-operator
KUBE_PROMETHEUS_REPO=/home/kevin/src/gopath/src/github.com/coreos/prometheus-operator/helm/kube-prometheus

.PHONY: tfk rook rm-rook
tfk:
	helm upgrade --install tfk -f traefik.yaml stable/traefik

rm-tfk:
	helm delete --purge tfk

rook:
	cd rook && kubectl apply -f rook-operator.yaml && kubectl apply -f rook-cluster.yaml && kubectl apply -f rook-storageclass.yaml

rm-rook:
	cd rook && kubectl delete -f rook-storageclass.yaml && kubectl delete -f rook-cluster.yaml && kubectl delete -f rook-operator.yaml

prometheus:
	helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/
	helm repo update
	helm upgrade --install prometheus-operator $(PROMETHEUS_OPERATOR_REPO) --namespace monitoring -f prometheus-operator.yaml
	helm upgrade --install kube-prometheus $(KUBE_PROMETHEUS_REPO) --namespace monitoring -f kube-prometheus.yaml

rm-prometheus:
	helm delete --purge kube-prometheus
	helm delete --purge prometheus-operator

couchdb:
	helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
	helm repo update
	helm upgrade --install florinapp-couchdb -f couchdb.yaml incubator/couchdb

rm-couchdb:
	helm delete --purge florinapp-couchdb
