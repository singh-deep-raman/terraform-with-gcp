resource "local_file" "myfile" {
  filename = var.my_filename
  #   content  = var.boolean_content
  #   content = var.number_content
  #   content = var.list_content[0]
  # content = var.tuple_content[2]
  content = var.map_content["name"]
}
