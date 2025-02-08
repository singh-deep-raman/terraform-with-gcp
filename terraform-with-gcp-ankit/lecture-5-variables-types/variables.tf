variable "my_filename" {
  type    = string
  default = "myfile.txt"
}

// boolean variable
variable "boolean_content" {
  type    = bool
  default = true
}

// number variable
variable "number_content" {
  type    = number
  default = 10
}

// list type
variable "list_content" {
  type    = list(any)
  default = ["first-value", "second-value", "third-value"]
}

// tuple type
variable "tuple_content" {
  type    = tuple([string, number, bool])
  default = ["first-value", 10, false]
}

// map type
variable "map_content" {
  type = map(any)
  default = {
    name  = "Raman"
    place = "Ludhiana"
  }
}