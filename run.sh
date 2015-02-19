#!/bin/bash
ansible-playbook -i hosts_local playbook_local.yml
vagrant up

echo "--------------------------------------------------------------------------------"
echo "Now you can log in to the master, slave1 or slave2 with:"
echo ""
echo "  vagrant ssh master"
echo "  vagrant ssh slave1"
echo "  vagrant ssh slave2"
