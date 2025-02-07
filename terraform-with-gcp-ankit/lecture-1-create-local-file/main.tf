resource "local_file" "first_file_using_terraform" {
  filename = "first-file-using-tf.txt"
  content  = "Hello, Terraform! I have created this file with your help"
}