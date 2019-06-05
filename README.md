# packer-ec2
a packer repo with kitchen-test for an ec2 aws instance

## How to use this repo

1. clone this repo
```
git clone https://github.com/kikitux/packer-ec2.git
```

1. cd ninto the repo
```
cd packer-ec2
```

1. run packer build
```
packer build template.json
```

1. run kitchen-test
```
kitchen converge
kitchen verify
kitchen destroy
```

## TODO

- [ ] this readme
- [ ] how to install packer
- [ ] how to install kitchen-test on the machine
- [ ] a packer ec2 project
- [ ] a kitchen-test for this new ec2 instance
- [ ] add some test so kitchen-test have some to do

## DONE
- [x] how to use this repo
