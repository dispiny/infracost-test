terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_iam_user" "IAMUser" {
    path = "/"
    name = "admin"
    tags = {}
}

resource "aws_iam_role" "IAMRole" {
    path = "/"
    name = "bastion-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole2" {
    path = "/"
    name = "ecsTaskExecutionRole"
    assume_role_policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
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

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
    aws_service_name = "opensearchservice.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "eks-nodegroup.amazonaws.com"
    description = "This policy allows Amazon EKS to create and manage Nodegroups"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "eks-fargate.amazonaws.com"
    description = "This policy grants necessary permissions to Amazon EKS to run fargate tasks"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "macie.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole5" {
    aws_service_name = "ops.apigateway.amazonaws.com"
    description = "The Service Linked Role is used by Amazon API Gateway."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole6" {
    aws_service_name = "eks.amazonaws.com"
    description = "Allows Amazon EKS to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole7" {
    aws_service_name = "ecs.application-autoscaling.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole8" {
    aws_service_name = "apprunner.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole9" {
    aws_service_name = "autoscaling.amazonaws.com"
    description = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole10" {
    aws_service_name = "mgn.amazonaws.com"
    description = "Access role for the mgn.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole11" {
    aws_service_name = "clientvpn.amazonaws.com"
    description = "Service Linked Role for Client VPN"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole12" {
    aws_service_name = "clientvpn-connections.amazonaws.com"
    description = "Service Linked Role for Client VPN connections"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole13" {
    aws_service_name = "compute-optimizer.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole14" {
    aws_service_name = "vpcorigin.cloudfront.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole15" {
    aws_service_name = "application-signals.cloudwatch.amazonaws.com"
    description = "CloudWatch ApplicationSignals creates Service Linked Role to collect signals from other relevant AWS services."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole16" {
    aws_service_name = "devops-guru.amazonaws.com"
    description = "AWS service role used to execute actions on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole17" {
    aws_service_name = "ec2-instance-connect.amazonaws.com"
    description = "The Service Linked Role used by EC2 Instance Connect Endpoint."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole18" {
    aws_service_name = "spot.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole19" {
    aws_service_name = "replication.ecr.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole20" {
    aws_service_name = "ecs.amazonaws.com"
    description = "Role to enable Amazon ECS to manage your cluster."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole21" {
    aws_service_name = "elasticache.amazonaws.com"
    description = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole22" {
    aws_service_name = "elasticloadbalancing.amazonaws.com"
    description = "Allows ELB to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole23" {
    aws_service_name = "elasticmapreduce.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole24" {
    aws_service_name = "globalaccelerator.amazonaws.com"
    description = "Allows Global Accelerator to call AWS services on customer's behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole25" {
    aws_service_name = "ipam.amazonaws.com"
    description = "The Service Linked Role used by AWS IPAM."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole26" {
    aws_service_name = "internetmonitor.amazonaws.com"
    description = "A service-linked role required for CloudWatch Internet Monitor to access your resources."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole27" {
    aws_service_name = "organizations.amazonaws.com"
    description = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole28" {
    aws_service_name = "kafka.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole29" {
    aws_service_name = "rds.amazonaws.com"
    description = "Allows Amazon RDS to manage AWS resources on your behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole30" {
    aws_service_name = "route53resolver.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole31" {
    aws_service_name = "servicequotas.amazonaws.com"
    description = "A service-linked role is required for Service Quotas to access your service limits."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole32" {
    aws_service_name = "sms-voice.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole33" {
    aws_service_name = "sso.amazonaws.com"
    description = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole34" {
    aws_service_name = "vpc-lattice.amazonaws.com"
    description = "Allows Mercury to call AWS services on behalf of customers"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole35" {
    aws_service_name = "transitgateway.amazonaws.com"
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

resource "aws_kms_key" "KMSKey" {
    is_enabled = false
    description = ""
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "Allow Macie to use the key",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "macie.amazonaws.com"
    },
    "Action" : [ "kms:GenerateDataKey", "kms:Encrypt" ],
    "Resource" : "*"
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey2" {
    is_enabled = false
    description = ""
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "Allow Macie to use the key",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "macie.amazonaws.com"
    },
    "Action" : [ "kms:GenerateDataKey", "kms:Encrypt" ],
    "Resource" : "arn:aws:kms:ap-northeast-2:950274644703:key/c192ed8c-6ada-4bfa-8462-9f232e443c4e",
    "Condition" : {
      "StringEquals" : {
        "aws:SourceAccount" : "950274644703"
      },
      "ArnLike" : {
        "aws:SourceArn" : [ "arn:aws:macie2:ap-northeast-2:950274644703:export-configuration:*", "arn:aws:macie2:ap-northeast-2:950274644703:classification-job/*" ]
      }
    }
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey3" {
    is_enabled = false
    description = ""
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "Allow Macie to use the key",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "macie.amazonaws.com"
    },
    "Action" : [ "kms:GenerateDataKey", "kms:Encrypt" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "aws:SourceAccount" : "950274644703"
      },
      "ArnLike" : {
        "aws:SourceArn" : [ "arn:aws:macie2:ap-northeast-2:950274644703:export-configuration:*", "arn:aws:macie2:ap-northeast-2:950274644703:classification-job/*" ]
      }
    }
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey4" {
    is_enabled = false
    description = "eks-cluster cluster encryption key"
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Statement" : [ {
    "Sid" : "Default",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "KeyAdministration",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:user/admin"
    },
    "Action" : [ "kms:Update*", "kms:UntagResource", "kms:TagResource", "kms:ScheduleKeyDeletion", "kms:Revoke*", "kms:ReplicateKey", "kms:Put*", "kms:List*", "kms:ImportKeyMaterial", "kms:Get*", "kms:Enable*", "kms:Disable*", "kms:Describe*", "kms:Delete*", "kms:Create*", "kms:CancelKeyDeletion" ],
    "Resource" : "*"
  }, {
    "Sid" : "KeyUsage",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "AROA52QGILLPYJ5HNGU4X"
    },
    "Action" : [ "kms:ReEncrypt*", "kms:GenerateDataKey*", "kms:Encrypt", "kms:DescribeKey", "kms:Decrypt" ],
    "Resource" : "*"
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey5" {
    is_enabled = false
    description = "eks-cluster cluster encryption key"
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Statement" : [ {
    "Sid" : "Default",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "KeyAdministration",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:user/admin"
    },
    "Action" : [ "kms:Update*", "kms:UntagResource", "kms:TagResource", "kms:ScheduleKeyDeletion", "kms:Revoke*", "kms:ReplicateKey", "kms:Put*", "kms:List*", "kms:ImportKeyMaterial", "kms:Get*", "kms:Enable*", "kms:Disable*", "kms:Describe*", "kms:Delete*", "kms:Create*", "kms:CancelKeyDeletion" ],
    "Resource" : "*"
  }, {
    "Sid" : "KeyUsage",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "AROA52QGILLP7RGUL64WM"
    },
    "Action" : [ "kms:ReEncrypt*", "kms:GenerateDataKey*", "kms:Encrypt", "kms:DescribeKey", "kms:Decrypt" ],
    "Resource" : "*"
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey6" {
    is_enabled = false
    description = ""
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  } ]
}
EOF
}

resource "aws_kms_key" "KMSKey7" {
    is_enabled = false
    description = ""
    key_usage = "ENCRYPT_DECRYPT"
    policy = <<EOF
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::950274644703:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  } ]
}
EOF
}

resource "aws_vpc" "EC2VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = "vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.5.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.1.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "EC2Subnet3" {
    availability_zone = "ap-northeast-2b"
    cidr_block = "10.0.6.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet4" {
    availability_zone = "ap-northeast-2b"
    cidr_block = "10.0.4.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet5" {
    availability_zone = "ap-northeast-2b"
    cidr_block = "10.0.2.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "EC2Subnet6" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.3.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_eip" "EC2EIP" {
    vpc = true
}

resource "aws_eip" "EC2EIP2" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation" {
    allocation_id = "eipalloc-0ceb2c1751eb31f3f"
    network_interface_id = "eni-0204b1b5403c25b0d"
    private_ip_address = "10.0.2.69"
}

resource "aws_eip" "EC2EIP3" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation2" {
    allocation_id = "eipalloc-0a4b660c35d935600"
    network_interface_id = "eni-00bd385ac74df4296"
    private_ip_address = "10.0.1.5"
}

resource "aws_vpc_dhcp_options" "EC2DHCPOptions" {
    domain_name = "ap-northeast-2.compute.internal"
    tags = {}
}

resource "aws_vpc_dhcp_options_association" "EC2VPCDHCPOptionsAssociation" {
    dhcp_options_id = "dopt-0e768fc9d82d09304"
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "data-rt-a"
    }
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "data-rt-b"
    }
}

resource "aws_route_table" "EC2RouteTable3" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "private-rt-b"
    }
}

resource "aws_route_table" "EC2RouteTable4" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "public-rt"
    }
}

