
default: win mac

win: clean_win
	docker-compose down
	docker-compose build
	docker-compose up
	docker-compose down

mac: clean_mac
	cd vagrant; vagrant up; vagrant halt
	cp vagrant/Neutrino*.dmg .

clean_mac:
	rm  -f  Neutrino-MacOS*.dmg

clean_win:
	rm  -f  Neutrino-Windows-x86*.exe
		
clean: clean_mac clean_win