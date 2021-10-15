variable "expected_workspace_variable" {}

variable "auto_tfvars_variable" {}

resource "null_resource" "something" {
  triggers = {
    expected_change = jsonencode(var.expected_workspace_variable)
  }

  provisioner "local-exec" {
    command = "echo ${jsonencode(var.expected_workspace_variable)}"
  }
}

output "null_id" {
  value = null_resource.something.id
}

output "tfvars_var" {
  value = var.auto_tfvars_variable
}

output "complex_var" {
  value = var.expected_workspace_variable
}

