region              = "eu-west-2"
project             = "redis-cache"
environment         = "production"
service_name        = "service"
hostzone            = "iposg.com"
cpu                 = 256
memory              = 512
enable_auto_scaling = false
max_capacity        = 1
min_capacity        = 1
desired_count       = 1
deployment_mode     = "FARGATE" # FARGATE or EC2
host_header         = "redis-cache.iposg.com" # ALB Value
subdomain_name      = "redis-cache" # Route53 Value
database_secrets    = "iposg-database-secrets"
common_secrets      = "common-secret-keys"

// manual images
#nginx_image_tag  = "redis-cache-production-service:nginx-6da64"
#phpapp_image_tag = "redis-cache-production-service:php-6da64"

// worker configuration
worker_default_host_header    = "worker-defaultredis-cache.iposg.com"
worker_high_host_header       = "worker-highredis-cache.iposg.com"
worker_low_host_header        = "worker-lowredis-cache.iposg.com"
worker_default_subdomain_name = "worker-defaultredis-cache"
worker_high_subdomain_name    = "worker-highredis-cache"
worker_low_subdomain_name     = "worker-lowredis-cache"