resource "aws_route_table" "EC2RouteTable5" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "private-rt-a"
    }
}

resource "aws_route_table" "EC2RouteTable6" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-014e83c31b3f9721a"
    route_table_id = "rtb-08d18bceeaa6db6fb"
}

resource "aws_route" "EC2Route2" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-00def60b16d224644"
    route_table_id = "rtb-053cda67543b4fb13"
}

resource "aws_route" "EC2Route3" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-078672fd0e15d79a4"
    route_table_id = "rtb-0744124f8be8d8c81"
}

resource "aws_nat_gateway" "EC2NatGateway" {
    subnet_id = "subnet-0b57c27bbd700b852"
    tags = {
        Name = "natgw-b"
    }
    allocation_id = "eipalloc-0ceb2c1751eb31f3f"
}

resource "aws_nat_gateway" "EC2NatGateway2" {
    subnet_id = "subnet-04fe16bb85262390c"
    tags = {
        Name = "natgw-a"
    }
    allocation_id = "eipalloc-0a4b660c35d935600"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation" {
    route_table_id = "rtb-046b09366e7a9e05a"
    subnet_id = "subnet-07da06455968bdbff"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation2" {
    route_table_id = "rtb-01a222711f72705b9"
    subnet_id = "subnet-018a786148b8c1c3e"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation3" {
    route_table_id = "rtb-08d18bceeaa6db6fb"
    subnet_id = "subnet-0f18f9da55d32d316"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation4" {
    route_table_id = "rtb-053cda67543b4fb13"
    subnet_id = "subnet-04fe16bb85262390c"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation5" {
    route_table_id = "rtb-053cda67543b4fb13"
    subnet_id = "subnet-0b57c27bbd700b852"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation6" {
    route_table_id = "rtb-0744124f8be8d8c81"
    subnet_id = "subnet-07d852ff9cf34ac7f"
}

