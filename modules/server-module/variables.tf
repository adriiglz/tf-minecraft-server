// Una serie de variables que el módulo toma como inputs
variable "resource_group_name" {}
variable "resource_group_location" {}

variable "environment_variables" {
  type = map
  default = {
    EULA = true
    DIFFICULTY = "hard"
    MODE = "creative"
  }
}