# Windows Host Setup
These scripts and configurations help setup the windows host to be managed by Ansible via WinRM.
# ansible-winrm-cert-auth
Certificate authentication for WinRM 

This repository serves as the code repo for the tutorial at https://youtu.be/vcx0bIgGJXI


IMP: make sure you have same name i.e., ansible
    in generate client cert file
    create ansible_user file
Go to Mac
=========
go to ansible_server
1. go to ansible_server and run "export OPENSSL_CONF=openssl.conf"  ===> IMP: Please make sure you are under ansible_server folder to export the correct file i.e., openssl.conf
2. Go to ansible_server folder
3. ./generate_client_cert.sh
    this should create two files
    - client_cert.pem
    - client_key.pem
4. Copy these two files on Windows Host machine c:\_tmp

Go to Windows Host Machine:
===========================
1. cd to windows_host
2. import_client_cert.ps1
3. enable_winrm.ps1
3. create_server_cert.ps1
4. create_ansible_user.ps1
5. create_winrm_listener.ps1
6. update_firewall.ps1


