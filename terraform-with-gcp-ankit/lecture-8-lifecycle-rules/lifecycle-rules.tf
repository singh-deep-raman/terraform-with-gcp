resource "random_integer" "random_int" {
  min = 9
  max = 100

  lifecycle {
    # create_before_destroy = true
    # prevent_destroy = true
    ignore_changes = [min]
  }
}