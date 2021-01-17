resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  ip-ec2 = aws_instance.zeus.public_ip,
  nome-ec2 = aws_instance.zeus.tags.Name
 }
 )
 filename = "inventory"
}
