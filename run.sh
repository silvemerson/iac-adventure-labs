#NOME:            run.sh
#VERSÃO:          1.0
#DESCRIÇÃO:       Cria uma stack automatizada IaC(Terraform+Ansible)
#DATA DA CRIAÇÃO: 17/01/2021
#ESCRITO POR:     Emerson Araujo da Silva
#E-MAIL:          araujo.emerson28@gmail.com
#LICENÇA:         GPLv3
#PROJETO:         https://github.com/silvemerson/iac-adventure-labs

echo "Bem Vindo ao IaC Adventure"


echo "[ 1 ] Criar EC2 na AWS"

echo "[ 2 ] Apagar EC2"

echo "[ 3 ] Instalar Wordpress pelo Ansible"


read op

case $op in

  1) Create_EC2

echo "TERRAFORM INIT"
cd terraform/ ; terraform init
echo "CRIANDO INFRA NA AWS"
echo ""
terraform apply -auto-approve 

;;

  2) Delete_EC2
echo "DELETANDO INFRA NA AWS"
echo ""
cd terraform/ ; terraform destroy -auto-approve 

;;

  3) Install_Wordpress
echo "INSTALANDO E CONFIGURANDO WORDPRESS"
echo ""
cd .. ; ansible-playbook ansible/wordpress_main.yml -i terraform/inventory

;;

*)echo "Usage: {1|2|3}"
esac
