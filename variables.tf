variable "name" {
  description = "A user-defined name of the function. Function names must be unique globally."
  type        = string
  default     = "function-creation"
}

variable "project" {
  description = " The ID of the project in which the resource belongs."
  type        = string
  default     = "sailor-321711"
}

variable "runtime" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
  "nodejs16",
  "nodejs14",
  "nodejs12",
  "nodejs10",
  "nodejs8",
  "nodejs6",
  "python39",
  "python38",
  "python37",
  "go116",
  "go116",
  "go113",
  "go111",
  "java11",
  "dotnet3",
  "ruby27",
  "ruby26",
  "php74"  
   ],
  "description":"The runtime in which the function is going to run."
}
EOT
  type        = string
  default     = "nodejs14"
}

variable "description" {
  description = "Description of the function."
  type        = string
  default     = ""
}

variable "available_memory_mb" {
  description = "Memory (in MB), available to the function. "
  type        = number
  default     = 0
}

variable "timeout" {
  description = "Timeout (in seconds) for the function."
  type        = number
  default     = 1
}

variable "entry_point" {
  description = "Name of the function that will be executed when the Google Cloud Function is triggered."
  type        = string
  default     = ""
}

variable "trigger_http" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
  "true",
  "false"
   ],
   "default":true,
   "description": "Whether any HTTP request (of a supported type) to the endpoint will trigger function execution."
}
EOT 
  type        = bool
  default     = "true"
}

variable "ingress_setting" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
  "ALLOW_ALL",
  "ALLOW_INTERNAL_AND_GCLB",
  "ALLOW_INTERNAL_ONLY"
   ],
   "default":"ALLOW_ALL",
   "description": "string value that controls what traffic can reach the function."
}
EOT 
  type        = string
  default     = "ALLOW_INTERNAL_ONLY"
}

variable "service_account_email" {
  description = "If provided, the self-provided service account to run the function with."
  type        = string
  default     = ""
}

variable "environment_variables" {
  description = "A set of key/value environment variable pairs to assign to the function."
  type        = map(string)
  default     = {}
}

variable "build_environment_variables" {
  description = "A set of key/value environment variable pairs available during build time."
  type        = map(string)
  default     = {}
}

variable "connector" {
  description = "The VPC Network Connector that this cloud function can connect to."
  type        = string
  default     = ""
}

variable "max_instances" {
  description = "He limit on the maximum number of function instances that may coexist at a given time."
  type        = number
  default     = 1

}

variable "url" {
  description = "The URL pointing to the hosted repository where the function is defined."
  type        = string
  default     = "https://github.com/bootlabstech/terraform-cloud-function.git"
}





# ***iam_binding





variable "role" {
  description = "The role that should be applied. "
  type        = string
  default     = ""

}

variable "members" {
  description = "Identities that will be granted the privilege in role. "
  type        = set(string)
  default     = []

}
