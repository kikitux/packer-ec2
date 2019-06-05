default: all

all: kitchen

nginx64-vbox.box: nginx64.json scripts/provision.sh http/preseed.cfg
	packer validate nginx64.json
	packer build -force nginx64.json

kitchen-ec2: nginx64.json
	bundle exec kitchen test

kitchen: kitchen-ec2

.PHONY: clean
clean:
	-vagrant box remove -f nginx64 --provider virtualbox
	-vagrant box remove -f nginx64 --provider vmware_desktop
	-rm -fr output-*/ *.box