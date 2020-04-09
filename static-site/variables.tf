variable "subscription_id" {}
variable "app_name" {}
variable "env" {}
variable "location" {}

variable "origin_name" {
    default = "app"
}

variable "sku" {
    default = "Standard_Microsoft"
}

variable "account_tier" {
    default = "Standard"
}

variable "replication_type" {
    default = "LRS"
}

variable "entry_point" {
    default = "index.html"
}

variable "error_page" {
    default = "404.html"
}

variable "full_env_name" {
    type = map
    default = {
        test = "Test"
        stag = "Staging"
        prod = "Production"
    }
}