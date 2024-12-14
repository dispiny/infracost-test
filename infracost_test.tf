terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "ca-central-1"
}

resource "aws_iam_user" "IAMUser" {
    path = "/"
    name = "aws-nuke-user"
    tags = {
        AKIATJM26FHKDN6SOJNW = "aws-nuke-user"
    }
}

resource "aws_iam_user" "IAMUser2" {
    path = "/"
    name = "park"
    tags = {
        AKIATJM26FHKGCC6N57X = "aws"
    }
}

resource "aws_iam_role" "IAMRole" {
    path = "/"
    name = "ecsTaskExecutionRole"
    assume_role_policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole2" {
    path = "/"
    name = "eksctl-riotgames-cluster-cluster-ServiceRole-U1RlW5wtm6Wa"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"},\"Action\":[\"sts:AssumeRole\",\"sts:TagSession\"]}]}"
    max_session_duration = 3600
    tags = {
        karpenter.sh/discovery = "riotgames-cluster"
        alpha.eksctl.io/cluster-name = "riotgames-cluster"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "riotgames-cluster"
        alpha.eksctl.io/cluster-oidc-enabled = "true"
        alpha.eksctl.io/eksctl-version = "0.199.0"
        Name = "eksctl-riotgames-cluster-cluster/ServiceRole"
    }
}

