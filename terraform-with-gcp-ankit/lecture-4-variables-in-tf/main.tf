resource "local_file" "file_with_variables" {
  filename = var.my_filename
  content  = var.my_file_content
}
