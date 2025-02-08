// example 1
resource "random_integer" "random_int_creator" {
  min = 1000
  max = 10000
  keepers = {
    // This will generate a new random integer whenever the timestamp changes
    // if you don't provider keepers or a static value, terraform apply will generate same random number every time
    date = "${timestamp()}" // this is a terraform function
  }
}

output "random_int_value" {
  // This will print the value of the random integer generated
  value = random_integer.random_int_creator.result
}

// example 2
resource "random_string" "name" {
  length = 10
}

output "random_string_value" {
  value = random_string.name.result
}
