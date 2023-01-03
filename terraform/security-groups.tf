resource "aws_security_group" "node_group_one" {
  name_prefix = "joi_node_group_one"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "202.66.38.130/32"
    ]
  }

  ingress {
    from_port = 8092
    to_port   = 8092
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
      "202.66.38.130/32"
    ]
  }

  ingress {
    from_port = 30007
    to_port   = 30007
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
      "202.66.38.130/32"
    ]
  }

}

resource "aws_security_group" "node_group_two" {
  name_prefix = "joi_node_group_two"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
      "202.66.38.130/32"
    ]
  }

  ingress {
    from_port = 30007
    to_port   = 30007
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
      "202.66.38.130/32"
    ]
  }
  ingress {
    from_port = 8092
    to_port   = 8092
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
      "202.66.38.130/32"
    ]
  }
}
