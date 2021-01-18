#NAME:              run.sh
#VERSION:           1.3
#DESCRIPTION:       Cria uma stack automatizada IaC(Terraform+Ansible)
#DATE OF CREATION:  17/01/2021
#DEVELOPED BY:      Emerson Araujo da Silva
#E-MAIL:            araujo.emerson28@gmail.com
#LICENSE:           GPLv3

echo "Welcome to IaC Adventure"

while : ; do

echo "[ 1 ] Create EC2 on AWS"

echo "[ 2 ] Delete EC2"

echo "[ 3 ] Install Wordpress by Ansible"

echo "[ 4 ] Exit"

read op

case $op in

  1) Create_EC2

echo "TERRAFORM INIT"
cd terraform/ ; terraform init
echo "CREATING AWS INFRA"
echo ""
terraform apply -auto-approve 

;;

  2) Delete_EC2
echo "DELETING INFRA ON AWS"
echo ""
cd terraform/ ; terraform destroy -auto-approve 

;;

  3) Install_Wordpress
echo "INSTALLING AND CONFIGURING WORDPRESS"
echo ""
cd .. ; ansible-playbook ansible/wordpress_main.yml -i terraform/inventory

;;

  4) Exit

exit 

;;

*)echo "Usage: {1|2|3|4}"
esac
done