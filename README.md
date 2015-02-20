# Virtualbox Cluster

A 3-Node Virtualbox cluster for quickly testing out distributed apps etc.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [Ansible](http://www.ansible.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Installing the requirements in Ubuntu (tested with 14.04 LTS 64bit)

1. Install Ansible and VirtualBox via apt:
	```bash
	sudo apt-get install ansible virtualbox
	```
2. Download the proper .deb file from [vagrantup.com](https://www.vagrantup.com/downloads.html)
3. Install it with:
	```bash
	sudo dpkg -i <deb-file>
	```

## Setup and Usage

#### Clone the github repository:

```bash
git clone git@github.com:samuell/virtualbox-cluster.git
cd virtualbox-cluster
```

#### Optional: Turn on/off certain roles

If you want to skip e.g. the scala installation, open up the playbook.yml file, and comment out the `- scala` line, under `roles`.

E.g, change from:
```yaml
  roles:
    - scala
```

to:
```yaml
  roles:
    #- scala
```

#### Bring up the three boxes:

```bash
vagrant up
```

#### Log in to any of the three nodes (master, slave1 or slave2):

```bash
vagrant ssh (master|slave1|slave2)
```

Log in to nodes, from nodes:

```bash
ssh (master|slave1|slave2)
```

### References

- [Vagrant & Ansible Quickstart Tutorial](http://adamcod.es/2014/09/23/vagrant-ansible-quickstart-tutorial.html)
- [Vagrant Virtual Machine Cluster](http://jessesnet.com/development-notes/2014/vagrant-virtual-machine-cluster)
