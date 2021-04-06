resource "aws_elasticache_replication_group" "redis" {
  automatic_failover_enabled    = true
  replication_group_id          = var.redis_group_id
  replication_group_description = "${var.redis_group_id} description"
  node_type                     = "cache.t2.micro"
  engine_version                = "6.x"
  parameter_group_name          = "default.redis6.x.cluster.on"
  security_group_ids            = [aws_security_group.redis.id]
  subnet_group_name             = aws_elasticache_subnet_group.iti.name
  port                          = var.redis_port

  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = 1
  }
}

resource "aws_elasticache_subnet_group" "iti" {
  name       = "iti-cache-subnet"
  subnet_ids = [module.network.public1_id, module.network.public3_id]
}




# resource "aws_elasticache_cluster" "redis" {
#   cluster_id           = "iti-rds"
#   engine               = "redis"
#   engine_version       = "6.x"
#   node_type            = "cache.t2.micro"
#   num_cache_nodes      = 1
#   parameter_group_name = "default.redis6.x"
#   subnet_group_name    = aws_elasticache_subnet_group.iti.name
#   security_group_ids   = [aws_security_group.redis.id]


#   tags = {
#     "Name" = "iti"
#   }
# }
