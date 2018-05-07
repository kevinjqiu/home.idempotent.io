tfk:
	helm upgrade --install tfk -f traefik.yaml stable/traefik

rook:
	helm repo add rook-alpha https://charts.rook.io/alpha
	helm repo update
	helm upgrade --install rook --namespace rook-system rook-alpha/rook -f rook.yaml
