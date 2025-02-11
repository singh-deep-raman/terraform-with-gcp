resource "random_string" "random_str_implicit" {
  length  = 10
  upper   = true
  lower   = true
  numeric = false
  special = false
}
resource "local_file" "sample_file_implicit" {
  filename = "sample-implicit-dependency.txt"
  content  = "Random string generated is ${random_string.random_str_implicit.result}"
}