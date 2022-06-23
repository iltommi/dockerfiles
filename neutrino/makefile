

default: backup dock mac

backup:
	mkdir -p backup/new
	mv Neutrino*.exe Neutrino*.dmg backup/new
	mv backup/new backup/`date +"%Y-%m-%d-%H-%M"` 
	
dock: clean_dock
	docker-compose down
	docker-compose build
	docker-compose up
	docker-compose down

.ONESHELL:
mac: clean_mac
	cd vagrant3; vagrant up
	pwd
	scp -P 2222 -i vagrant3/.vagrant/machines/default/virtualbox/private_key -o StrictHostKeyChecking=no vagrant@localhost:Neutrino-*.dmg .
	cd vagrant3; vagrant halt

clean_mac:
	rm -f Neutrino-MacOS*.dmg
	rm -f vagrant3/shared/*

clean_dock:
	rm -f Neutrino-*.exe Neutrino-*.deb
		
clean: clean_mac clean_dock
