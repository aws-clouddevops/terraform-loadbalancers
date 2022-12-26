module "alb-private" {
    source                  = "./vendor/modules/alb"
    ALB_NAME                = "roboshop-private"
    INTERNAL                = true
    ENV                     = var.ENV
}

module "alb-public" {
    source                  = "./vendor/modules/alb"
    ALB_NAME                = "roboshop-public"
    INTERNAL                = false
    ENV                     = var.ENV
}



# Always the source attribute in terraform module can not be parameterized

# if it can not be handled or parameterized the source, how are we going to tell, fetch from x brand and when branches are dynamic