resource "aws_route53_zone" "Route53HostedZone" {
    name = "gongju.click."
}

resource "aws_route53_zone" "Route53HostedZone2" {
    name = "managed-user."
}

resource "aws_route53_zone" "Route53HostedZone3" {
    name = "get-user."
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
    name = "a.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "3.36.164.251"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet4" {
    name = "b.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "43.200.248.46"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet5" {
    name = "c.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "43.202.85.43"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet6" {
    name = "cert.gongju.click."
    type = "A"
    alias {
        name = "s3-website.ap-northeast-2.amazonaws.com."
        zone_id = "Z3W03O7B5YMIYP"
        evaluate_target_health = true
    }
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet7" {
    name = "subh.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "35.233.201.154"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet8" {
    name = "subj.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "35.233.201.154"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet9" {
    name = "subl.gongju.click."
    type = "A"
    ttl = 300
    records = [
        "35.233.201.154"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet10" {
    name = "www.gongju.click."
    type = "CNAME"
    ttl = 60
    records = [
        "dev-alb-843353663.ap-northeast-2.elb.amazonaws.com"
    ]
    zone_id = "Z03492761PQ0V20I39M40"
}

resource "aws_route53_record" "Route53RecordSet11" {
    name = "managed-user."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z073010830YSMNSXYAAJB"
}

resource "aws_route53_record" "Route53RecordSet12" {
    name = "managed-user."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z073010830YSMNSXYAAJB"
}

resource "aws_route53_record" "Route53RecordSet13" {
    name = "get-user."
    type = "NS"
    ttl = 172800
    records = [
        "ns-1536.awsdns-00.co.uk.",
        "ns-0.awsdns-00.com.",
        "ns-1024.awsdns-00.org.",
        "ns-512.awsdns-00.net."
    ]
    zone_id = "Z0371221HYK6EU7TFCWK"
}

resource "aws_route53_record" "Route53RecordSet14" {
    name = "get-user."
    type = "SOA"
    ttl = 15
    records = [
        "ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z0371221HYK6EU7TFCWK"
}

resource "aws_instance" "EC2Instance" {
    ami = "ami-055811530249cf67e"
    instance_type = "t3.medium"
    key_name = "bastion_key.pem"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-04fe16bb85262390c"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole.name}"
    tags = {
        Name = "managed-user"
    }
}

resource "aws_instance" "EC2Instance2" {
    ami = "ami-055811530249cf67e"
    instance_type = "t3.medium"
    key_name = "bastion_key.pem"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-04fe16bb85262390c"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole.name}"
    tags = {
        Name = "get-user"
    }
}

resource "aws_instance" "EC2Instance3" {
    ami = "ami-0c9009fe8aae2167b"
    instance_type = "t3.medium"
    key_name = "bastion_key.pem"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-04fe16bb85262390c"
    ebs_optimized = false
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 2
        volume_type = "gp3"
        delete_on_termination = true
    }
    user_data = "IyBJbnNlcnQgVXNlciBkYXRhDQojIS9iaW4vYmFzaA0KeXVtIGluc3RhbGwgLXkgZG9ja2VyDQp1c2VybW9kIC1hIC1HIGRvY2tlciBlYzItdXNlcg0Kc3lzdGVtY3RsIGVuYWJsZSAtLW5vdyBkb2NrZXINCmRuZiBpbnN0YWxsIG1hcmlhZGIxMDUNCnl1bSBpbnN0YWxsIC15IHB5dGhvbi1waXANCnBpcCBpbnN0YWxsIGZsYXNrDQpta2RpciBhcHANCg=="
    iam_instance_profile = "${aws_iam_role.IAMRole.name}"
    tags = {
        Name = "bastion"
    }
}

resource "aws_instance" "EC2Instance4" {
    ami = "ami-055811530249cf67e"
    instance_type = "t3.medium"
    key_name = "bastion_key.pem"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-04fe16bb85262390c"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole.name}"
    tags = {
        Name = "server-check"
    }
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer" {
    name = "health-alb"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-04fe16bb85262390c",
        "subnet-0b57c27bbd700b852"
    ]
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
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

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer2" {
    name = "dev-alb"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-04fe16bb85262390c",
        "subnet-0b57c27bbd700b852"
    ]
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
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

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer3" {
    name = "manged-health"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-04fe16bb85262390c",
        "subnet-0b57c27bbd700b852"
    ]
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
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
    load_balancer_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:loadbalancer/app/dev-alb/c9e39d8d50969afb"
    port = 80
    protocol = "HTTP"
    default_action {
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-server-check-tg/af95750490fe9426"
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener2" {
    load_balancer_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:loadbalancer/app/health-alb/df2ab2b6cae4e459"
    port = 80
    protocol = "HTTP"
    default_action {
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/healthcheck-tg/947b5efae23b800e"
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener3" {
    load_balancer_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:loadbalancer/app/manged-health/508b25ca21eafc63"
    port = 80
    protocol = "HTTP"
    default_action {
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/managed-health-tg/1573fcc89b30ffb0"
        type = "forward"
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule" {
    priority = "1"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:listener/app/dev-alb/c9e39d8d50969afb/07df641f4c701564"
    condition {
        path_pattern {
            values = [
                "/v1/employee",
                "/v1/employee/*"
            ]
        }
        http_request_method {
            values = [
                "GET",
                "HEAD"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-user-tg/483fe4ecce8e4cad"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-user-tg/483fe4ecce8e4cad"
                    weight = 1
                }
            ]
            stickiness {
                duration = 3600
                enabled = false
            }
        }
    }
    tags = 
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule2" {
    priority = "2"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:listener/app/dev-alb/c9e39d8d50969afb/07df641f4c701564"
    condition {
        http_request_method {
            values = [
                "POST"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-managed-user-tg/51c9bf6377198b27"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-managed-user-tg/51c9bf6377198b27"
                    weight = 1
                }
            ]
            stickiness {
                duration = 3600
                enabled = false
            }
        }
    }
    tags = 
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule3" {
    priority = "3"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:listener/app/dev-alb/c9e39d8d50969afb/07df641f4c701564"
    condition {
        http_request_method {
            values = [
                "GET",
                "HEAD"
            ]
        }
        path_pattern {
            values = [
                "/v1/health"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-server-check-tg/af95750490fe9426"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:950274644703:targetgroup/dev-server-check-tg/af95750490fe9426"
                    weight = 1
                }
            ]
            stickiness {
                duration = 3600
                enabled = false
            }
        }
    }
    tags = 
}

resource "aws_security_group" "EC2SecurityGroup" {
    description = "managed-user-sg"
    name = "managed-user-sg"
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
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup6.id}"
        ]
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
}

resource "aws_security_group" "EC2SecurityGroup2" {
    description = "Managed by Terraform"
    name = "bastion-sg"
    tags = {
        Name = "bastion-sg"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
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

resource "aws_security_group" "EC2SecurityGroup3" {
    description = "get-user-sg"
    name = "get-user-sg"
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
    egress {
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
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
}

resource "aws_security_group" "EC2SecurityGroup4" {
    description = "server-check-sg"
    name = "server-check-sg"
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
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup.id}"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup6.id}"
        ]
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
}

resource "aws_security_group" "EC2SecurityGroup5" {
    description = "alb-sg"
    name = "alb-sg"
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
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup.id}"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup4.id}"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        from_port = 8080
        protocol = "tcp"
        to_port = 8080
    }
}

