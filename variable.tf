variable "region" {
  description = "The region where resources will be created"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS subnet group"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  
}
variable "db_engine" {
  description = "The database engine"
  
}
variable "db_engine_version" {
  description = "The database engine version"

}
variable "db_instance_class" {
  description = "The instance class for the RDS instance"
}
variable "db_name" {
  description = "The name of the database"
}
variable "db_username" {
  description = "The username for the database"
}
variable "db_password" {
  description = "The password for the database"
}
variable "db_parameter_group_name" {
  description = "The name of the database parameter group"
}
variable "backup_retention_period" {
  description = "The number of days to retain backups"
}
variable "backup_window" {
  description = "The time window for automated backups"
}
variable "maintenance_window" {
  description = "The time window for maintenance activities"
}