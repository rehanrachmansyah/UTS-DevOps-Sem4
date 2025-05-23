provider "local" {}

resource "local_file" "example" {
  content  = "Ini simulasi provisioning infrastruktur dengan Terraform."
  filename = "${path.module}/output.txt"
}