resource "aws_security_group" "EC2SecurityGroup6" {
    description = "mysql-sg"
    name = "mysql-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
}

resource "aws_security_group" "EC2SecurityGroup7" {
    description = "launch-wizard-1 created 2025-01-25T05:29:37.772Z"
    name = "launch-wizard-1"
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
    egress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
}

resource "aws_launch_template" "EC2LaunchTemplate" {
    name = "get-user"
    iam_instance_profile {
        arn = "arn:aws:iam::950274644703:instance-profile/bastion-role"
    }
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
    key_name = "bastion_key.pem"
    image_id = "ami-0352806f937cc79e6"
    instance_type = "t3.micro"
}

resource "aws_launch_template" "EC2LaunchTemplate2" {
    name = "managed-user"
    iam_instance_profile {
        arn = "arn:aws:iam::950274644703:instance-profile/bastion-role"
    }
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup.id}"
    ]
    key_name = "bastion_key.pem"
    image_id = "ami-0ad583e10f7e767e5"
    instance_type = "t3.micro"
}

resource "aws_launch_template" "EC2LaunchTemplate3" {
    name = "server-check"
    iam_instance_profile {
        arn = "arn:aws:iam::950274644703:instance-profile/bastion-role"
    }
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
    key_name = "bastion_key.pem"
    image_id = "ami-01e1e204ac052a33f"
    instance_type = "t3.micro"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup" {
    health_check {
        interval = 300
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "dev-server-check-tg"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup2" {
    health_check {
        interval = 300
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 4
        unhealthy_threshold = 2
        healthy_threshold = 2
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "managed-health-tg"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup3" {
    health_check {
        interval = 300
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "dev-managed-user-tg"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup4" {
    health_check {
        interval = 300
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "healthcheck-tg"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup5" {
    health_check {
        interval = 300
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "dev-user-tg"
}

resource "aws_ebs_volume" "EC2Volume" {
    availability_zone = "ap-northeast-2a"
    encrypted = false
    size = 8
    type = "gp3"
    snapshot_id = "snap-041372d701259bac4"
    tags = {}
}

resource "aws_ebs_volume" "EC2Volume2" {
    availability_zone = "ap-northeast-2a"
    encrypted = false
    size = 2
    type = "gp3"
    snapshot_id = "snap-0c3a092f1b4d47a11"
    tags = {}
}

resource "aws_ebs_volume" "EC2Volume3" {
    availability_zone = "ap-northeast-2a"
    encrypted = false
    size = 8
    type = "gp3"
    snapshot_id = "snap-041372d701259bac4"
    tags = {}
}

resource "aws_ebs_volume" "EC2Volume4" {
    availability_zone = "ap-northeast-2a"
    encrypted = false
    size = 8
    type = "gp3"
    snapshot_id = "snap-041372d701259bac4"
    tags = {}
}

resource "aws_volume_attachment" "EC2VolumeAttachment" {
    volume_id = "vol-03b759b6446b41f13"
    instance_id = "i-0bc26f60cfa8091b0"
    device_name = "/dev/xvda"
}

resource "aws_volume_attachment" "EC2VolumeAttachment2" {
    volume_id = "vol-092ad339f25191cc7"
    instance_id = "i-0ca0b8cd2b08c415f"
    device_name = "/dev/xvda"
}

resource "aws_volume_attachment" "EC2VolumeAttachment3" {
    volume_id = "vol-0e774144c2eb559fa"
    instance_id = "i-0ce26fcfad2b70ee2"
    device_name = "/dev/xvda"
}

resource "aws_volume_attachment" "EC2VolumeAttachment4" {
    volume_id = "vol-020f3c58fac0ba3dc"
    instance_id = "i-05d949b2e6fa33f3b"
    device_name = "/dev/xvda"
}

resource "aws_network_interface" "EC2NetworkInterface" {
    description = "ELB app/dev-alb/c9e39d8d50969afb"
    private_ips = [
        "10.0.2.184"
    ]
    subnet_id = "subnet-0b57c27bbd700b852"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface2" {
    description = "ELB app/manged-health/508b25ca21eafc63"
    private_ips = [
        "10.0.2.169"
    ]
    subnet_id = "subnet-0b57c27bbd700b852"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface3" {
    description = "Interface for NAT Gateway nat-014e83c31b3f9721a"
    private_ips = [
        "10.0.2.69"
    ]
    subnet_id = "subnet-0b57c27bbd700b852"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface4" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.6.192"
    ]
    subnet_id = "subnet-018a786148b8c1c3e"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup6.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface5" {
    description = "ELB app/health-alb/df2ab2b6cae4e459"
    private_ips = [
        "10.0.2.105"
    ]
    subnet_id = "subnet-0b57c27bbd700b852"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface6" {
    description = ""
    private_ips = [
        "10.0.1.138"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface7" {
    description = "Interface for NAT Gateway nat-078672fd0e15d79a4"
    private_ips = [
        "10.0.1.5"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface8" {
    description = ""
    private_ips = [
        "10.0.1.33"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface9" {
    description = "ELB app/dev-alb/c9e39d8d50969afb"
    private_ips = [
        "10.0.1.87"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface10" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.5.53"
    ]
    subnet_id = "subnet-07da06455968bdbff"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup6.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface11" {
    description = ""
    private_ips = [
        "10.0.1.191"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface12" {
    description = ""
    private_ips = [
        "10.0.1.233"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface13" {
    description = "ELB app/health-alb/df2ab2b6cae4e459"
    private_ips = [
        "10.0.1.6"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface14" {
    description = "ELB app/manged-health/508b25ca21eafc63"
    private_ips = [
        "10.0.1.78"
    ]
    subnet_id = "subnet-04fe16bb85262390c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment" {
    network_interface_id = "eni-08fc249d89ac0ea94"
    device_index = 0
    instance_id = "i-05d949b2e6fa33f3b"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment2" {
    network_interface_id = "eni-04c4bf8053ac42cde"
    device_index = 0
    instance_id = "i-0ca0b8cd2b08c415f"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment3" {
    network_interface_id = "eni-030f47cfc051d2456"
    device_index = 0
    instance_id = "i-0ce26fcfad2b70ee2"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment4" {
    network_interface_id = "eni-07a23008521434021"
    device_index = 0
    instance_id = "i-0bc26f60cfa8091b0"
}

resource "aws_key_pair" "EC2KeyPair" {
    public_key = "REPLACEME"
    key_name = "bastion_key.pem"
}

resource "aws_db_instance" "RDSDBInstance" {
    identifier = "rds-instance"
    allocated_storage = 50
    instance_class = "db.t3.micro"
    engine = "mysql"
    username = "admin"
    password = "REPLACEME"
    backup_window = "19:02-19:32"
    backup_retention_period = 7
    availability_zone = "ap-northeast-2b"
    maintenance_window = "thu:19:44-thu:20:14"
    multi_az = true
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    license_model = "general-public-license"
    publicly_accessible = false
    storage_type = "gp2"
    port = 3306
    storage_encrypted = true
    kms_key_id = "arn:aws:kms:ap-northeast-2:950274644703:key/0d94e5cc-5081-4bcf-82a8-3be0817c69af"
    copy_tags_to_snapshot = true
    monitoring_interval = 60
    iam_database_authentication_enabled = false
    deletion_protection = true
    db_subnet_group_name = "mysql-subnet-group"
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup6.id}"
    ]
    max_allocated_storage = 1000
}

resource "aws_db_subnet_group" "RDSDBSubnetGroup" {
    description = "mysql-subnet-group"
    name = "mysql-subnet-group"
    subnet_ids = [
        "subnet-07da06455968bdbff",
        "subnet-018a786148b8c1c3e"
    ]
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "LogsLogGroup2" {
    name = "/ecs/ecs-aws-otel-sidecar-collector"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup3" {
    name = "/ecs/get-user-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup4" {
    name = "/ecs/managed-user-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup5" {
    name = "/ecs/server-check-task"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup6" {
    name = "RDSOSMetrics"
    retention_in_days = 30
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "ClusterTelemetry-ecs-cluster"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream2" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-1161"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream3" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-1291"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream4" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-140"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream5" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-1544"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream6" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-2080"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream7" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-226"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream8" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-2394"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream9" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-4237"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream10" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-428"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream11" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-4609"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream12" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-4669"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream13" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-4840"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream14" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-5635"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream15" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-585"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream16" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-6336"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream17" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-6350"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream18" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-6790"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream19" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-7063"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream20" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-762"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream21" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-7858"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream22" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-8391"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream23" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "FargateTelemetry-9361"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream24" {
    log_group_name = "/aws/ecs/containerinsights/ecs-cluster/performance"
    name = "ServiceTelemetry-get-user-svc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream25" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/28ebf01170574060a2f7a8349d16ff9f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream26" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/33566b14e7914d1182c3b69fee622a1b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream27" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/481006d972a64f99a47d31da528b714a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream28" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/6b581aa2cd514031ad62ab85cf0fa760"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream29" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/6dfc028ffa54403898543cbafe92e24d"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream30" {
    log_group_name = "/ecs/get-user-task"
    name = "ecs/get-user/725b8de417594f44ba3fe6e13a4b972a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream31" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/28ebf01170574060a2f7a8349d16ff9f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream32" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/33566b14e7914d1182c3b69fee622a1b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream33" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/481006d972a64f99a47d31da528b714a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream34" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/6b581aa2cd514031ad62ab85cf0fa760"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream35" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/6dfc028ffa54403898543cbafe92e24d"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream36" {
    log_group_name = "/ecs/ecs-aws-otel-sidecar-collector"
    name = "ecs/aws-otel-collector/725b8de417594f44ba3fe6e13a4b972a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream37" {
    log_group_name = "RDSOSMetrics"
    name = "db-PECFHI6S5OLUPGMPN64SCSGPLE"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream38" {
    log_group_name = "RDSOSMetrics"
    name = "db-PECFHI6S5OLUPGMPN64SCSGPLE-secondary"
}

resource "aws_cloudfront_distribution" "CloudFrontDistribution" {
    origin {
        custom_origin_config {
            http_port = 80
            https_port = 443
            origin_keepalive_timeout = 5
            origin_protocol_policy = "http-only"
            origin_read_timeout = 30
            origin_ssl_protocols = [
                "SSLv3",
                "TLSv1",
                "TLSv1.1",
                "TLSv1.2"
            ]
        }
        domain_name = "dev-alb-843353663.ap-northeast-2.elb.amazonaws.com"
        origin_id = "dev-alb-843353663.ap-northeast-2.elb.amazonaws.com"
        
        origin_path = ""
    }
    default_cache_behavior {
        allowed_methods = [
            "HEAD",
            "DELETE",
            "POST",
            "GET",
            "OPTIONS",
            "PUT",
            "PATCH"
        ]
        compress = true
        smooth_streaming  = false
        target_origin_id = "dev-alb-843353663.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    comment = ""
    price_class = "PriceClass_All"
    enabled = false
    viewer_certificate {
        cloudfront_default_certificate = true
        minimum_protocol_version = "TLSv1"
        ssl_support_method = "vip"
    }
    restrictions {
        geo_restriction {
            restriction_type = "none"
        }
    }
    http_version = "http3"
    is_ipv6_enabled = false
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "get-user"
}

resource "aws_ecr_repository" "ECRRepository2" {
    name = "managed-user"
}

resource "aws_ecr_repository" "ECRRepository3" {
    name = "server-check"
}

resource "aws_ecs_cluster" "ECSCluster" {
    name = "ecs-cluster"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition" {
    container_definitions = "[{\"name\":\"server-check\",\"image\":\"950274644703.dkr.ecr.ap-northeast-2.amazonaws.com/server-check:latest\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"server-check-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[{\"name\":\"MYSQL_PASS\",\"value\":\"Skill53##\"},{\"name\":\"MYSQL_PORT\",\"value\":\"3306\"},{\"name\":\"MYSQL_USER\",\"value\":\"admin\"},{\"name\":\"MYSQL_DB\",\"value\":\"app\"},{\"name\":\"MANAGED_ADDRESS\",\"value\":\"managed-user.managed-user\"},{\"name\":\"LISTEN_ADDRESS\",\"value\":\"0.0.0.0\"},{\"name\":\"MYSQL_HOST\",\"value\":\"rds-instance.cde69tvxoswa.ap-northeast-2.rds.amazonaws.com\"},{\"name\":\"GETUSER_ADDRESS\",\"value\":\"get-user.get-user\"}],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/server-check-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]},{\"name\":\"aws-otel-collector\",\"image\":\"public.ecr.aws/aws-observability/aws-otel-collector:v0.42.0\",\"cpu\":0,\"portMappings\":[],\"essential\":true,\"command\":[\"--config=/etc/ecs/ecs-xray.yaml\"],\"environment\":[],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/ecs-aws-otel-sidecar-collector\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"systemControls\":[]}]"
    family = "server-check-task"
    execution_role_arn = "${aws_iam_role.IAMRole2.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition2" {
    container_definitions = "[{\"name\":\"managed-user\",\"image\":\"950274644703.dkr.ecr.ap-northeast-2.amazonaws.com/managed-user:latest\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"managed-user-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[{\"name\":\"MYSQL_PASS\",\"value\":\"Skill53##\"},{\"name\":\"MYSQL_PORT\",\"value\":\"3306\"},{\"name\":\"MYSQL_DB\",\"value\":\"app\"},{\"name\":\"MYSQL_HOST\",\"value\":\"rds-instance.cde69tvxoswa.ap-northeast-2.rds.amazonaws.com\"},{\"name\":\"MYSQL_USER\",\"value\":\"admin\"}],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/managed-user-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://localhost/ || exit 1\"],\"interval\":30,\"timeout\":5,\"retries\":3},\"systemControls\":[]},{\"name\":\"aws-otel-collector\",\"image\":\"public.ecr.aws/aws-observability/aws-otel-collector:v0.42.0\",\"cpu\":0,\"portMappings\":[],\"essential\":true,\"command\":[\"--config=/etc/ecs/ecs-xray.yaml\"],\"environment\":[],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/ecs-aws-otel-sidecar-collector\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"systemControls\":[]}]"
    family = "managed-user-task"
    execution_role_arn = "${aws_iam_role.IAMRole2.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition3" {
    container_definitions = "[{\"name\":\"get-user\",\"image\":\"950274644703.dkr.ecr.ap-northeast-2.amazonaws.com/get-user:latest\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\",\"name\":\"get-user-8080-tcp\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[{\"name\":\"MYSQL_PASS\",\"value\":\"Skill53##\"},{\"name\":\"MYSQL_PORT\",\"value\":\"3306\"},{\"name\":\"MYSQL_DB\",\"value\":\"app\"},{\"name\":\"MYSQL_HOST\",\"value\":\"rds-instance.cde69tvxoswa.ap-northeast-2.rds.amazonaws.com\"},{\"name\":\"MYSQL_USER\",\"value\":\"admin\"}],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/get-user-task\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://localhost/ || exit 1\"],\"interval\":30,\"timeout\":5,\"retries\":3},\"systemControls\":[]},{\"name\":\"aws-otel-collector\",\"image\":\"public.ecr.aws/aws-observability/aws-otel-collector:v0.42.0\",\"cpu\":0,\"portMappings\":[],\"essential\":true,\"command\":[\"--config=/etc/ecs/ecs-xray.yaml\"],\"environment\":[],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/ecs-aws-otel-sidecar-collector\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"systemControls\":[]}]"
    family = "get-user-task"
    execution_role_arn = "${aws_iam_role.IAMRole2.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_neptune_subnet_group" "NeptuneDBSubnetGroup" {
    name = "mysql-subnet-group"
    description = "mysql-subnet-group"
    subnet_ids = [
        "subnet-07da06455968bdbff",
        "subnet-018a786148b8c1c3e"
    ]
}

resource "aws_docdb_subnet_group" "DocDBDBSubnetGroup" {
    name = "mysql-subnet-group"
    description = "mysql-subnet-group"
    subnet_ids = [
        "subnet-07da06455968bdbff",
        "subnet-018a786148b8c1c3e"
    ]
}

resource "aws_codepipeline_webhook" "CodePipelineWebhook" {
    name = "ArgocdPipline--Source--dml113LongRunningApplicatio--2028212867"
    target_pipeline = "Argocd-Pipline"
    target_action = "Source"
    authentication = "GITHUB_HMAC"
    authentication_configuration {
        secret_token = "****"
    }
}

resource "aws_service_discovery_http_namespace" "ServiceDiscoveryHttpNamespace" {
    name = "ecs-cluster"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace" {
    name = "get-user"
}

resource "aws_service_discovery_private_dns_namespace" "ServiceDiscoveryPrivateDnsNamespace2" {
    name = "managed-user"
}

resource "aws_service_discovery_service" "ServiceDiscoveryService" {
    name = "get-user"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-axpyucua427bsqdb"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_service_discovery_service" "ServiceDiscoveryService2" {
    name = "managed-user"
    dns_config {
        dns_records = [
            {
                ttl = 15
                type = "A"
            }
        ]
        namespace_id = "ns-s4bydv3ksmu5no7n"
        routing_policy = "MULTIVALUE"
    }
    health_check_custom_config {
        failure_threshold = 1
    }
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota" {
    quota_code = "L-FE5A380F"
    service_code = "vpc"
    value = 50
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota2" {
    quota_code = "L-0263D0A3"
    service_code = "ec2"
    value = 50
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota3" {
    quota_code = "L-F678F1CE"
    service_code = "vpc"
    value = 50
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota4" {
    quota_code = "L-0263D0A3"
    service_code = "ec2"
    value = 20
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota5" {
    quota_code = "L-F678F1CE"
    service_code = "vpc"
    value = 10
}


