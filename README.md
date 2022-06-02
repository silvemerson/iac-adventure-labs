<h2> IaC Adventure Labs - Terraform + Ansible </h2>

<img align="right" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVuKgdG06yxqfMQ_dP59ZrzRfMm10HhaYpew&usqp=CAU">

This project aims to create and configure an infrastructure as a code using Terraform and Ansible

<h3>Requirements:</h3>

	- aws-cli
    - Terraform
    - Ansible

- Clone the repo and give the run.sh file permission with chmod +x

<br>

Configured the services above, run the script "run.sh". It will display an options menu on the screen
In the first option, Infra will be created on AWS. Terraform will create an inventory file with the EC2 IP. 

Option menu to be chosen:

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

 # Top 5 Badges That Will Take Your GitHub Repository to the Next Level
 ## 1. GitHub Stats
 ![Your Repository's Stats](https://github-readme-stats.vercel.app/api?username=Tanu-N-Prabhu&show_icons=true)
 ## 2. Most Used Languages
 ![Your Repository's Stats](https://github-readme-stats.vercel.app/api/top-langs/?username=Tanu-N-Prabhu&theme=blue-green)
 ## 3. Contributors Badge
 ![Your Repository's Stats](https://contrib.rocks/image?repo=Tanu-N-Prabhu/Python)
 ## 4. Random Joke Generator
 ![Jokes Card](https://readme-jokes.vercel.app/api)
 ## 5. Profile View Counter
 ![Profile View Counter](https://komarev.com/ghpvc/?username=Tanu-N-Prabhu)
 ### Repository View Counter - HITS
 ![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https://github.com/Tanu-N-Prabhu/Python)
