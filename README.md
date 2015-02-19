# Virtualbox Cluster

A 3-Node Virtualbox cluster for quickly testing out distributed apps etc.

## Usage

#### Clone the github repository:

```bash
git clone git@github.com:samuell/virtualbox-cluster.git
cd virtualbox-cluster
```

#### Bring up the three boxes:

```bash
vagrant up
```

#### Log in to any of the three nodes (master, slave1 or slave2):

```bash
vagrant ssh (master|slave1|slave2)
```

### References

- [Vagrant & Ansible Quickstart Tutorial](http://adamcod.es/2014/09/23/vagrant-ansible-quickstart-tutorial.html)
- [Vagrant Virtual Machine Cluster](http://jessesnet.com/development-notes/2014/vagrant-virtual-machine-cluster)
