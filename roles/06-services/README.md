Common Ansible Role for Ubuntu Server:
---
 With this role you can prepare your machine to do the following tasks:
  
 - Install the minimum essential packages
     - build-essential
     - python-software-properties
     - git
 - Add the additional sudo user and it's ssh key with passwordless sudo option
 - Enable the Multiverse repository
 - SSMTP Installation and Configuration with GMail for Sending System Alerts
 - Automatic Security Updates Installation
 - Fail2Ban Installation and Configuration

### To use this Role:

 Edit the `site.yml` file, mentioned this role:
```yaml
---
- hosts: server
  become: yes
  gather_facts: yes
  roles:
    - common
```

After that edit the encrypted `vars/main.yml` file with this command:
```
ansible-vault edit vars/main.yml
```
**Note:** Default vault password is `tendo`

> Change these values as per your requirement.

> Don't forget to change the `id_rsa.pub` with your public key file inside the `files`directory.

```yaml
---
 # Username & Password that we want to create on the Linux Server
 username: 
 password: 
 # Mentioned your GMAIL ID and Password Here
 gmail_id: 
 gmail_password: 
 # Fail2Ban will send the Alerts on this Email
 receiver_mail: who@gmail.com
# The whois package makes the mkpasswd command available on Ubuntu
$ sudo apt-get install -y whois

# Create a password hash
$ mkpasswd --method=SHA-512
Password:
#This will generate a hashed password for you to use with the user module.
