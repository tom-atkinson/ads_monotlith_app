variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default     = "rg-chats-and-hacks"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-chats-and-hacks"
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}

variable "acr_name" {
  description = "Name of the Azure Container Registry (must be globally unique)"
  type        = string
  default     = "acrchatsandhacks"
}

variable "acr_sku" {
  description = "SKU tier for the Azure Container Registry"
  type        = string
  default     = "Basic"
  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.acr_sku)
    error_message = "ACR SKU must be Basic, Standard, or Premium."
  }
}

variable "acr_admin_enabled" {
  description = "Enable admin user for the Azure Container Registry"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Application = "RetailMonolith"
  }
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "log-chatsandhacks"
}

variable "container_app_environment_name" {
  description = "Name of the Container App Environment"
  type        = string
  default     = "cae-chatsandhacks"
}

variable "container_app_name" {
  description = "Name of the Container App"
  type        = string
  default     = "ca-retailmonolith"
}

variable "container_image_name" {
  description = "Name of the container image in ACR"
  type        = string
  default     = "retailmonolith"
}

variable "container_image_tag" {
  description = "Tag of the container image"
  type        = string
  default     = "latest"
}

variable "container_cpu" {
  description = "CPU allocation for the container"
  type        = number
  default     = 0.5
}

variable "container_memory" {
  description = "Memory allocation for the container"
  type        = string
  default     = "1Gi"
}

variable "min_replicas" {
  description = "Minimum number of container replicas"
  type        = number
  default     = 1
}

variable "max_replicas" {
  description = "Maximum number of container replicas"
  type        = number
  default     = 3
}

variable "container_target_port" {
  description = "Target port for the container"
  type        = number
  default     = 8080
}

