# Virtualbox Cluster

A 3-Node Virtualbox cluster for quickly testing out distributed apps etc.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [Ansible](http://www.ansible.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Installing the requirements in Ubuntu (tested with 14.04)

1. Install Virtualbox:
	```bash
	sudo apt-get install virtualbox
	```
2. Install a recent version of ansible:
   ```bash
   sudo apt-get install ansible/trusty-backports
   ```
   *(if you ubuntu version is "trusty", otherwise, replace it with your appropriate version)*
3. Install Vagrant, by first downloadng the proper .deb file from [vagrantup.com](https://www.vagrantup.com/downloads.html)
4. ... and then installing it with:
	```bash
	sudo dpkg -i <deb-file>
	```

## Setup and Usage

#### Clone the github repository:

```bash
git clone git@github.com:samuell/virtualbox-cluster.git
cd virtualbox-cluster
```

#### Optional: Add/Enable roles

If you want install some roles, create a folder structure for a new role under `roles/` (at least a `roles/tasks/main.yml` 
file), and activate it by listing it under `roles:` in playbook.yml. An example, "scala" role is included for illustration.
To activate that, uncomment that role under `roles:`, by, changing from:

```yaml
  roles:
    #- scala
```

to:
```yaml
  roles:
    - scala
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
