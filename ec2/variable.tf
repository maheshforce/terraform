variable instancetype {
  type        = string
  default     = "t2.micro"
  description = "description"
}

variable name {
  type        = string
  default     = "ami-05638892e01d153cb"
  description = "description"
}

variable subnet {
  type        = list
  default     = ["172.16.10.0/24"]
  description = "description"
}

variable vpc {
  type        = list
  default     = ["172.16.0.0/16"]
  description = "description"
}

variable region {
  type        = list
  default     = ["us-east-1"]
  description = "description"
}

variable az {
  type        = list
  default     = ["us-east-1a"]
  description = "description"
}

variable tag {
  type        = list
  default     = ["mahesh", "hari"]
  description = "description"
}




