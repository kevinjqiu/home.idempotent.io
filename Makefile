user ?= kevin

.run:
	ansible-playbook -i inventory/inventory $(playbook) --ask-become-pass --user $(user) --become -v

ingress:
	make .run playbook=ingress.yml

monitoring:
	make .run playbook=monitoring.yml

consul:
	make .run playbook=consul.yml

vault:
	make .run playbook=vault.yml

hass:
	make .run playbook=hass.yml

gogs:
	make .run playbook=gogs.yml

nextcloud:
	make .run playbook=nextcloud.yml

dns:
	make .run playbook=dns.yml

bootstrap:
	make .run playbook=bootstrap.yml user=pi
