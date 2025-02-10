resource "local_file" "sample_file" {
  filename = "sample.txt"
  content  = "Multiple providers in"
}

resource "random_string" "random_str" {
  length  = 5
  upper   = true
  lower   = true
  numeric = false
  special = false
}

output "random_string_value" {
  value = random_string.random_str.result
}

