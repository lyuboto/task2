locals {
  pl_to_exclude = "sm10"
  pl_list = { for pl, inf in var.test : pl => inf if pl != local.pl_to_exclude }
  # pl_list = { for pl, inf in var.test : pl => inf if contains(local.pl_to_exclude, pl) == false }
}

resource "null_resource" "this" {
  for_each = local.pl_list

  provisioner "local-exec" {
    command = "echo Hi, name is ${each.value.name}, number is ${each.value.number}, key is ${each.key}"
  }
}

variable "test" {
  default = {
    rf9 = {
      name = "Firmino"
      number = "9"
    },
    ms11 = {
      name = "Salah"
      number = "11"
    },
    sm10 = {
      name = "Mane"
      number = "10"
    }
  }
}