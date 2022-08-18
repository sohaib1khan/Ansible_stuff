Ansible_To_Go

Purpose of this repo is to store and use various ansible playbooks. 'Sharing is caring'

When running ansible playbook, make sure you have your local environment configured to run ansible and also be able to communicate with servers. Lets go over some prerequisites before running your first playbook. Below are the steps I took to setup my linux environemtn for ansible, your may vary.



# Install Ansible

Installing ansible on ubuntu 20.04.4 LTS (Focal Fossa) was fairly easy. I used the documentation from ansible to install it. Follow the instruction for installng ansibe for your operating system from the link below. 

Install Link: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pip-install 




# Setup SSH key on ansible-controller and worker machines 

when i created the ssh key, i named it 'ansible' you can name yours to whatever you want. 

``` ssh-keygen -t ed25519  -C "Ansible"  ```

Now you should have two files created with one containing the private key and the other containing public key. You will want to copy the public ssh-key to the worker machines that will be used in  Ansible playbook. To transfer the ssh key, run the following command.

``` ssh-copy-id -i /home/labdevenv/.ssh/ansible.pub ansible0@192.168.1.135 ```

Once the key is transferred to the worker machine, try Playbook1 repo. 