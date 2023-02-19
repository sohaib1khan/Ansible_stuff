This playbook defines a single play that performs the following tasks:

1.  Update the system using the `zypper` module.
2.  Install the `tree`, `docker`, `docker-compose` and `docker-compose-switch` packages using the `zypper` module.
3.  Enable the Docker service using the `systemd` module.
4.  Add the current user to the `docker` group using the `user` module.
5.  Restart and enable the Docker service using the `systemd` module.
6.  Install Lazydocker using the `shell` module.
7.  Clean up the system using the `zypper` module.
8.  Create a `Downloads` folder using the `file` module.
9.  Check if the system needs to be rebooted using the `command` module.
10. Reboot the system if needed using the `reboot` module.

You can run this playbook using the following command:

ansible-playbook -i <inventory-file> playbook.yaml

Replace `<inventory-file>` with the path to your Ansible inventory file, and `playbook.yaml` with the name of the playbook file. Make sure to replace the values in the inventory file with the actual hostnames or IP addresses of your openSUSE machines