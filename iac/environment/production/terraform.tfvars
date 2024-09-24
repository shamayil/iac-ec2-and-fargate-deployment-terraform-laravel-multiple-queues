region              = "eu-west-2"
project             = "cloud-transfetch"
environment         = "production"
service_name        = "service"
hostzone            = "iposg.com"
#cpu                 = 1024
#memory              = 4096
enable_auto_scaling = false
max_capacity        = 1
min_capacity        = 1
desired_count       = 1
deployment_mode     = "FARGATE" # FARGATE or EC2
host_header         = "cloud-trans-api.iposg.com" # ALB Value
subdomain_name      = "cloud-trans-api" # Route53 Value
database_secrets    = "iposg-database-secrets"
common_secrets      = "common-secret-keys"

#manual images
#nginx_image_tag  = "cloud-transfetch-production-service:nginx-e487d2d"
#phpapp_image_tag = "cloud-transfetch-production-service:php-e487d2d"

#worker configuration
#worker_cpu                 = 1024
#worker_memory              = 2048
worker_enable_auto_scaling = true
worker_max_capacity        = 1
worker_min_capacity        = 1
worker_desired_count       = 1
