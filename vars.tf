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
  default = "subnet-010c5341796264e97" # example: subnet-abcdef1
}

variable "subnet02" {
  default = "subnet-08066bd66340e7e0c" # example: subnet-abcdef1
}

variable "subnet03" {
  default = "subnet-02f8ff975ab696354" # example: subnet-abcdef1
}

variable "vpcId" {
  default = "vpc-098fe14cb4be834ba" # example: vpc-abcdef1
}

variable "vpcCIDR" {
  default = "172.31.0.0/16" # example: 10.10.0.0/16
}

variable "AWSAccount" {
  default = "851725244185" # example: 123456789
}

variable "tags" {
  type = map(string)
  default = {
    App      = "sonarqube",
    Ambiente = "Desenvolvimento"
  }
}