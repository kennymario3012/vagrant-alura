#!/bin/bash


cd ~/Documents/STUDY/ALURA/DEVOPS/Vangrant/ambiente_dev/bionic/

IP=$(vagrant ssh mysqldb -c "hostname -I | cut -d' ' -f2" )

echo "[mysqlserver]
$IP
[mysqlserver:vars]
ansible_user=vagrant
ansible_ssh_private_key_file=/home/mdadmin/Documents/STUDY/ALURA/DEVOPS/Vangrant/ambiente_dev/bionic/configs/keys/id_bionic
ansible_python_interpreter=/usr/bin/python3
ansible_ssh_common_args='-o StrictHostKeyChecking=no'" > ~/Documents/STUDY/ALURA/DEVOPS/Vangrant/ambiente_dev/bionic/configs/ansible/hosts
