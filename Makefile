opi:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l opi

rpi:
	ansible-playbook -i inventory/inventory playbook.yml --ask-pass --user pi --become -v -t $(TAGS) -l rpi

ingress:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l ingress --tags ingress

monitoring:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l monitoring --tags monitoring

consul:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l consul --tags consul

vault:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l vault --tags vault

hass:
	ansible-playbook -i inventory/inventory playbook.yml --ask-become-pass --user kevin --become -v -l hass --tags hass
