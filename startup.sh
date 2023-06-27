#!/bin/bash
printf "\n/********************\nUpdating packages:\n\n"
sudo apt-get update && sudo apt-get upgrade -y

printf "\n/********************\nInstalling Ansible:\n\n"
sudo apt-get install ansible -y

printf "\n/********************\nAnsible version:\n\n"
ansible --version