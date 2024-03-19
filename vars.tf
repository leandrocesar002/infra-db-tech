variable "projectName" {
  default = "sonarqube"
}

variable "clusterName" {
  default = "SonarQube"
}

variable "regionDefault" {
  default = "us-east-1" # example: us-east-1
}

variable "engineRds" {
  default = "postgres"
}

variable "engineRdsVersion" {
  default = "13.10"
}

variable "rdsUser" {
  default = "postgres"
}

variable "rdsPass" {
  default = "password"
}

variable "instanceClass" {
  default = "db.t3.micro"
}

variable "storageType" {
  default = "gp3"
}

variable "minStorage" {
  default = "20"
}

variable "maxStorage" {
  default = "30"
}

variable "subnet01" {
  default = "subnet-090dd28cee87dbee7" # example: subnet-abcdef1
}

variable "subnet02" {
  default = "subnet-03f7691dfd8b5d3f4" # example: subnet-abcdef1
}

variable "subnet03" {
  default = "subnet-06eee2cbb2da93160" # example: subnet-abcdef1
}

variable "vpcId" {
  default = "vpc-02a9bcbe028db431d" # example: vpc-abcdef1
}

variable "vpcCIDR" {
  default = "172.31.0.0/16" # example: 10.10.0.0/16
}

variable "AWSAccount" {
  default = "211125578146" # example: 123456789
}

variable "tags" {
  type = map(string)
  default = {
    App      = "sonarqube",
    Ambiente = "Desenvolvimento"
  }
}