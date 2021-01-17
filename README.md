<h2> IaC Adventure Labs - Terraform + Ansible </h2>

<img align="right" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVuKgdG06yxqfMQ_dP59ZrzRfMm10HhaYpew&usqp=CAU">

This project aims to create and configure an infrastructure as a code using Terraform and Ansible

<h3>Requirements:</h3>

	- aws-cli
    - Terraform
    - Ansible

- Clone the repo and give the automate.sh file permission with chmod +x

<br>

Configured the services above, run the script "run.sh". It will display an options menu on the screen
In the first option, Infra will be created on AWS. Terraform will create an inventory file with the EC2 IP. 

        $ sh run.sh 
          Welcome to IaC Adventure
          [ 1 ] Create EC2 on AWS
          [ 2 ] Delete EC2
          [ 3 ] Install Wordpress by Ansible


<br>
<br>
<h3>Configuring the module:</h3>

Set the path to your aws .pem key in the terraform/inventory.tmpl file.

<b>ansible_ssh_private_key_file='path/your-key.pem'</b>

This file is responsible for creating the config that the ansible playbook will access, customize with the EC2 username, key address and host group name for example.

Customize the variables.tf file if necessary
