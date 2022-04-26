
variable "web_inbound" {
  type = map(object({
  port = number
  protocol = string
  cidr = list(string)
  }))

  default = {
    "port80" = {
      cidr = [ "0.0.0.0/0" ]
      port = 80
      protocol = "TLS port"
    }
    "port443" = {
      cidr = [ "0.0.0.0/0" ]
      port = 443
      protocol = "TLS port"
    }  
  }
}