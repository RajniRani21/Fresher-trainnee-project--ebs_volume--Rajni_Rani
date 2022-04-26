variable "availability_zone"{
    type = string
    description = "Enter Availability zone for EBS volume "
}

variable "encrypted"{
    type = bool
    description = "Enter encrypted for EBS volume "
}



variable "size"{
    type = number
    description = "Enter size of EBS "
}

variable "type"{
    type = string
    description = "Enter type of EBS "
}

variable "name"{
    type = string
    description = "Enter tag name of EBS "
}

variable "throughput"{
    type = number
    description = "Enter throughput of EBS "
}

variable "device_name"{
    type = string
    description = "Enter device name "
}



variable "ami"{
    type = string
}

variable "instance_type"{
    type = string
}