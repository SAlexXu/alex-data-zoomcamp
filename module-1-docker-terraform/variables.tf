variable "credentials" {
    description = "Please do not steal"
    default = "/keys/creds.json"
  
}

variable "project" {
  description = "Name for the project"
  default     = "alex-dataengineer-zoomcamp"
}

variable "location" {
  description = "Project Location"
  default     = "EU"
}

variable "var_test_dataset_name" {
  description = "The default name given"
  default     = "demo_alex_dataset"
}