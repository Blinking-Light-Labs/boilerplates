variable "token" {
    type = string
    description = "GitHub PAT Token"
    default = "value"
}

variable "repo_name" {
    type = string
    description = "Name of the repo"
}

variable "auto_init" {
    type = bool
    description = "Should a commit be made on creation."
}