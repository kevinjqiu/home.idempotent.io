run:
	ansible-playbook -i inventory/inventory playbook.yml --ask-pass --user pi --become -v
