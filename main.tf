# A minimal Terraform example for https://github.com/hashicorp/terraform/issues/23387

terraform {
  required_version = "= 1.2.6"
  
  required_providers {
    local = "= 2.2.3"
  }
}
  
locals {
  project_name = "terraform-issue-23387"
}

resource "local_file" "project_name" {
  filename        = "${path.module}/${local.project_name}.txt"
  file_permission = "0640"
  content         = "${local.project_name}\n"
}

output "hello_world" {
  value = "Hello from project ${local.project_name}"
}
