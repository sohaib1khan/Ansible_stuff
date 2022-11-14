#!/usr/bin/env bash

# NOTE: Replace the password file path when runing this script
host_pass_file=.key

# Ensure file is already encrypted before running the full script 
ansible-vault encrypt --vault-password-file ../.ansible_vault_key  $host_pass_file 2>/dev/null
ansible-vault decrypt --vault-password-file ../.ansible_vault_key $host_pass_file

# If secret is decrypted then run playbook
if [ $? -eq 0 ]
then
ansible-playbook playbook.yaml -i host_list  --vault-password-file ../.ansible_vault_key --become-password-file $host_pass_file
    else
   echo 'could not decrypt the secret'
   fi

sleep 5s

# Encypt the secret again
if [ $? -eq 0 ]
then
    ansible-vault encrypt --vault-password-file ../.ansible_vault_key  $host_pass_file
    else
   echo 'could not encrypt the secret'
   fi