resource "random_string" "random_str_explicit" {
  length  = 10
  upper   = true
  lower   = true
  numeric = false
  special = false
}
resource "local_file" "sample_file_explicit" {
  filename   = "sample-explicit-dependency.txt"
  content    = "Random string generated is ${random_string.random_str_explicit.result}"
  depends_on = [random_string.random_str_explicit]
}