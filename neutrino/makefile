

default: prefetch backup dock mac publish

publish: prefetch
	cd Neutrino && gh release delete latest -y && git push origin :refs/tags/latest && git tag -fa latest -m "Commit $(git rev-list HEAD --count)" && git push --follow-tags; gh release create latest --generate-notes && gh release upload latest ../Neutrino-*

.PHONY: backup prefetch
backupdir = backup/$(shell date +"%Y-%m-%d-%H-%M")
	
backup: 
	mkdir -p $(backupdir)
	-@mv Neutrino*.exe Neutrino*.zip Neutrino*.dmg Neutrino*.deb Neutrino*.rpm Neutrino-*.AppImage $(backupdir) 
	
prefetch:
	git clone https://github.com/NeutrinoToolkit/Neutrino.git || cd Neutrino && git pull
	
dock: clean_dock
	docker-compose down
	docker-compose build
	docker-compose up
	docker-compose down

mac: clean_mac
	cd vagrant3; vagrant up
	scp -P 2222 -i vagrant3/.vagrant/machines/default/virtualbox/private_key -o StrictHostKeyChecking=no vagrant@localhost:Neutrino-*.dmg .
	cd vagrant3; vagrant halt

clean_mac:
	rm -f Neutrino-MacOS*.dmg
	rm -f vagrant3/shared/*

clean_dock:
	rm -f Neutrino-*.exe Neutrino*.zip Neutrino-*.deb Neutrino-*.rpm Neutrino-*.AppImage
		
clean: clean_mac clean_dock