resource "aws_iam_role" "IAMRole3" {
    path = "/"
    name = "KarpenterNodeRole-riotgames-cluster"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole4" {
    path = "/"
    name = "rds-monitoring-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"monitoring.rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole5" {
    path = "/"
    name = "riotgames_Role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
    aws_service_name = "autoscaling.amazonaws.com"
    description = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "compute-optimizer.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "eks-nodegroup.amazonaws.com"
    description = "This policy allows Amazon EKS to create and manage Nodegroups"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "eks.amazonaws.com"
    description = "Allows Amazon EKS to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole5" {
    aws_service_name = "ecs.application-autoscaling.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole6" {
    aws_service_name = "cost-optimization-hub.bcm.amazonaws.com"
    description = "Allows Cost Optimization Hub to retrieve organization information and collect optimization-related data and metadata."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole7" {
    aws_service_name = "devops-guru.amazonaws.com"
    description = "AWS service role used to execute actions on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole8" {
    aws_service_name = "replication.ecr.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole9" {
    aws_service_name = "ecs.amazonaws.com"
    description = "Policy to enable Amazon ECS to manage your EC2 instances and related resources."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole10" {
    aws_service_name = "elasticloadbalancing.amazonaws.com"
    description = "Allows ELB to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole11" {
    aws_service_name = "imagebuilder.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole12" {
    aws_service_name = "organizations.amazonaws.com"
    description = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole13" {
    aws_service_name = "profile.amazonaws.com"
    custom_suffix = "c7b4b43e0d8c4596a89e8df4ee7d928f"
    description = "Allows Amazon Connect Customer Profiles to access AWS services and resources on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole14" {
    aws_service_name = "rds.amazonaws.com"
    description = "Allows Amazon RDS to manage AWS resources on your behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole15" {
    aws_service_name = "sso.amazonaws.com"
    description = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
}

resource "aws_iam_policy" "IAMManagedPolicy" {
    name = "KarpenterControllerPolicy-riotgames-cluster"
    path = "/"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowScopedEC2InstanceAccessActions",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ca-central-1::image/*",
        "arn:aws:ec2:ca-central-1::snapshot/*",
        "arn:aws:ec2:ca-central-1:*:security-group/*",
        "arn:aws:ec2:ca-central-1:*:subnet/*"
      ],
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet"
      ]
    },
    {
      "Sid": "AllowScopedEC2LaunchTemplateAccessActions",
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:ca-central-1:*:launch-template/*",
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/riotgames-cluster": "owned"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.sh/nodepool": "*"
        }
      }
    },
    {
      "Sid": "AllowScopedEC2InstanceActionsWithTags",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ca-central-1:*:fleet/*",
        "arn:aws:ec2:ca-central-1:*:instance/*",
        "arn:aws:ec2:ca-central-1:*:volume/*",
        "arn:aws:ec2:ca-central-1:*:network-interface/*",
        "arn:aws:ec2:ca-central-1:*:launch-template/*",
        "arn:aws:ec2:ca-central-1:*:spot-instances-request/*"
      ],
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet",
        "ec2:CreateLaunchTemplate"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "riotgames-cluster"
        },
        "StringLike": {
          "aws:RequestTag/karpenter.sh/nodepool": "*"
        }
      }
    },
    {
      "Sid": "AllowScopedResourceCreationTagging",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ca-central-1:*:fleet/*",
        "arn:aws:ec2:ca-central-1:*:instance/*",
        "arn:aws:ec2:ca-central-1:*:volume/*",
        "arn:aws:ec2:ca-central-1:*:network-interface/*",
        "arn:aws:ec2:ca-central-1:*:launch-template/*",
        "arn:aws:ec2:ca-central-1:*:spot-instances-request/*"
      ],
      "Action": "ec2:CreateTags",
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "riotgames-cluster",
          "ec2:CreateAction": [
            "RunInstances",
            "CreateFleet",
            "CreateLaunchTemplate"
          ]
        },
        "StringLike": {
          "aws:RequestTag/karpenter.sh/nodepool": "*"
        }
      }
    },
    {
      "Sid": "AllowScopedResourceTagging",
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:ca-central-1:*:instance/*",
      "Action": "ec2:CreateTags",
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/riotgames-cluster": "owned"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.sh/nodepool": "*"
        },
        "StringEqualsIfExists": {
          "aws:RequestTag/eks:eks-cluster-name": "riotgames-cluster"
        },
        "ForAllValues:StringEquals": {
          "aws:TagKeys": [
            "eks:eks-cluster-name",
            "karpenter.sh/nodeclaim",
            "Name"
          ]
        }
      }
    },
    {
      "Sid": "AllowScopedDeletion",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ca-central-1:*:instance/*",
        "arn:aws:ec2:ca-central-1:*:launch-template/*"
      ],
      "Action": [
        "ec2:TerminateInstances",
        "ec2:DeleteLaunchTemplate"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/riotgames-cluster": "owned"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.sh/nodepool": "*"
        }
      }
    },
    {
      "Sid": "AllowRegionalReadActions",
      "Effect": "Allow",
      "Resource": "*",
      "Action": [
        "ec2:DescribeAvailabilityZones",
        "ec2:DescribeImages",
        "ec2:DescribeInstances",
        "ec2:DescribeInstanceTypeOfferings",
        "ec2:DescribeInstanceTypes",
        "ec2:DescribeLaunchTemplates",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSpotPriceHistory",
        "ec2:DescribeSubnets"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestedRegion": "ca-central-1"
        }
      }
    },
    {
      "Sid": "AllowSSMReadActions",
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:ca-central-1::parameter/aws/service/*",
      "Action": "ssm:GetParameter"
    },
    {
      "Sid": "AllowPricingReadActions",
      "Effect": "Allow",
      "Resource": "*",
      "Action": "pricing:GetProducts"
    },
    {
      "Sid": "AllowInterruptionQueueActions",
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:ca-central-1:226347592148:riotgames-cluster",
      "Action": [
        "sqs:DeleteMessage",
        "sqs:GetQueueUrl",
        "sqs:ReceiveMessage"
      ]
    },
    {
      "Sid": "AllowPassingInstanceRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:role/KarpenterNodeRole-riotgames-cluster",
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": "ec2.amazonaws.com"
        }
      }
    },
    {
      "Sid": "AllowScopedInstanceProfileCreationActions",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:instance-profile/*",
      "Action": [
        "iam:CreateInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "riotgames-cluster",
          "aws:RequestTag/topology.kubernetes.io/region": "ca-central-1"
        },
        "StringLike": {
          "aws:RequestTag/karpenter.k8s.aws/ec2nodeclass": "*"
        }
      }
    },
    {
      "Sid": "AllowScopedInstanceProfileTagActions",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:instance-profile/*",
      "Action": [
        "iam:TagInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:ResourceTag/topology.kubernetes.io/region": "ca-central-1",
          "aws:RequestTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "riotgames-cluster",
          "aws:RequestTag/topology.kubernetes.io/region": "ca-central-1"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.k8s.aws/ec2nodeclass": "*",
          "aws:RequestTag/karpenter.k8s.aws/ec2nodeclass": "*"
        }
      }
    },
    {
      "Sid": "AllowScopedInstanceProfileActions",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:instance-profile/*",
      "Action": [
        "iam:AddRoleToInstanceProfile",
        "iam:RemoveRoleFromInstanceProfile",
        "iam:DeleteInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/riotgames-cluster": "owned",
          "aws:ResourceTag/topology.kubernetes.io/region": "ca-central-1"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.k8s.aws/ec2nodeclass": "*"
        }
      }
    },
    {
      "Sid": "AllowInstanceProfileReadActions",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:instance-profile/*",
      "Action": "iam:GetInstanceProfile"
    },
    {
      "Sid": "AllowAPIServerEndpointDiscovery",
      "Effect": "Allow",
      "Resource": "arn:aws:eks:ca-central-1:226347592148:cluster/riotgames-cluster",
      "Action": "eks:DescribeCluster"
    }
  ]
}

EOF
}

resource "aws_iam_instance_profile" "IAMInstanceProfile" {
    path = "/"
    name = "${aws_iam_role.IAMRole5.name}"
    roles = [
        "${aws_iam_role.IAMRole5.name}"
    ]
}

resource "aws_iam_access_key" "IAMAccessKey" {
    status = "Active"
    user = "aws-nuke-user"
}

resource "aws_iam_access_key" "IAMAccessKey2" {
    status = "Active"
    user = "park"
}

resource "aws_vpc" "EC2VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = "riotgames-vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "ca-central-1b"
    cidr_block = "10.0.4.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "ca-central-1d"
    cidr_block = "10.0.7.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet3" {
    availability_zone = "ca-central-1a"
    cidr_block = "10.0.5.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet4" {
    availability_zone = "ca-central-1b"
    cidr_block = "10.0.6.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet5" {
    availability_zone = "ca-central-1d"
    cidr_block = "10.0.8.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet6" {
    availability_zone = "ca-central-1b"
    cidr_block = "10.0.2.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet7" {
    availability_zone = "ca-central-1a"
    cidr_block = "10.0.3.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet8" {
    availability_zone = "ca-central-1a"
    cidr_block = "10.0.1.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet9" {
    availability_zone = "ca-central-1d"
    cidr_block = "10.0.9.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "riotgames-igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_eip" "EC2EIP" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation" {
    allocation_id = "eipalloc-0e582824d489fbdd3"
    network_interface_id = "eni-000eb26c669f46c3a"
    private_ip_address = "10.0.7.74"
}

resource "aws_eip" "EC2EIP2" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation2" {
    allocation_id = "eipalloc-07737106981f74eb4"
    network_interface_id = "eni-0453a3c27751f8cc2"
    private_ip_address = "10.0.2.54"
}

resource "aws_eip" "EC2EIP3" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation3" {
    allocation_id = "eipalloc-0a803bac0855eb9c3"
    network_interface_id = "eni-00b37f882accfed9c"
    private_ip_address = "10.0.1.237"
}

resource "aws_vpc_dhcp_options" "EC2DHCPOptions" {
    domain_name = "ca-central-1.compute.internal"
    tags = {}
}

resource "aws_vpc_dhcp_options_association" "EC2VPCDHCPOptionsAssociation" {
    dhcp_options_id = "dopt-0ad27aea39078d0ad"
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riotgames-db-rt"
    }
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riotgames-pvt-a-rt"
    }
}

resource "aws_route_table" "EC2RouteTable3" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riotgames-pvt-d-rt"
    }
}

resource "aws_route_table" "EC2RouteTable4" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riotgames-pvt-b-rt"
    }
}

resource "aws_route_table" "EC2RouteTable5" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

resource "aws_route_table" "EC2RouteTable6" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "riotgames-pub-rt"
    }
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-06d10b6f1a3ba304b"
    route_table_id = "rtb-0934d653fb0210d41"
}

resource "aws_route" "EC2Route2" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-06b786064dcc6f30e"
    route_table_id = "rtb-0c5fcff747e2a209b"
}

resource "aws_route" "EC2Route3" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-0872437b8e68e982e"
    route_table_id = "rtb-08d2de98b4aef04d1"
}

resource "aws_route" "EC2Route4" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-083f3868fdb105724"
    route_table_id = "rtb-056d7aa34c3053fdf"
}

resource "aws_nat_gateway" "EC2NatGateway" {
    subnet_id = "subnet-0e7d00d5448669fe0"
    tags = {
        Name = "riotgames-natgw-d"
    }
    allocation_id = "eipalloc-0e582824d489fbdd3"
}

resource "aws_nat_gateway" "EC2NatGateway2" {
    subnet_id = "subnet-036cba3e3ac2b4137"
    tags = {
        Name = "riotgames-natgw-b"
    }
    allocation_id = "eipalloc-07737106981f74eb4"
}

resource "aws_nat_gateway" "EC2NatGateway3" {
    subnet_id = "subnet-0bf8aeffdc297a9c9"
    tags = {
        Name = "riotgames-natgw-a"
    }
    allocation_id = "eipalloc-0a803bac0855eb9c3"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation" {
    route_table_id = "rtb-05dbda9ecb4c65b78"
    subnet_id = "subnet-0f906f860d80443fe"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation2" {
    route_table_id = "rtb-05dbda9ecb4c65b78"
    subnet_id = "subnet-0330ec2533d8fe310"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation3" {
    route_table_id = "rtb-05dbda9ecb4c65b78"
    subnet_id = "subnet-060f9acbd266a3068"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation4" {
    route_table_id = "rtb-0934d653fb0210d41"
    subnet_id = "subnet-0122e539107dcd1f4"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation5" {
    route_table_id = "rtb-0c5fcff747e2a209b"
    subnet_id = "subnet-04f88628157fd48fc"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation6" {
    route_table_id = "rtb-08d2de98b4aef04d1"
    subnet_id = "subnet-00c91a118a9133925"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation7" {
    route_table_id = "rtb-056d7aa34c3053fdf"
    subnet_id = "subnet-036cba3e3ac2b4137"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation8" {
    route_table_id = "rtb-056d7aa34c3053fdf"
    subnet_id = "subnet-0e7d00d5448669fe0"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation9" {
    route_table_id = "rtb-056d7aa34c3053fdf"
    subnet_id = "subnet-0bf8aeffdc297a9c9"
}

resource "aws_instance" "EC2Instance" {
    ami = "ami-038aeeeeed95c7942"
    instance_type = "t3.medium"
    key_name = "riotgames"
    availability_zone = "ca-central-1a"
    tenancy = "default"
    subnet_id = "subnet-0bf8aeffdc297a9c9"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole5.name}"
    tags = {
        Name = "riotgames-bastion"
    }
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer" {
    name = "riotgames-alb"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-036cba3e3ac2b4137",
        "subnet-0bf8aeffdc297a9c9",
        "subnet-0e7d00d5448669fe0"
    ]
    security_groups = [
        "sg-0661a16534c100f3c"
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
    load_balancer_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:loadbalancer/app/riotgames-alb/773b3519891e7d3f"
    port = 80
    protocol = "HTTP"
    default_action {
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-champions-svc/69b3c8f1228178d2"
        type = "forward"
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule" {
    priority = "1"
    listener_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:listener/app/riotgames-alb/773b3519891e7d3f/d08a2c59e0a9c10f"
    condition {
        path_pattern {
            values = [
                "/images-svc*"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-images-svc/e7a0358d76b9bf4f"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-images-svc/e7a0358d76b9bf4f"
                    weight = 1
                }
            ]
            stickiness {
                enabled = false
            }
        }
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule2" {
    priority = "2"
    listener_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:listener/app/riotgames-alb/773b3519891e7d3f/d08a2c59e0a9c10f"
    condition {
        path_pattern {
            values = [
                "/matches-svc*"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-matches-svc/07c2b2c62722027b"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-matches-svc/07c2b2c62722027b"
                    weight = 1
                }
            ]
            stickiness {
                enabled = false
            }
        }
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule3" {
    priority = "3"
    listener_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:listener/app/riotgames-alb/773b3519891e7d3f/d08a2c59e0a9c10f"
    condition {
        path_pattern {
            values = [
                "/players-svc*"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-players-svc/a742ce53568d4b62"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-players-svc/a742ce53568d4b62"
                    weight = 1
                }
            ]
            stickiness {
                enabled = false
            }
        }
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule4" {
    priority = "100"
    listener_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:listener/app/riotgames-alb/773b3519891e7d3f/d08a2c59e0a9c10f"
    condition {
        path_pattern {
            values = [
                "/champions"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-champions-svc/69b3c8f1228178d2"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-champions-svc/69b3c8f1228178d2"
                    weight = 1
                }
            ]
            stickiness {
                duration = 3600
                enabled = false
            }
        }
    }
}

resource "aws_security_group" "EC2SecurityGroup" {
    description = "riotgames-sg-bastion"
    name = "riotgames-sg-bastion"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "116.41.254.160/32"
        ]
        from_port = 4272
        protocol = "tcp"
        to_port = 4272
    }
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 3000
        protocol = "tcp"
        to_port = 3000
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
    description = "champions-sg"
    name = "champions-sg"
    tags = {
        Name = "champions-sg"
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
    description = "matches-sg"
    name = "matches-sg"
    tags = {
        Name = "matches-sg"
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

resource "aws_security_group" "EC2SecurityGroup4" {
    description = "Communication between the control plane and worker nodegroups"
    name = "eksctl-riotgames-cluster-cluster-ControlPlaneSecurityGroup-BuSTUl7vCcLa"
    tags = {
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "riotgames-cluster"
        alpha.eksctl.io/eksctl-version = "0.199.0"
        alpha.eksctl.io/cluster-oidc-enabled = "true"
        karpenter.sh/discovery = "riotgames-cluster"
        alpha.eksctl.io/cluster-name = "riotgames-cluster"
        Name = "eksctl-riotgames-cluster-cluster/ControlPlaneSecurityGroup"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
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
    description = "riotgames-rds-sg"
    name = "riotgames-rds-sg"
    tags = {
        Name = "riotgames-rds-sg"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        from_port = 3333
        protocol = "tcp"
        to_port = 3333
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

resource "aws_security_group" "EC2SecurityGroup6" {
    description = "players-sg"
    name = "players-sg"
    tags = {
        Name = "players-sg"
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

resource "aws_security_group" "EC2SecurityGroup7" {
    description = "images-sg"
    name = "images-sg"
    tags = {
        Name = "images-sg"
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

resource "aws_security_group" "EC2SecurityGroup8" {
    description = "Communication between all nodes in the cluster"
    name = "eksctl-riotgames-cluster-cluster-ClusterSharedNodeSecurityGroup-8DmhXm0DJQiX"
    tags = {
        alpha.eksctl.io/cluster-oidc-enabled = "true"
        karpenter.sh/discovery = "riotgames-cluster"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "riotgames-cluster"
        Name = "eksctl-riotgames-cluster-cluster/ClusterSharedNodeSecurityGroup"
        alpha.eksctl.io/cluster-name = "riotgames-cluster"
        alpha.eksctl.io/eksctl-version = "0.199.0"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "sg-0b44bc7a7fbfbc7f6"
        ]
        description = "Allow nodes to communicate with each other (all ports)"
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup9.id}"
        ]
        description = "Allow managed and unmanaged nodes to communicate with each other (all ports)"
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

resource "aws_security_group" "EC2SecurityGroup9" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-riotgames-cluster-2009735698"
    tags = {
        Name = "eks-cluster-sg-riotgames-cluster-2009735698"
        kubernetes.io/cluster/riotgames-cluster = "owned"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "sg-00345ce05e39300da"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        security_groups = [
            "sg-0b44bc7a7fbfbc7f6"
        ]
        description = "Allow unmanaged nodes to communicate with control plane (all ports)"
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

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup" {
    health_check {
        interval = 30
        path = "/images/tier/master"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 80
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "ecs-riotga-images-svc"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup2" {
    health_check {
        interval = 30
        path = "/players"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 80
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "ecs-riotga-players-svc"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup3" {
    health_check {
        interval = 30
        path = "/matches/204"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 80
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "ecs-riotga-matches-svc"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup4" {
    health_check {
        interval = 30
        path = "/champions"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 80
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "ecs-riotga-champions-svc"
}

resource "aws_ebs_volume" "EC2Volume" {
    availability_zone = "ca-central-1a"
    encrypted = false
    size = 8
    type = "gp3"
    snapshot_id = "snap-055204f7604bf1fbd"
    tags = {}
}

resource "aws_volume_attachment" "EC2VolumeAttachment" {
    volume_id = "vol-09150b991de99333e"
    instance_id = "i-0ec017a3e083ef03f"
    device_name = "/dev/xvda"
}

resource "aws_network_interface" "EC2NetworkInterface" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.9.216"
    ]
    subnet_id = "subnet-060f9acbd266a3068"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface2" {
    description = "ELB app/riotgames-alb/773b3519891e7d3f"
    private_ips = [
        "10.0.7.86"
    ]
    subnet_id = "subnet-0e7d00d5448669fe0"
    source_dest_check = true
    security_groups = [
        "sg-0661a16534c100f3c"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface3" {
    description = "Interface for NAT Gateway nat-06b786064dcc6f30e"
    private_ips = [
        "10.0.7.74"
    ]
    subnet_id = "subnet-0e7d00d5448669fe0"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface4" {
    description = "arn:aws:ecs:ca-central-1:226347592148:attachment/7f41f793-b73d-4d19-9a6e-85d0e1c38010"
    private_ips = [
        "10.0.8.51"
    ]
    subnet_id = "subnet-04f88628157fd48fc"
    source_dest_check = true
    security_groups = [
        "sg-0661a16534c100f3c"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface5" {
    description = ""
    private_ips = [
        "10.0.1.60"
    ]
    subnet_id = "subnet-0bf8aeffdc297a9c9"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface6" {
    description = "Interface for NAT Gateway nat-06d10b6f1a3ba304b"
    private_ips = [
        "10.0.1.237"
    ]
    subnet_id = "subnet-0bf8aeffdc297a9c9"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface7" {
    description = "Amazon EKS riotgames-cluster"
    private_ips = [
        "10.0.3.242"
    ]
    subnet_id = "subnet-0122e539107dcd1f4"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup4.id}",
        "${aws_security_group.EC2SecurityGroup9.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface8" {
    description = "arn:aws:ecs:ca-central-1:226347592148:attachment/f1ebc93c-ab8b-4a52-862d-c15377b8c175"
    private_ips = [
        "10.0.3.19"
    ]
    subnet_id = "subnet-0122e539107dcd1f4"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface9" {
    description = "ELB app/riotgames-alb/773b3519891e7d3f"
    private_ips = [
        "10.0.1.58"
    ]
    subnet_id = "subnet-0bf8aeffdc297a9c9"
    source_dest_check = true
    security_groups = [
        "sg-0661a16534c100f3c"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface10" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.5.194"
    ]
    subnet_id = "subnet-0f906f860d80443fe"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface11" {
    description = "Amazon EKS riotgames-cluster"
    private_ips = [
        "10.0.4.98"
    ]
    subnet_id = "subnet-00c91a118a9133925"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup4.id}",
        "${aws_security_group.EC2SecurityGroup9.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface12" {
    description = "ELB app/riotgames-alb/773b3519891e7d3f"
    private_ips = [
        "10.0.2.183"
    ]
    subnet_id = "subnet-036cba3e3ac2b4137"
    source_dest_check = true
    security_groups = [
        "sg-0661a16534c100f3c"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface13" {
    description = "Interface for NAT Gateway nat-0872437b8e68e982e"
    private_ips = [
        "10.0.2.54"
    ]
    subnet_id = "subnet-036cba3e3ac2b4137"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface14" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.6.10"
    ]
    subnet_id = "subnet-0330ec2533d8fe310"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface15" {
    description = "arn:aws:ecs:ca-central-1:226347592148:attachment/334c0a26-a899-4df5-9b70-b1263c49d348"
    private_ips = [
        "10.0.4.69"
    ]
    subnet_id = "subnet-00c91a118a9133925"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface16" {
    description = "arn:aws:ecs:ca-central-1:226347592148:attachment/e00b816c-c363-4ea2-93e2-dfffd75f622b"
    private_ips = [
        "10.0.4.121"
    ]
    subnet_id = "subnet-00c91a118a9133925"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment" {
    network_interface_id = "eni-08687f27beb426b77"
    device_index = 0
    instance_id = "i-0ec017a3e083ef03f"
}

resource "aws_key_pair" "EC2KeyPair" {
    public_key = "REPLACEME"
    key_name = "riotgames"
}

resource "aws_s3_bucket" "S3Bucket" {
    bucket = "ca-central-1-riotgames-bucket"
}

resource "aws_rds_cluster_instance" "RDSDBInstance" {
    identifier = "riotgames-database-1-instance-1"
    allocated_storage = 200
    instance_class = "db.r5d.large"
    engine = "mysql"
    username = "aws"
    password = "REPLACEME"
    preferred_backup_window = "03:28-03:58"
    backup_retention_period = 7
    availability_zone = "ca-central-1d"
    preferred_maintenance_window = "thu:04:54-thu:05:24"
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    iops = 3000
    publicly_accessible = false
    port = 3333
    cluster_identifier = "riotgames-database-1"
    kms_key_id = "arn:aws:kms:ca-central-1:226347592148:key/72a39c58-1bb6-4b94-b781-75d118b7746d"
    copy_tags_to_snapshot = false
    monitoring_interval = 0
    iam_database_authentication_enabled = false
    deletion_protection = false
    db_subnet_group_name = "riotgames-mysql-sgp"
}

resource "aws_rds_cluster_instance" "RDSDBInstance2" {
    identifier = "riotgames-database-1-instance-2"
    allocated_storage = 200
    instance_class = "db.r5d.large"
    engine = "mysql"
    username = "aws"
    password = "REPLACEME"
    preferred_backup_window = "03:28-03:58"
    backup_retention_period = 7
    availability_zone = "ca-central-1a"
    preferred_maintenance_window = "thu:04:54-thu:05:24"
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    iops = 3000
    publicly_accessible = false
    port = 3333
    cluster_identifier = "riotgames-database-1"
    kms_key_id = "arn:aws:kms:ca-central-1:226347592148:key/72a39c58-1bb6-4b94-b781-75d118b7746d"
    copy_tags_to_snapshot = false
    monitoring_interval = 0
    iam_database_authentication_enabled = false
    deletion_protection = false
    db_subnet_group_name = "riotgames-mysql-sgp"
}

resource "aws_rds_cluster_instance" "RDSDBInstance3" {
    identifier = "riotgames-database-1-instance-3"
    allocated_storage = 200
    instance_class = "db.r5d.large"
    engine = "mysql"
    username = "aws"
    password = "REPLACEME"
    preferred_backup_window = "03:28-03:58"
    backup_retention_period = 7
    availability_zone = "ca-central-1b"
    preferred_maintenance_window = "thu:04:54-thu:05:24"
    engine_version = "8.0.40"
    auto_minor_version_upgrade = true
    iops = 3000
    publicly_accessible = false
    port = 3333
    cluster_identifier = "riotgames-database-1"
    kms_key_id = "arn:aws:kms:ca-central-1:226347592148:key/72a39c58-1bb6-4b94-b781-75d118b7746d"
    copy_tags_to_snapshot = false
    monitoring_interval = 0
    iam_database_authentication_enabled = false
    deletion_protection = false
    db_subnet_group_name = "riotgames-mysql-sgp"
}

resource "aws_db_subnet_group" "RDSDBSubnetGroup" {
    description = "riotgames-mysql-sgp"
    name = "riotgames-mysql-sgp"
    subnet_ids = [
        "subnet-060f9acbd266a3068",
        "subnet-0f906f860d80443fe",
        "subnet-0330ec2533d8fe310"
    ]
}

resource "aws_sqs_queue" "SQSQueue" {
    delay_seconds = "0"
    max_message_size = "262144"
    message_retention_seconds = "300"
    receive_wait_time_seconds = "0"
    visibility_timeout_seconds = "30"
    name = "riotgames-cluster"
}

resource "aws_sqs_queue_policy" "SQSQueuePolicy" {
    policy = "{\"Version\":\"2008-10-17\",\"Id\":\"EC2InterruptionPolicy\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"events.amazonaws.com\",\"sqs.amazonaws.com\"]},\"Action\":\"sqs:SendMessage\",\"Resource\":\"arn:aws:sqs:ca-central-1:226347592148:riotgames-cluster\"},{\"Sid\":\"DenyHTTP\",\"Effect\":\"Deny\",\"Principal\":\"*\",\"Action\":\"sqs:*\",\"Resource\":\"arn:aws:sqs:ca-central-1:226347592148:riotgames-cluster\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}}}]}"
    queue_url = "https://sqs.ca-central-1.amazonaws.com/226347592148/riotgames-cluster"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "LogsLogGroup2" {
    name = "/ecs/champions-tdf"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup3" {
    name = "/ecs/images-tdf"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup4" {
    name = "/ecs/matches-tdf"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup5" {
    name = "/ecs/players-tdf"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup6" {
    name = "RDSOSMetrics"
    retention_in_days = 30
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "ClusterTelemetry-riotgames-cluster"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream2" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-1063"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream3" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-1644"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream4" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-1959"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream5" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2053"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream6" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2204"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream7" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2312"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream8" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2344"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream9" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2469"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream10" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2544"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream11" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-2728"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream12" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3164"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream13" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3188"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream14" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3248"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream15" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3308"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream16" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3312"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream17" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3408"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream18" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3444"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream19" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3503"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream20" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-363"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream21" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3681"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream22" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3799"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream23" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3834"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream24" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-3924"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream25" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4089"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream26" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4129"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream27" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4201"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream28" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4242"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream29" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4320"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream30" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4370"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream31" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4388"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream32" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4443"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream33" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4447"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream34" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-495"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream35" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-4971"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream36" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5139"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream37" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-516"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream38" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5232"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream39" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5503"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream40" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5580"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream41" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5647"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream42" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-5692"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream43" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6392"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream44" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6400"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream45" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6466"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream46" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6665"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream47" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6667"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream48" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6697"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream49" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6705"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream50" {
    log_group_name = "/aws/ecs/containerinsights/riotgames-cluster/performance"
    name = "FargateTelemetry-6798"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream51" {
    log_group_name = "/ecs/champions-tdf"
    name = "ecs/champions/115c8fcd96cb4762b5062a4d8bed93ec"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream52" {
    log_group_name = "/ecs/champions-tdf"
    name = "ecs/champions/8fabdf0fa3484cd7bf2e3e9f46741322"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream53" {
    log_group_name = "/ecs/champions-tdf"
    name = "ecs/champions/e06bed70d163449fb02db88ec6d403ec"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream54" {
    log_group_name = "/ecs/champions-tdf"
    name = "ecs/champions/e43d6b5f150c4064bab8cd4cdaf6a256"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream55" {
    log_group_name = "/ecs/champions-tdf"
    name = "ecs/champions/f765dffd6e16447186832d816821f386"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream56" {
    log_group_name = "/ecs/matches-tdf"
    name = "ecs/matches/bb3c34e6ed904d26a388cf1008c68099"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream57" {
    log_group_name = "/ecs/matches-tdf"
    name = "ecs/matches/e154f2d79b7a443bb6c515bd06e66110"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream58" {
    log_group_name = "/ecs/images-tdf"
    name = "ecs/images/5838d57b740c41f7bce45af895d0c19a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream59" {
    log_group_name = "/ecs/images-tdf"
    name = "ecs/images/e45b8be883c045f9875ede887bd78908"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream60" {
    log_group_name = "/ecs/players-tdf"
    name = "ecs/players/3c03c526d2d44f42872ca4afd9e714c0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream61" {
    log_group_name = "/ecs/players-tdf"
    name = "ecs/players/bf74d8b86a04470b8a0549f284a682d1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream62" {
    log_group_name = "/ecs/players-tdf"
    name = "ecs/players/e4cfe467d16e4ab5b45e16d533c76898"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream63" {
    log_group_name = "RDSOSMetrics"
    name = "db-VFHU5NYRGKLCJVS5UJKIE3B5NY"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream64" {
    log_group_name = "RDSOSMetrics"
    name = "db-VFHU5NYRGKLCJVS5UJKIE3B5NY-secondary"
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "backend"
}

resource "aws_eks_cluster" "EKSCluster" {
    name = "riotgames-cluster"
    role_arn = "${aws_iam_role.IAMRole2.arn}"
    version = "1.31"
    vpc_config {
        security_group_ids = [
            "${aws_security_group.EC2SecurityGroup4.id}"
        ]
        subnet_ids = [
            "subnet-036cba3e3ac2b4137",
            "subnet-0bf8aeffdc297a9c9",
            "subnet-0122e539107dcd1f4",
            "subnet-00c91a118a9133925"
        ]
    }
}

resource "aws_ecs_cluster" "ECSCluster" {
    name = "riotgames-cluster"
}

resource "aws_ecs_service" "ECSService" {
    name = "players-svc"
    cluster = "arn:aws:ecs:ca-central-1:226347592148:cluster/riotgames-cluster"
    load_balancer {
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-players-svc/a742ce53568d4b62"
        container_name = "players"
        container_port = 8000
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::226347592148:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "sg-0661a16534c100f3c"
        ]
        subnets = [
            "subnet-00c91a118a9133925",
            "subnet-04f88628157fd48fc",
            "subnet-0122e539107dcd1f4"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService2" {
    name = "images-svc"
    cluster = "arn:aws:ecs:ca-central-1:226347592148:cluster/riotgames-cluster"
    load_balancer {
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-images-svc/e7a0358d76b9bf4f"
        container_name = "images"
        container_port = 8000
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition3.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::226347592148:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup7.id}"
        ]
        subnets = [
            "subnet-00c91a118a9133925",
            "subnet-04f88628157fd48fc",
            "subnet-0122e539107dcd1f4"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService3" {
    name = "matches-svc"
    cluster = "arn:aws:ecs:ca-central-1:226347592148:cluster/riotgames-cluster"
    load_balancer {
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-matches-svc/07c2b2c62722027b"
        container_name = "matches"
        container_port = 8000
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition2.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::226347592148:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        subnets = [
            "subnet-00c91a118a9133925",
            "subnet-04f88628157fd48fc",
            "subnet-0122e539107dcd1f4"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService4" {
    name = "champions-svc"
    cluster = "arn:aws:ecs:ca-central-1:226347592148:cluster/riotgames-cluster"
    load_balancer {
        target_group_arn = "arn:aws:elasticloadbalancing:ca-central-1:226347592148:targetgroup/ecs-riotga-champions-svc/69b3c8f1228178d2"
        container_name = "champions"
        container_port = 8000
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition4.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::226347592148:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            "${aws_security_group.EC2SecurityGroup2.id}"
        ]
        subnets = [
            "subnet-00c91a118a9133925",
            "subnet-04f88628157fd48fc",
            "subnet-0122e539107dcd1f4"
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition" {
    container_definitions = "[{\"name\":\"players\",\"image\":\"226347592148.dkr.ecr.ca-central-1.amazonaws.com/backend:players\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8000,\"hostPort\":8000,\"protocol\":\"tcp\",\"name\":\"port\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/players-tdf\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ca-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "players-tdf"
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition2" {
    container_definitions = "[{\"name\":\"matches\",\"image\":\"226347592148.dkr.ecr.ca-central-1.amazonaws.com/backend:matches\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8000,\"hostPort\":8000,\"protocol\":\"tcp\",\"name\":\"port\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/matches-tdf\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ca-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "matches-tdf"
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition3" {
    container_definitions = "[{\"name\":\"images\",\"image\":\"226347592148.dkr.ecr.ca-central-1.amazonaws.com/backend:images\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8000,\"hostPort\":8000,\"protocol\":\"tcp\",\"name\":\"port\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/images-tdf\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ca-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "images-tdf"
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition4" {
    container_definitions = "[{\"name\":\"champions\",\"image\":\"226347592148.dkr.ecr.ca-central-1.amazonaws.com/backend:champions\",\"cpu\":0,\"portMappings\":[{\"containerPort\":8000,\"hostPort\":8000,\"protocol\":\"tcp\",\"name\":\"port\",\"appProtocol\":\"http\"}],\"essential\":true,\"environment\":[],\"environmentFiles\":[],\"mountPoints\":[],\"volumesFrom\":[],\"ulimits\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/champions-tdf\",\"mode\":\"non-blocking\",\"awslogs-create-group\":\"true\",\"max-buffer-size\":\"25m\",\"awslogs-region\":\"ca-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"systemControls\":[]}]"
    family = "champions-tdf"
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "3072"
}

resource "aws_neptune_subnet_group" "NeptuneDBSubnetGroup" {
    name = "riotgames-mysql-sgp"
    description = "riotgames-mysql-sgp"
    subnet_ids = [
        "subnet-060f9acbd266a3068",
        "subnet-0f906f860d80443fe",
        "subnet-0330ec2533d8fe310"
    ]
}

resource "aws_docdb_subnet_group" "DocDBDBSubnetGroup" {
    name = "riotgames-mysql-sgp"
    description = "riotgames-mysql-sgp"
    subnet_ids = [
        "subnet-060f9acbd266a3068",
        "subnet-0f906f860d80443fe",
        "subnet-0330ec2533d8fe310"
    ]
}

resource "aws_service_discovery_http_namespace" "ServiceDiscoveryHttpNamespace" {
    name = "riotgames-cluster"
}

resource "aws_secretsmanager_secret" "SecretsManagerSecret" {
    name = "/aws/db/secrets"
    tags = {}
}

resource "aws_secretsmanager_secret_version" "SecretsManagerSecretVersion" {
    secret_id = "${aws_secretsmanager_secret.SecretsManagerSecret.id}"
    secret_string = "{\"user\":\"aws\",\"password\":\"Skill53##\",\"host\":\"riotgames-database-1.cluster-clcyaa6qwn0k.ca-central-1.rds.amazonaws.com\",\"database\":\"riotgames\"}"
}

resource "aws_cloudwatch_event_rule" "EventsRule" {
    name = "Karpenter-riotgames-cluster-InstanceStateChangeRule-tEV8TsVv7AAv"
    event_pattern = "{\"detail-type\":[\"EC2 Instance State-change Notification\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget" {
    rule = "Karpenter-riotgames-cluster-InstanceStateChangeRule-tEV8TsVv7AAv"
    arn = "arn:aws:events:ca-central-1:226347592148:rule/Karpenter-riotgames-cluster-InstanceStateChangeRule-tEV8TsVv7AAv"
}

resource "aws_cloudwatch_event_rule" "EventsRule2" {
    name = "Karpenter-riotgames-cluster-RebalanceRule-F06XpdRq3SCW"
    event_pattern = "{\"detail-type\":[\"EC2 Instance Rebalance Recommendation\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget2" {
    rule = "Karpenter-riotgames-cluster-RebalanceRule-F06XpdRq3SCW"
    arn = "arn:aws:events:ca-central-1:226347592148:rule/Karpenter-riotgames-cluster-RebalanceRule-F06XpdRq3SCW"
}

resource "aws_cloudwatch_event_rule" "EventsRule3" {
    name = "Karpenter-riotgames-cluster-ScheduledChangeRule-JoHAlO2MDgbo"
    event_pattern = "{\"detail-type\":[\"AWS Health Event\"],\"source\":[\"aws.health\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget3" {
    rule = "Karpenter-riotgames-cluster-ScheduledChangeRule-JoHAlO2MDgbo"
    arn = "arn:aws:events:ca-central-1:226347592148:rule/Karpenter-riotgames-cluster-ScheduledChangeRule-JoHAlO2MDgbo"
}

resource "aws_cloudwatch_event_rule" "EventsRule4" {
    name = "Karpenter-riotgames-cluster-SpotInterruptionRule-HTiXBCk4mXNj"
    event_pattern = "{\"detail-type\":[\"EC2 Spot Instance Interruption Warning\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget4" {
    rule = "Karpenter-riotgames-cluster-SpotInterruptionRule-HTiXBCk4mXNj"
    arn = "arn:aws:events:ca-central-1:226347592148:rule/Karpenter-riotgames-cluster-SpotInterruptionRule-HTiXBCk4mXNj"
}
