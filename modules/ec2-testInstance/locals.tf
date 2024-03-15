locals {
    ingress_rule =[
        {
            port = var.port1
            description = "ingress rule for port 443"
        },
        {
            port = var.port2
            description = "ingress rule for port 80"
        }
    ]
}
