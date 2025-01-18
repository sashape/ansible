include .env
export $(shell sed 's/=.*//' .env)

setup:
	ansible-playbook -i $(HOSTS_FILE) $(PLAYBOOK_FILE) --private-key $(PRIVATE_KEY_PATH) -u $(CONNECTION_USER) 
