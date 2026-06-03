# Static Website Deployment with Ansible

This project demonstrates automated deployment of a static website using Ansible.

## Features

* Installs and configures Nginx
* Deploys website files to the target server
* Uses Ansible inventory and playbooks
* Idempotent deployment process

## Requirements

* Ansible
* SSH access to the target host
* Debian/Ubuntu-based target server


```bash
ansible-playbook -i inventory.ini site.yaml -K
```

After deployment, the website will be available through Nginx on the target server.

