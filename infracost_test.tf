terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "IAMUser" {
    path = "/"
    name = "admin"
    tags = {}
}

resource "aws_iam_user" "IAMUser2" {
    path = "/"
    name = "test"
    tags = {}
}

resource "aws_iam_role" "IAMRole" {
    path = "/"
    name = "BastionAdminRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole2" {
    path = "/"
    name = "ECSCodeDeployRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codedeploy.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole3" {
    path = "/"
    name = "rds-monitoring-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"monitoring.rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole4" {
    path = "/"
    name = "ecsTaskExecutionRole"
    assume_role_policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole5" {
    path = "/service-role/"
    name = "rds-proxy-role-1734138352532"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
    aws_service_name = "eks.amazonaws.com"
    description = "Allows Amazon EKS to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "eks-nodegroup.amazonaws.com"
    description = "This policy allows Amazon EKS to create and manage Nodegroups"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "ops.apigateway.amazonaws.com"
    description = "The Service Linked Role is used by Amazon API Gateway."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "ecs.application-autoscaling.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole5" {
    aws_service_name = "mgn.amazonaws.com"
    description = "Access role for the mgn.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole6" {
    aws_service_name = "apprunner.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole7" {
    aws_service_name = "autoscaling.amazonaws.com"
    description = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole8" {
    aws_service_name = "compute-optimizer.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole9" {
    aws_service_name = "devops-guru.amazonaws.com"
    description = "AWS service role used to execute actions on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole10" {
    aws_service_name = "ec2-instance-connect.amazonaws.com"
    description = "The Service Linked Role used by EC2 Instance Connect Endpoint."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole11" {
    aws_service_name = "spot.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole12" {
    aws_service_name = "replication.ecr.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole13" {
    aws_service_name = "ecs.amazonaws.com"
    description = "Role to enable Amazon ECS to manage your cluster."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole14" {
    aws_service_name = "elasticache.amazonaws.com"
    description = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole15" {
    aws_service_name = "elasticloadbalancing.amazonaws.com"
    description = "Allows ELB to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole16" {
    aws_service_name = "globalaccelerator.amazonaws.com"
    description = "Allows Global Accelerator to call AWS services on customer's behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole17" {
    aws_service_name = "internetmonitor.amazonaws.com"
    description = "A service-linked role required for CloudWatch Internet Monitor to access your resources."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole18" {
    aws_service_name = "ipam.amazonaws.com"
    description = "The Service Linked Role used by AWS IPAM."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole19" {
    aws_service_name = "kafka.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole20" {
    aws_service_name = "route53resolver.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole21" {
    aws_service_name = "organizations.amazonaws.com"
    description = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole22" {
    aws_service_name = "rds.amazonaws.com"
    description = "Allows Amazon RDS to manage AWS resources on your behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole23" {
    aws_service_name = "sso.amazonaws.com"
    description = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole24" {
    aws_service_name = "vpc-lattice.amazonaws.com"
    description = "Allows Mercury to call AWS services on behalf of customers"
}

resource "aws_iam_policy" "IAMManagedPolicy" {
    name = "rds-proxy-policy-1734138352532"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "GetSecretValue",
            "Action": [
                "secretsmanager:GetSecretValue"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:secretsmanager:us-east-1:950274644703:secret:rds-db-credentials/db-YKLLNPM5VP3FJ3EOZ3CDGHWOME/root/1734138350766-xwhCXX"
            ]
        },
        {
            "Sid": "DecryptSecretValue",
            "Action": [
                "kms:Decrypt"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:kms:us-east-1:950274644703:key/5a0a4ff1-8cf0-4ba1-b572-16e4a7a2ef3e"
            ],
            "Condition": {
                "StringEquals": {
                    "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_instance_profile" "IAMInstanceProfile" {
    path = "/"
    name = "${aws_iam_role.IAMRole.name}"
    roles = [
        "${aws_iam_role.IAMRole.name}"
    ]
}

resource "aws_iam_access_key" "IAMAccessKey" {
    status = "Active"
    user = "admin"
}

resource "aws_iam_access_key" "IAMAccessKey2" {
    status = "Active"
    user = "admin"
}

resource "aws_iam_access_key" "IAMAccessKey3" {
    status = "Active"
    user = "test"
}

resource "aws_vpc" "EC2VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = "riot-games-vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "us-east-1a"
    cidr_block = "10.0.160.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "us-east-1a"
    cidr_block = "10.0.0.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet3" {
    availability_zone = "us-east-1a"
    cidr_block = "10.0.128.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet4" {
    availability_zone = "us-east-1b"
    cidr_block = "10.0.176.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet5" {
    availability_zone = "us-east-1b"
    cidr_block = "10.0.144.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet6" {
    availability_zone = "us-east-1b"
    cidr_block = "10.0.16.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "riot-games-igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_eip" "EC2EIP" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation" {
    allocation_id = "eipalloc-01cafddd444bc6ca9"
    network_interface_id = "eni-07d72e0b710b25c89"
    private_ip_address = "10.0.1.222"
}

resource "aws_eip" "EC2EIP2" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation2" {
    allocation_id = "eipalloc-00f573b4c15fac498"
    network_interface_id = "eni-0c44691029d036055"
    private_ip_address = "10.0.29.24"
}

resource "aws_vpc_dhcp_options_association" "EC2VPCDHCPOptionsAssociation" {
    dhcp_options_id = "dopt-04763b5d85185ae78"
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riot-games-rtb-db2-us-east-1b"
    }
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riot-games-rtb-public"
    }
}

resource "aws_route_table" "EC2RouteTable3" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riot-games-rtb-private2-us-east-1b"
    }
}

resource "aws_route_table" "EC2RouteTable4" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riot-games-rtb-db1-us-east-1a"
    }
}

resource "aws_route_table" "EC2RouteTable5" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

resource "aws_route_table" "EC2RouteTable6" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riot-games-rtb-private1-us-east-1a"
    }
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-03269d466c7bb5d02"
    route_table_id = "rtb-0220a6511631ea821"
}

resource "aws_route" "EC2Route2" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-06c5bc9e5a8d58cb9"
    route_table_id = "rtb-03b1c0beb15115e0b"
}

resource "aws_route" "EC2Route3" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-07727eb0e8fe9a8e7"
    route_table_id = "rtb-0f3e5145f72e42bd4"
}

resource "aws_nat_gateway" "EC2NatGateway" {
    subnet_id = "subnet-006bb80b596d12f19"
    tags = {
        Name = "riot-games-nat-public1-us-east-1a"
    }
    allocation_id = "eipalloc-01cafddd444bc6ca9"
}

resource "aws_nat_gateway" "EC2NatGateway2" {
    subnet_id = "subnet-0d656810a69673164"
    tags = {
        Name = "riot-games-nat-public2-us-east-1b"
    }
    allocation_id = "eipalloc-00f573b4c15fac498"
}

resource "aws_vpc_endpoint" "EC2VPCEndpoint" {
    vpc_endpoint_type = "Interface"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    service_name = "com.amazonaws.vpce.us-east-1.vpce-svc-00b536bd57d727867"
    policy = <<EOF
{
  "Statement": [
    {
      "Action": "*", 
      "Effect": "Allow", 
      "Principal": "*", 
      "Resource": "*"
    }
  ]
}
EOF
    subnet_ids = [
        "subnet-08436219347ee30dd",
        "subnet-00c0efcb0614db99c"
    ]
    private_dns_enabled = false
    security_group_ids = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation" {
    route_table_id = "rtb-0ecc35fe32177338d"
    subnet_id = "subnet-00c0efcb0614db99c"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation2" {
    route_table_id = "rtb-0220a6511631ea821"
    subnet_id = "subnet-0d656810a69673164"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation3" {
    route_table_id = "rtb-0220a6511631ea821"
    subnet_id = "subnet-006bb80b596d12f19"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation4" {
    route_table_id = "rtb-03b1c0beb15115e0b"
    subnet_id = "subnet-01a6cf3e86c0e6af2"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation5" {
    route_table_id = "rtb-0acf1b601b8ef30e9"
    subnet_id = "subnet-08436219347ee30dd"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation6" {
    route_table_id = "rtb-0f3e5145f72e42bd4"
    subnet_id = "subnet-0ed83f8d0a5aee854"
}

resource "aws_route53_zone" "Route53HostedZone" {
    name = "gongju.click."
}

resource "aws_route53_zone" "Route53HostedZone2" {
    name = "images."
}

resource "aws_route53_zone" "Route53HostedZone3" {
    name = "players."
}

resource "aws_route53_zone" "Route53HostedZone4" {
    name = "champions."
}

resource "aws_route53_zone" "Route53HostedZone5" {
    name = "matches."
}

resource "aws_route53_record" "Route53RecordSet" {
    name = "gongju.click."
    type = "NS"
    ttl = 172800
    records = [
        "ns-506.awsdns-63.com.",
        "ns-1553.awsdns-02.co.uk.",
        "ns-1347.awsdns-40.org.",
        "ns-763.awsdns-31.net."
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet2" {
    name = "gongju.click."
    type = "SOA"
    ttl = 900
    records = [
        "ns-506.awsdns-63.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet3" {
    name = "images."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z0288463215C9AG06222I"
}

resource "aws_route53_record" "Route53RecordSet4" {
    name = "images."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z0288463215C9AG06222I"
}

resource "aws_route53_record" "Route53RecordSet5" {
    name = "images.images."
    type = "A"
    set_identifier = "0aac7e7b6e1b44bea5ca3c72c099f2de"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "3003e044-9e03-4e77-b533-db67680f6b8b"
    records = [
        "10.0.134.242"
    ]
    zone_id = "Z0288463215C9AG06222I"
}

resource "aws_route53_record" "Route53RecordSet6" {
    name = "images.images."
    type = "A"
    set_identifier = "2b8278b870534b0c8a86f1c26f07a2c0"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "08c39152-f661-4abd-bfc8-47b55d736581"
    records = [
        "10.0.151.23"
    ]
    zone_id = "Z0288463215C9AG06222I"
}

resource "aws_route53_record" "Route53RecordSet7" {
    name = "players."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z0451605YAOBGYXK9P2N"
}

resource "aws_route53_record" "Route53RecordSet8" {
    name = "players."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z0451605YAOBGYXK9P2N"
}

resource "aws_route53_record" "Route53RecordSet9" {
    name = "players.players."
    type = "A"
    set_identifier = "867a28fba3d547e18dd9f0a8e379c658"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "e2b45943-ba1a-4fcb-9dac-799aa54dec8b"
    records = [
        "10.0.128.184"
    ]
    zone_id = "Z0451605YAOBGYXK9P2N"
}

resource "aws_route53_record" "Route53RecordSet10" {
    name = "players.players."
    type = "A"
    set_identifier = "99f9e1467127491397776b127f3697cf"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "1482d373-390f-4f74-9ec8-1bca320027e1"
    records = [
        "10.0.150.161"
    ]
    zone_id = "Z0451605YAOBGYXK9P2N"
}

resource "aws_route53_record" "Route53RecordSet11" {
    name = "matches."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z04586151PTO379M6LWEN"
}

resource "aws_route53_record" "Route53RecordSet12" {
    name = "matches."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z04586151PTO379M6LWEN"
}

resource "aws_route53_record" "Route53RecordSet13" {
    name = "matches.matches."
    type = "A"
    set_identifier = "37408ed676844544b15b5e52d1780d5f"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "f0e2338a-1886-429f-b055-c2629d93472f"
    records = [
        "10.0.154.255"
    ]
    zone_id = "Z04586151PTO379M6LWEN"
}

resource "aws_route53_record" "Route53RecordSet14" {
    name = "matches.matches."
    type = "A"
    set_identifier = "5f802d1ed50b44969d1ac62843f8d8f3"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "95493ab7-dd26-448d-8d2a-aed6eb022d08"
    records = [
        "10.0.139.12"
    ]
    zone_id = "Z04586151PTO379M6LWEN"
}

resource "aws_route53_record" "Route53RecordSet15" {
    name = "champions."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z045144228BE86TRUOGZB"
}

resource "aws_route53_record" "Route53RecordSet16" {
    name = "champions."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z045144228BE86TRUOGZB"
}

resource "aws_route53_record" "Route53RecordSet17" {
    name = "champions.champions."
    type = "A"
    set_identifier = "321db7a755db412093758505db4f98bd"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "78734ca2-13a1-4740-b955-2f97f709ad98"
    records = [
        "10.0.156.194"
    ]
    zone_id = "Z045144228BE86TRUOGZB"
}

resource "aws_route53_record" "Route53RecordSet18" {
    name = "champions.champions."
    type = "A"
    set_identifier = "71a90f30f7e441799efcc0310d23ab4e"
    multivalue_answer_routing_policy = true
    ttl = 15
    health_check_id = "99258755-6271-4940-9bf4-7ddf64a727a1"
    records = [
        "10.0.128.130"
    ]
    zone_id = "Z045144228BE86TRUOGZB"
}

resource "aws_instance" "EC2Instance" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t3.medium"
    key_name = "bastion"
    availability_zone = "us-east-1a"
    tenancy = "default"
    subnet_id = "subnet-006bb80b596d12f19"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole.name}"
    tags = {
        Name = "bastion"
    }
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer" {
    name = "riot-alb"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-006bb80b596d12f19",
        "subnet-0d656810a69673164"
    ]
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        bucket = ""
        prefix = ""
    }
    idle_timeout = "60"
    enable_deletion_protection = "false"
    enable_http2 = "true"
    enable_cross_zone_load_balancing = "true"
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener" {
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:950274644703:loadbalancer/app/riot-alb/c9a77d535b7ba418"
    port = 80
    protocol = "HTTP"
    default_action {
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:950274644703:targetgroup/admin-tg1/9b5641b080bf69e1"
        type = "forward"
    }
}

resource "aws_security_group" "EC2SecurityGroup" {
    description = "frontend-sg"
    name = "frontend-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 8501
        protocol = "tcp"
        to_port = 8501
    }
    ingress {
        ipv6_cidr_blocks = [
            "::/0"
        ]
        from_port = 8501
        protocol = "tcp"
        to_port = 8501
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
}

resource "aws_security_group" "EC2SecurityGroup2" {
    description = "riot-games-alb"
    name = "riot-games-alb"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 80
        protocol = "tcp"
        to_port = 80
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 8501
        protocol = "tcp"
        to_port = 8501
    }
}

resource "aws_security_group" "EC2SecurityGroup3" {
    description = "backend-sg"
    name = "backend-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
    ingress {
        ipv6_cidr_blocks = [
            "::/0"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
}

resource "aws_security_group" "EC2SecurityGroup4" {
    description = "basiton-sg"
    name = "basiton-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        cidr_blocks = [
            "116.41.254.160/32"
        ]
        from_port = 22
        protocol = "tcp"
        to_port = 22
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
}

resource "aws_security_group" "EC2SecurityGroup5" {
    description = "mysql-db-sg"
    name = "mysql-db-sg"
    tags = {
        Name = "mysql-db-sg"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup4.id}"
        ]
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup" {
    health_check {
        interval = 30
        path = "/"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 8501
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "admin-tg1"
}

resource "aws_ebs_volume" "EC2Volume" {
    availability_zone = "us-east-1a"
    encrypted = true
    size = 8
    type = "gp3"
    snapshot_id = "snap-0938e311dc85e7433"
    kms_key_id = "arn:aws:kms:us-east-1:950274644703:key/d3802a01-62a7-4acc-a4fb-33bf70fb90ef"
    tags = {}
}

resource "aws_volume_attachment" "EC2VolumeAttachment" {
    volume_id = "vol-0a1f19a45f02d0664"
    instance_id = "i-0ddaba4a9418b535e"
    device_name = "/dev/xvda"
}

resource "aws_network_interface" "EC2NetworkInterface" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.178.63"
    ]
    subnet_id = "subnet-00c0efcb0614db99c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface2" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/9812f5e5-8c97-404c-8f80-f2f28a8a2708"
    private_ips = [
        "10.0.156.194"
    ]
    subnet_id = "subnet-01a6cf3e86c0e6af2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface3" {
    description = "VPC Endpoint Interface vpce-0af0e655f20ceaa88"
    private_ips = [
        "10.0.176.68"
    ]
    subnet_id = "subnet-00c0efcb0614db99c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface4" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.188.116"
    ]
    subnet_id = "subnet-00c0efcb0614db99c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface5" {
    description = "Network interface for DBProxy proxy-1734138353499-riotgames-db-1"
    private_ips = [
        "10.0.187.189"
    ]
    subnet_id = "subnet-00c0efcb0614db99c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface6" {
    description = "ELB app/riot-alb/c9a77d535b7ba418"
    private_ips = [
        "10.0.21.35"
    ]
    subnet_id = "subnet-0d656810a69673164"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface7" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/f5c94c87-dbbc-46c8-9cc9-e98f37a21c20"
    private_ips = [
        "10.0.146.69"
    ]
    subnet_id = "subnet-01a6cf3e86c0e6af2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface8" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/a16c3059-c923-442d-aaf8-0ba1dc7d802a"
    private_ips = [
        "10.0.151.23"
    ]
    subnet_id = "subnet-01a6cf3e86c0e6af2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface9" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/88664fb1-ba02-4ae1-8705-5769c9d63556"
    private_ips = [
        "10.0.154.255"
    ]
    subnet_id = "subnet-01a6cf3e86c0e6af2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface10" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/7c3d2e48-c79b-4b89-8287-8923dc46b42e"
    private_ips = [
        "10.0.150.161"
    ]
    subnet_id = "subnet-01a6cf3e86c0e6af2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface11" {
    description = "Interface for NAT Gateway nat-06c5bc9e5a8d58cb9"
    private_ips = [
        "10.0.29.24"
    ]
    subnet_id = "subnet-0d656810a69673164"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface12" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/3e5bc4c8-3207-46b0-8853-8f84d945ab97"
    private_ips = [
        "10.0.128.184"
    ]
    subnet_id = "subnet-0ed83f8d0a5aee854"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface13" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/e0386a6e-f5dd-4776-a953-ebb5dc8d567f"
    private_ips = [
        "10.0.134.242"
    ]
    subnet_id = "subnet-0ed83f8d0a5aee854"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface14" {
    description = "ELB app/riot-alb/c9a77d535b7ba418"
    private_ips = [
        "10.0.12.237"
    ]
    subnet_id = "subnet-006bb80b596d12f19"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface15" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/88135ed2-bb8c-420c-a984-60137c1b6f16"
    private_ips = [
        "10.0.139.12"
    ]
    subnet_id = "subnet-0ed83f8d0a5aee854"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface16" {
    description = ""
    private_ips = [
        "10.0.15.26"
    ]
    subnet_id = "subnet-006bb80b596d12f19"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface17" {
    description = "VPC Endpoint Interface vpce-0af0e655f20ceaa88"
    private_ips = [
        "10.0.174.225"
    ]
    subnet_id = "subnet-08436219347ee30dd"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface18" {
    description = "Interface for NAT Gateway nat-07727eb0e8fe9a8e7"
    private_ips = [
        "10.0.1.222"
    ]
    subnet_id = "subnet-006bb80b596d12f19"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface19" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/20b831b1-5288-4bda-8332-4509ae1d069f"
    private_ips = [
        "10.0.132.96"
    ]
    subnet_id = "subnet-0ed83f8d0a5aee854"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface20" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.167.144"
    ]
    subnet_id = "subnet-08436219347ee30dd"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface21" {
    description = "arn:aws:ecs:us-east-1:950274644703:attachment/2ae7589a-40b1-4cd4-8fcf-c42f39eba1ee"
    private_ips = [
        "10.0.128.130"
    ]
    subnet_id = "subnet-0ed83f8d0a5aee854"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface22" {
    description = "Network interface for DBProxy proxy-1734138353499-riotgames-db-1"
    private_ips = [
        "10.0.165.54"
    ]
    subnet_id = "subnet-08436219347ee30dd"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface23" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.163.174"
    ]
    subnet_id = "subnet-08436219347ee30dd"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment" {
    network_interface_id = "eni-0c850a08223e9a849"
    device_index = 0
    instance_id = "i-0ddaba4a9418b535e"
}

resource "aws_key_pair" "EC2KeyPair" {
    public_key = "REPLACEME"
    key_name = "bastion"
}

resource "aws_db_instance" "RDSDBInstance" {
    identifier = "riotgames-db-1"
    allocated_storage = 100
    instance_class = "db.t3.xlarge"
    engine = "mysql"
    username = "root"
    password = "REPLACEME"
    backup_window = "08:19-08:49"
    backup_retention_period = 7
    availability_zone = "us-east-1a"
    maintenance_window = "wed:10:16-wed:10:46"
    multi_az = true
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    license_model = "general-public-license"
    publicly_accessible = false
    storage_type = "gp2"
    port = 3306
    storage_encrypted = true
    kms_key_id = "arn:aws:kms:us-east-1:950274644703:key/64b0af9b-9d4e-471e-be63-20a0a251614d"
    copy_tags_to_snapshot = true
    monitoring_interval = 60
    iam_database_authentication_enabled = false
    deletion_protection = true
    db_subnet_group_name = "mysql-db-subnet-group"
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
    max_allocated_storage = 1000
}

resource "aws_db_instance" "RDSDBInstance2" {
    identifier = "riotgames-db-1-ro"
    allocated_storage = 100
    instance_class = "db.t3.xlarge"
    engine = "mysql"
    replicate_source_db = "riotgames-db-1"
    availability_zone = "us-east-1b"
    maintenance_window = "wed:10:16-wed:10:46"
    multi_az = true
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    license_model = "general-public-license"
    publicly_accessible = false
    storage_type = "gp2"
    port = 3306
    storage_encrypted = true
    kms_key_id = "arn:aws:kms:us-east-1:950274644703:key/64b0af9b-9d4e-471e-be63-20a0a251614d"
    copy_tags_to_snapshot = false
    monitoring_interval = 0
    iam_database_authentication_enabled = false
    deletion_protection = false
    db_subnet_group_name = "mysql-db-subnet-group"
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
    max_allocated_storage = 1000
}

resource "aws_db_subnet_group" "RDSDBSubnetGroup" {
    description = "mysql-db-subnet-group"
    name = "mysql-db-subnet-group"
    subnet_ids = [
        "subnet-00c0efcb0614db99c",
        "subnet-08436219347ee30dd"
    ]
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm" {
    alarm_name = "TargetTracking-service/riot-games-cluster/admin-svc-AlarmHigh-4af5329c-2a33-4147-92cd-0f59f344ad8b"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:003a7cdd-519c-4913-b6b5-24162a41bff3:resource/ecs/service/riot-games-cluster/admin-svc:policyName/CPU:createdBy/bf231cd8-28c7-40f5-a3fe-f188b6098246."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:003a7cdd-519c-4913-b6b5-24162a41bff3:resource/ecs/service/riot-games-cluster/admin-svc:policyName/CPU:createdBy/bf231cd8-28c7-40f5-a3fe-f188b6098246"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "admin-svc"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 3
    threshold = 70
    comparison_operator = "GreaterThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm2" {
    alarm_name = "TargetTracking-service/riot-games-cluster/admin-svc-AlarmLow-78f0ac52-f229-4e15-b2f0-bfbe2fce7e73"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:003a7cdd-519c-4913-b6b5-24162a41bff3:resource/ecs/service/riot-games-cluster/admin-svc:policyName/CPU:createdBy/bf231cd8-28c7-40f5-a3fe-f188b6098246."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:003a7cdd-519c-4913-b6b5-24162a41bff3:resource/ecs/service/riot-games-cluster/admin-svc:policyName/CPU:createdBy/bf231cd8-28c7-40f5-a3fe-f188b6098246"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "admin-svc"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 15
    threshold = 63
    comparison_operator = "LessThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm3" {
    alarm_name = "TargetTracking-service/riot-games-cluster/champions-svc2-AlarmHigh-10e6dfc8-10e8-4cb9-9fee-4e31e4bccd92"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:7eae80a1-830f-4d21-86c7-868eaa9b7ff9:resource/ecs/service/riot-games-cluster/champions-svc2:policyName/CPU:createdBy/ac6666de-5cc6-4f3d-8ba1-90d53d6062d3."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:7eae80a1-830f-4d21-86c7-868eaa9b7ff9:resource/ecs/service/riot-games-cluster/champions-svc2:policyName/CPU:createdBy/ac6666de-5cc6-4f3d-8ba1-90d53d6062d3"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "champions-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 3
    threshold = 70
    comparison_operator = "GreaterThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm4" {
    alarm_name = "TargetTracking-service/riot-games-cluster/champions-svc2-AlarmLow-70894004-3fe3-46f3-aab4-b94b0c0a6a32"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:7eae80a1-830f-4d21-86c7-868eaa9b7ff9:resource/ecs/service/riot-games-cluster/champions-svc2:policyName/CPU:createdBy/ac6666de-5cc6-4f3d-8ba1-90d53d6062d3."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:7eae80a1-830f-4d21-86c7-868eaa9b7ff9:resource/ecs/service/riot-games-cluster/champions-svc2:policyName/CPU:createdBy/ac6666de-5cc6-4f3d-8ba1-90d53d6062d3"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "champions-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 15
    threshold = 63
    comparison_operator = "LessThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm5" {
    alarm_name = "TargetTracking-service/riot-games-cluster/images-svc2-AlarmHigh-dbfd9e3d-de79-4ab8-aa7c-b94cb316d076"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:1084a4ee-d39c-479e-8f36-aa9d92502bdc:resource/ecs/service/riot-games-cluster/images-svc2:policyName/CPU:createdBy/baa50698-e591-4f18-a64a-a9dda191fb79."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:1084a4ee-d39c-479e-8f36-aa9d92502bdc:resource/ecs/service/riot-games-cluster/images-svc2:policyName/CPU:createdBy/baa50698-e591-4f18-a64a-a9dda191fb79"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "images-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 3
    threshold = 70
    comparison_operator = "GreaterThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm6" {
    alarm_name = "TargetTracking-service/riot-games-cluster/images-svc2-AlarmLow-39e7f295-1c51-4ca6-a4ab-fa6ee82d9142"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:1084a4ee-d39c-479e-8f36-aa9d92502bdc:resource/ecs/service/riot-games-cluster/images-svc2:policyName/CPU:createdBy/baa50698-e591-4f18-a64a-a9dda191fb79."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:1084a4ee-d39c-479e-8f36-aa9d92502bdc:resource/ecs/service/riot-games-cluster/images-svc2:policyName/CPU:createdBy/baa50698-e591-4f18-a64a-a9dda191fb79"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "images-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 15
    threshold = 63
    comparison_operator = "LessThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm7" {
    alarm_name = "TargetTracking-service/riot-games-cluster/matches-svc2-AlarmHigh-25d0207e-e873-4296-889c-43e0d33c45cd"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:0e240839-00ea-402f-8a6e-083abbf46a5b:resource/ecs/service/riot-games-cluster/matches-svc2:policyName/CPU:createdBy/9d7c39df-7683-478d-aaac-0ca49dd2d32f."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:0e240839-00ea-402f-8a6e-083abbf46a5b:resource/ecs/service/riot-games-cluster/matches-svc2:policyName/CPU:createdBy/9d7c39df-7683-478d-aaac-0ca49dd2d32f"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "matches-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 3
    threshold = 70
    comparison_operator = "GreaterThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm8" {
    alarm_name = "TargetTracking-service/riot-games-cluster/matches-svc2-AlarmLow-a8a721ba-be0b-42a2-817d-92979546f21e"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:0e240839-00ea-402f-8a6e-083abbf46a5b:resource/ecs/service/riot-games-cluster/matches-svc2:policyName/CPU:createdBy/9d7c39df-7683-478d-aaac-0ca49dd2d32f."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:0e240839-00ea-402f-8a6e-083abbf46a5b:resource/ecs/service/riot-games-cluster/matches-svc2:policyName/CPU:createdBy/9d7c39df-7683-478d-aaac-0ca49dd2d32f"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "matches-svc2"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 15
    threshold = 63
    comparison_operator = "LessThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm9" {
    alarm_name = "TargetTracking-service/riot-games-cluster/players-svc-AlarmHigh-84b1486f-83bf-4d59-bab3-42c7301d0620"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:d6209738-68f4-4a8e-b1e7-4741019db7ed:resource/ecs/service/riot-games-cluster/players-svc:policyName/CPU:createdBy/eb8eacf1-3379-40d0-95ed-8737c02d014b."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:d6209738-68f4-4a8e-b1e7-4741019db7ed:resource/ecs/service/riot-games-cluster/players-svc:policyName/CPU:createdBy/eb8eacf1-3379-40d0-95ed-8737c02d014b"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "players-svc"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 3
    threshold = 70
    comparison_operator = "GreaterThanThreshold"
}

resource "aws_cloudwatch_metric_alarm" "CloudWatchAlarm10" {
    alarm_name = "TargetTracking-service/riot-games-cluster/players-svc-AlarmLow-d87ce74f-8ff1-45a6-b2f9-8520c3679673"
    alarm_description = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:d6209738-68f4-4a8e-b1e7-4741019db7ed:resource/ecs/service/riot-games-cluster/players-svc:policyName/CPU:createdBy/eb8eacf1-3379-40d0-95ed-8737c02d014b."
    actions_enabled = true
    alarm_actions = [
        "arn:aws:autoscaling:us-east-1:950274644703:scalingPolicy:d6209738-68f4-4a8e-b1e7-4741019db7ed:resource/ecs/service/riot-games-cluster/players-svc:policyName/CPU:createdBy/eb8eacf1-3379-40d0-95ed-8737c02d014b"
    ]
    metric_name = "CPUUtilization"
    namespace = "AWS/ECS"
    statistic = "Average"
    dimensions {
        ClusterName = "riot-games-cluster"
        ServiceName = "players-svc"
    }
    period = 60
    unit = "Percent"
    evaluation_periods = 15
    threshold = 63
    comparison_operator = "LessThanThreshold"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "/aws/codebuild/codebuild"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup2" {
    name = "/aws/rds/instance/riotgames-db-1-ro/error"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup3" {
    name = "/aws/rds/instance/riotgames-db-1/error"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup4" {
    name = "/aws/rds/proxy/proxy-1734138353499-riotgames-db-1"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup5" {
    name = "/ecs/admin-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup6" {
    name = "/ecs/champions-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup7" {
    name = "/ecs/images-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup8" {
    name = "/ecs/matches-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup9" {
    name = "/ecs/players-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup10" {
    name = "RDSOSMetrics"
    retention_in_days = 30
}

resource "aws_cloudwatch_log_group" "LogsLogGroup11" {
    name = "cloudfront-loggroup"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "/aws/codebuild/codebuild"
    name = "15ce4b85-e827-49ac-b710-3763e064f991"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream2" {
    log_group_name = "/aws/codebuild/codebuild"
    name = "9c1b7af5-896e-4977-8a4b-baab9436e53f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream3" {
    log_group_name = "/aws/codebuild/codebuild"
    name = "d3d6ff94-d56a-4a45-a94b-e5b37c2aefb9"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream4" {
    log_group_name = "/aws/rds/instance/riotgames-db-1-ro/error"
    name = "riotgames-db-1-ro"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream5" {
    log_group_name = "/aws/rds/instance/riotgames-db-1/error"
    name = "riotgames-db-1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream6" {
    log_group_name = "/aws/rds/proxy/proxy-1734138353499-riotgames-db-1"
    name = "proxy-1734138353499-riotgames-db-1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream7" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/239c322c3fdf4b64a190c40760a2542a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream8" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/2468b397148e43a0bf5f3ad04c811435"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream9" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/46b6b6a99e9b4c3cbfb324850496fa34"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream10" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/772bb18584fa48b1a0f4cd56e7f62312"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream11" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/99d37c9b18194f36b451df57a4cbba0b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream12" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/a9b255b1b84145dbb6bba7ea67363e42"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream13" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/b1883a16f56841ca9b149136f4df050e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream14" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/cbb8f3bb50134882b6dfce0a1f6207fe"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream15" {
    log_group_name = "/ecs/admin-task"
    name = "ecs/admin/cfacd9e364b345778248b0b444efbcf6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream16" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/08ffb6e0cbf64d06bfa380f67f7c9fcc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream17" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/0b87f5708d8544d6abf3a16a3e0b4cf8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream18" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/0f8083ff2d2741e2964a171a43be7619"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream19" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/19a700dc4fcb4b709e56cc9595725c15"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream20" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/1a7358be57494b30a94f23da163328b5"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream21" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/28a7ab739cf545b8aa3f183a0042fc54"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream22" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/291e3aa57ba74cc6964bb84211d6c1aa"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream23" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/3084fbba4a5e4764bd78b8e3cc960bde"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream24" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/321db7a755db412093758505db4f98bd"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream25" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/42383f106caf4e54b09a77d80d7a167c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream26" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/42cee71837ac48159d61c929ebd1f2a0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream27" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/645e7e6465d0499b8060ec6a6ed0a59f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream28" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/6b4961b11c0b404abc32c87fdbd1f30f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream29" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/6ed079cb33b446b6baf27e1ba94e6315"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream30" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/7133036d38024d07b5b00166bcaf5800"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream31" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/71a90f30f7e441799efcc0310d23ab4e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream32" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/7a5645caa40643e691618b121f3a44e4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream33" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/9467bd896672448fbe0924330c093e78"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream34" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/949e64e08d51434dbba48acf55d402ef"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream35" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/9bf7831d44844a04b46a1d279369674b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream36" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/a977afa871ad40b78b541de047d5a0c3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream37" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/aa66f7e0026845ed8c6e443308443ed3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream38" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/bb440a400d514813b56368a6a014f0d0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream39" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/bde9e6d745cc49f7a5c7e44ef8afbd55"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream40" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/dfb598c62c4f4f5da103954d8efdafdc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream41" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/e7ea776c032444f78a94057818ff1926"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream42" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/eb3e865110a14785a8867f4e1de730d3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream43" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/f3f3eff57ea5411ea892e8018994560e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream44" {
    log_group_name = "/ecs/champions-task"
    name = "ecs/champions/fac9a724c7cb41afa7cba4bf9647f1ed"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream45" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/07ec1588133c49099436393ac3cb2628"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream46" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/094a00cf016640ab8558a15768180617"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream47" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/0aac7e7b6e1b44bea5ca3c72c099f2de"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream48" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/10e867eefb5047b6a2decde7e2902325"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream49" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/144e0a63527a4863ab9682df61c4fcdf"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream50" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/199bfe5b7d404ddc9f7996c36a60d40c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream51" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/1cc8680e344849b58fd7ee492b01fbae"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream52" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/1cf876bc603943a886a974d87ab97bf3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream53" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/209ee6bed0c3444fad9f263c50d87ec9"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream54" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/232831e5b09d473d8978cb0670a4588f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream55" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/2b8278b870534b0c8a86f1c26f07a2c0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream56" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/38c533c75f6c4beca70a518e030a6876"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream57" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/4a2ffd67b7b34c71b61870ee98b8e239"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream58" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/5c5577fc7c084b1e920ba24da00b5655"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream59" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/61835e105d85489ca55346ec46ddb946"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream60" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/69267d5be21c4934bdb479821734927e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream61" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/81ba11fb652540bd97788abd38195f03"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream62" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/988027adad9e4a87b625432e77542822"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream63" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/9a5c4a1d154e4966a32e9780f1131717"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream64" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/9de10ad68ead44cbadabb907cdbbb084"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream65" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/aaabfe32d22e4592a3b449acdbcdd87d"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream66" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/addbc2e7acdc40708f3258e5ac566383"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream67" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/bff9986fd1c84cdf8db862355d36ade0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream68" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/ce6a016d72c4477e8369819f08fd5898"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream69" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/def9339a27ec473c9d52b6d315f8b288"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream70" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/e9a367a7b1bf40ebabd3dce42f5f3fe8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream71" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/f26ed10d2c23413b937b92c3b7d22180"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream72" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/f6ab2d46171d44f6a15eb9e324a813a1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream73" {
    log_group_name = "/ecs/images-task"
    name = "ecs/images/f795f1c4b7ca482cad8caca411086231"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream74" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/13e4a39a4add4b6badb76c83d4c39298"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream75" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/1fc1505dcc5b4fa5ac43cb39cfac267b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream76" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/37408ed676844544b15b5e52d1780d5f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream77" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/42e0134322f34de8b8411387e388c80c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream78" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/4ceb4368cfc14335848e6eb0d6420b07"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream79" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/4f0260e5166a4d37a63e0598666058c1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream80" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/56c0736ab4264a5d991e9bfa5b3447de"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream81" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/5c79ff98f91f406da7244a2a4466bcdc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream82" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/5f802d1ed50b44969d1ac62843f8d8f3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream83" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/6734b114866148259bba838c0f0abee4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream84" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/68d3e602dea54fffa8fcf8b066ad50f1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream85" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/714fdd2678d442648901af1d639b2f5a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream86" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/76e6ce748df04daf82862a3adad35d52"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream87" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/7a167e3be0e84c71b64d8826ea492a38"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream88" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/8077e604e2b643748bdfddeebbcaa77f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream89" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/82f0b8a557c04c368bd139f949751a06"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream90" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/846d3f6d96cf4ad0a5b79de49f051d34"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream91" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/8d33c088432d4b2b919d135f8f1ec2b6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream92" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/994aeb2f69f44e8c8ed63efb193abded"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream93" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/9988598da0ed490abd7bdba8c912caaa"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream94" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/aa16d98ea59c400b9b6c0394a2a66676"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream95" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/abbae1fdcaf743c18219d3f012782755"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream96" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/becaaaee35c34d09af651ede596fd3b5"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream97" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/c85ca6549e364b0b80dc36f2f07778c5"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream98" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/cc9cd76e0f3d42f59f3b4ae57e03fe37"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream99" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/cff5a99dd2044ebb9e9fdad105703a70"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream100" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/d253919c928d459dbd2921dcbf91f7e6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream101" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/dd0587b91a714710945a5f442d213cf8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream102" {
    log_group_name = "/ecs/matches-task"
    name = "ecs/matches/fb72861ebf3847d9976f3bdded8a85af"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream103" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/0bd0250b510b447c8687a7c4a79a6d04"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream104" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/0f2dc68863594eeabdcd89a7d4d68310"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream105" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/13e4dba0ec314672ae0cf2f6af301cb6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream106" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/14d0ed82937141baaddad262dbf7b04a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream107" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/2223de28dc9848c282395ac92b7fa85a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream108" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/2800bdc5e58e4a63a4145893b68c2eaf"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream109" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/34ba90c9986a4cee97fdda38565a6ec4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream110" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/403beaacee1b49558dc87a913db4d4f4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream111" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/5a4aa56f515c4992bb9f517bfc4da5bb"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream112" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/61a79dbd891b4c03842eb508756f5439"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream113" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/64052378ebd2486389325a2099871973"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream114" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/643bd7cd51f04f31bad8ffaac33310a1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream115" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/70284aad93c8490cb1453b91efb44a59"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream116" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/72819f8b7c72451eaf6deb68c765b5ae"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream117" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/756dc8568b6c4256a8ffc995eeab70a6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream118" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/759d97cd2b884bbe8ff7da4a78d71d5f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream119" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/7a676a380d4f493f8ecaa1bcf1e354e2"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream120" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/867a28fba3d547e18dd9f0a8e379c658"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream121" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/87c9e74a2f844e74a873feece9038749"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream122" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/90d079de099e451db226baf426be3ea0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream123" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/92db709a42f64f7fa80aa32171f27a4e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream124" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/99f9e1467127491397776b127f3697cf"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream125" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/cd8b4ff9f2b74b7387b2bc7653cdd634"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream126" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/ddb7a4f9d0234616b5f7bea073cdff2f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream127" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/e8866ba165294ddab44b4dc687e3b934"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream128" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/f302bb985a2f40e681c4197e77261fbd"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream129" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/f90613b35c9249a3a2b3c66fcfa181f8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream130" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/f906d8ab09f94e12a7be5cc5b517a1e7"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream131" {
    log_group_name = "/ecs/players-task"
    name = "ecs/players/f9a72fe3e43b49c6ac46bd748c810416"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream132" {
    log_group_name = "RDSOSMetrics"
    name = "db-YKLLNPM5VP3FJ3EOZ3CDGHWOME"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream133" {
    log_group_name = "RDSOSMetrics"
    name = "db-YKLLNPM5VP3FJ3EOZ3CDGHWOME-secondary"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream134" {
    log_group_name = "cloudfront-loggroup"
    name = "CloudFront_E2K8GVPWOYTV6"
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "riotgames-application-repo"
}

resource "aws_ecs_cluster" "ECSCluster" {
    name = "riot-games-cluster"
}

resource "aws_ecs_service" "ECSService" {
    name = "images-svc2"
    cluster = "arn:aws:ecs:us-east-1:950274644703:cluster/riot-games-cluster"
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-1:950274644703:service/srv-aklpqz6itjfbm5nk"
    }
    desired_count = 2
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition3.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::950274644703:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        subnets = [
            "subnet-0ed83f8d0a5aee854",
            "subnet-01a6cf3e86c0e6af2"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService2" {
    name = "players-svc"
    cluster = "arn:aws:ecs:us-east-1:950274644703:cluster/riot-games-cluster"
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-1:950274644703:service/srv-av6tdzlp5wmgqijs"
    }
    desired_count = 2
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::950274644703:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        subnets = [
            "subnet-0ed83f8d0a5aee854",
            "subnet-01a6cf3e86c0e6af2"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService3" {
    name = "admin-svc"
    cluster = "arn:aws:ecs:us-east-1:950274644703:cluster/riot-games-cluster"
    load_balancer {
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:950274644703:targetgroup/admin-tg1/9b5641b080bf69e1"
        container_name = "admin"
        container_port = 8501
    }
    desired_count = 2
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition5.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::950274644703:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup.id}"
        ]
        subnets = [
            "subnet-0ed83f8d0a5aee854",
            "subnet-01a6cf3e86c0e6af2"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService4" {
    name = "champions-svc2"
    cluster = "arn:aws:ecs:us-east-1:950274644703:cluster/riot-games-cluster"
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-1:950274644703:service/srv-m2qcy5tx62jggzlf"
    }
    desired_count = 2
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition4.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::950274644703:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        subnets = [
            "subnet-0ed83f8d0a5aee854",
            "subnet-01a6cf3e86c0e6af2"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService5" {
    name = "matches-svc2"
    cluster = "arn:aws:ecs:us-east-1:950274644703:cluster/riot-games-cluster"
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-1:950274644703:service/srv-pn367ugc5wp2dxnr"
    }
    desired_count = 2
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition2.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::950274644703:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        subnets = [
            "subnet-0ed83f8d0a5aee854",
            "subnet-01a6cf3e86c0e6af2"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition" {
    container_definitions = "[{\"name\":\"players\",\"image\":\"950274644703.dkr.ecr.us-east-1.amazonaws.com/riotgames-application-repo:players\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"players-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/players-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "players-task"
    execution_role_arn = "${aws_iam_role.IAMRole4.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition2" {
    container_definitions = "[{\"name\":\"matches\",\"image\":\"950274644703.dkr.ecr.us-east-1.amazonaws.com/riotgames-application-repo:matches\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"matches-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/matches-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "matches-task"
    execution_role_arn = "${aws_iam_role.IAMRole4.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition3" {
    container_definitions = "[{\"name\":\"images\",\"image\":\"950274644703.dkr.ecr.us-east-1.amazonaws.com/riotgames-application-repo:images\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"images-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/images-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "images-task"
    execution_role_arn = "${aws_iam_role.IAMRole4.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition4" {
    container_definitions = "[{\"name\":\"champions\",\"image\":\"950274644703.dkr.ecr.us-east-1.amazonaws.com/riotgames-application-repo:champions\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"champions-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/champions-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "champions-task"
    execution_role_arn = "${aws_iam_role.IAMRole4.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition5" {
    container_definitions = "[{\"name\":\"admin\",\"image\":\"950274644703.dkr.ecr.us-east-1.amazonaws.com/riotgames-application-repo:admin\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8501,\"hostPort\":8501,\"protocol\":\"tcp\",\"name\":\"admin-8000-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/admin-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "admin-task"
    execution_role_arn = "${aws_iam_role.IAMRole4.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_neptune_subnet_group" "NeptuneDBSubnetGroup" {
    name = "mysql-db-subnet-group"
    description = "mysql-db-subnet-group"
    subnet_ids = [
        "subnet-00c0efcb0614db99c",
        "subnet-08436219347ee30dd"
    ]
}

resource "aws_docdb_subnet_group" "DocDBDBSubnetGroup" {
    name = "mysql-db-subnet-group"
    description = "mysql-db-subnet-group"
    subnet_ids = [
        "subnet-00c0efcb0614db99c",
        "subnet-08436219347ee30dd"
    ]
}

resource "aws_service_discovery_http_namespace" "ServiceDiscoveryHttpNamespace" {
    name = "riot-games-cluster"
}

resource "aws_service_discovery_http_namespace" "ServiceDiscoveryHttpNamespace2" {
    name = "champions"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace" {
    name = "matches"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace2" {
    name = "champions"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace3" {
    name = "images"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace4" {
    name = "players"
}

resource "aws_service_discovery_service" "ServiceDiscoveryService" {
    name = "matches"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-7qmcglzyppsfaqd4"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_service_discovery_service" "ServiceDiscoveryService2" {
    name = "players"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-quocciq36fg7phsu"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_service_discovery_service" "ServiceDiscoveryService3" {
    name = "images"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-5z3iv6uanb4s3wbi"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_service_discovery_service" "ServiceDiscoveryService4" {
    name = "champions"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-57xojxxk2z2efrnn"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_secretsmanager_secret" "SecretsManagerSecret" {
    name = "rds-db-credentials/db-YKLLNPM5VP3FJ3EOZ3CDGHWOME/root/1734138350766"
    description = "RDS database root credentials for riotgames-db-1"
}

resource "aws_secretsmanager_secret_version" "SecretsManagerSecretVersion" {
    secret_id = "${aws_secretsmanager_secret.SecretsManagerSecret.id}"
    secret_string = "{\"dbInstanceIdentifier\":\"riotgames-db-1\",\"engine\":\"mysql\",\"resourceId\":\"db-YKLLNPM5VP3FJ3EOZ3CDGHWOME\",\"username\":\"root\",\"password\":\"Skill53##\"}"
}
