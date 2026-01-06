variable "rg" {
  description = "The name of the resource group"
  type        = map(object({
    name     = string
    location = string
  }))
  
}