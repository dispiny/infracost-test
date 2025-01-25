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
    name = "day3-cluster-karpenter"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"pods.eks.amazonaws.com\"},\"Action\":[\"sts:AssumeRole\",\"sts:TagSession\"]}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole2" {
    path = "/"
    name = "day3-bastion-role-apne2"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole3" {
    path = "/"
    name = "eksctl-day3-cluster-addon-iamserviceaccount-k-Role1-BhW7WdLAZGXZ"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::226347592148:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E\"},\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:sub\":\"system:serviceaccount:kube-system:ebs-csi-controller-sa\",\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:aud\":\"sts.amazonaws.com\"}}}]}"
    max_session_duration = 3600
    tags = {
        alpha.eksctl.io/cluster-name = "day3-cluster"
        alpha.eksctl.io/iamserviceaccount-name = "kube-system/ebs-csi-controller-sa"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
    }
}

resource "aws_iam_role" "IAMRole4" {
    path = "/"
    name = "eksctl-day3-cluster-addon-iamserviceaccount-k-Role1-G5omCC05XLbu"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::226347592148:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E\"},\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:sub\":\"system:serviceaccount:kube-system:aws-load-balancer-controller\",\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:aud\":\"sts.amazonaws.com\"}}}]}"
    max_session_duration = 3600
    tags = {
        alpha.eksctl.io/cluster-name = "day3-cluster"
        alpha.eksctl.io/iamserviceaccount-name = "kube-system/aws-load-balancer-controller"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
    }
}

resource "aws_iam_role" "IAMRole5" {
    path = "/"
    name = "eksctl-day3-cluster-addon-vpc-cni-Role1-NtKzPpj5LSmo"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::226347592148:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E\"},\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:sub\":\"system:serviceaccount:kube-system:aws-node\",\"oidc.eks.ap-northeast-2.amazonaws.com/id/47779322EE22F694FA50A795CCC9859E:aud\":\"sts.amazonaws.com\"}}}]}"
    max_session_duration = 3600
    tags = {
        alpha.eksctl.io/cluster-name = "day3-cluster"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        alpha.eksctl.io/addon-name = "vpc-cni"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
    }
}

resource "aws_iam_role" "IAMRole6" {
    path = "/"
    name = "eksctl-day3-cluster-cluster-ServiceRole-xnt9HyMtYWYi"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"},\"Action\":[\"sts:AssumeRole\",\"sts:TagSession\"]}]}"
    max_session_duration = 3600
    tags = {
        alpha.eksctl.io/cluster-oidc-enabled = "true"
        alpha.eksctl.io/cluster-name = "day3-cluster"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
        Name = "eksctl-day3-cluster-cluster/ServiceRole"
    }
}

resource "aws_iam_role" "IAMRole7" {
    path = "/"
    name = "KarpenterNodeRole-day3-cluster"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole8" {
    path = "/"
    name = "eksctl-day3-cluster-nodegroup-day3-NodeInstanceRole-0ORrJEv35TsZ"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {
        alpha.eksctl.io/nodegroup-name = "day3-app-ng"
        alpha.eksctl.io/cluster-name = "day3-cluster"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
        alpha.eksctl.io/nodegroup-type = "managed"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        Name = "eksctl-day3-cluster-nodegroup-day3-app-ng/NodeInstanceRole"
    }
}

resource "aws_iam_role" "IAMRole9" {
    path = "/"
    name = "rds-monitoring-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"monitoring.rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
    aws_service_name = "eks-nodegroup.amazonaws.com"
    description = "This policy allows Amazon EKS to create and manage Nodegroups"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "ecs.application-autoscaling.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "eks.amazonaws.com"
    description = "Allows Amazon EKS to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "autoscaling.amazonaws.com"
    description = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole5" {
    aws_service_name = "cost-optimization-hub.bcm.amazonaws.com"
    description = "Allows Cost Optimization Hub to retrieve organization information and collect optimization-related data and metadata."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole6" {
    aws_service_name = "replication.ecr.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole7" {
    aws_service_name = "devops-guru.amazonaws.com"
    description = "AWS service role used to execute actions on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole8" {
    aws_service_name = "ecs.amazonaws.com"
    description = "Policy to enable Amazon ECS to manage your EC2 instances and related resources."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole9" {
    aws_service_name = "license-manager.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole10" {
    aws_service_name = "compute-optimizer.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole11" {
    aws_service_name = "elasticache.amazonaws.com"
    description = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole12" {
    aws_service_name = "elasticloadbalancing.amazonaws.com"
    description = "Allows ELB to call AWS services on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole13" {
    aws_service_name = "globalaccelerator.amazonaws.com"
    description = "Allows Global Accelerator to call AWS services on customer's behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole14" {
    aws_service_name = "organizations.amazonaws.com"
    description = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole15" {
    aws_service_name = "profile.amazonaws.com"
    custom_suffix = "c7b4b43e0d8c4596a89e8df4ee7d928f"
    description = "Allows Amazon Connect Customer Profiles to access AWS services and resources on your behalf."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole16" {
    aws_service_name = "rds.amazonaws.com"
    description = "Allows Amazon RDS to manage AWS resources on your behalf"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole17" {
    aws_service_name = "sso.amazonaws.com"
    description = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
}

resource "aws_iam_policy" "IAMManagedPolicy" {
    name = "KarpenterControllerPolicy-day3-cluster"
    path = "/"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowScopedEC2InstanceAccessActions",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ap-northeast-2::image/*",
        "arn:aws:ec2:ap-northeast-2::snapshot/*",
        "arn:aws:ec2:ap-northeast-2:*:security-group/*",
        "arn:aws:ec2:ap-northeast-2:*:subnet/*"
      ],
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet"
      ]
    },
    {
      "Sid": "AllowScopedEC2LaunchTemplateAccessActions",
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:ap-northeast-2:*:launch-template/*",
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/day3-cluster": "owned"
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
        "arn:aws:ec2:ap-northeast-2:*:fleet/*",
        "arn:aws:ec2:ap-northeast-2:*:instance/*",
        "arn:aws:ec2:ap-northeast-2:*:volume/*",
        "arn:aws:ec2:ap-northeast-2:*:network-interface/*",
        "arn:aws:ec2:ap-northeast-2:*:launch-template/*",
        "arn:aws:ec2:ap-northeast-2:*:spot-instances-request/*"
      ],
      "Action": [
        "ec2:RunInstances",
        "ec2:CreateFleet",
        "ec2:CreateLaunchTemplate"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "day3-cluster"
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
        "arn:aws:ec2:ap-northeast-2:*:fleet/*",
        "arn:aws:ec2:ap-northeast-2:*:instance/*",
        "arn:aws:ec2:ap-northeast-2:*:volume/*",
        "arn:aws:ec2:ap-northeast-2:*:network-interface/*",
        "arn:aws:ec2:ap-northeast-2:*:launch-template/*",
        "arn:aws:ec2:ap-northeast-2:*:spot-instances-request/*"
      ],
      "Action": "ec2:CreateTags",
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "day3-cluster",
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
      "Resource": "arn:aws:ec2:ap-northeast-2:*:instance/*",
      "Action": "ec2:CreateTags",
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/day3-cluster": "owned"
        },
        "StringLike": {
          "aws:ResourceTag/karpenter.sh/nodepool": "*"
        },
        "StringEqualsIfExists": {
          "aws:RequestTag/eks:eks-cluster-name": "day3-cluster"
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
        "arn:aws:ec2:ap-northeast-2:*:instance/*",
        "arn:aws:ec2:ap-northeast-2:*:launch-template/*"
      ],
      "Action": [
        "ec2:TerminateInstances",
        "ec2:DeleteLaunchTemplate"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/kubernetes.io/cluster/day3-cluster": "owned"
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
          "aws:RequestedRegion": "ap-northeast-2"
        }
      }
    },
    {
      "Sid": "AllowSSMReadActions",
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:ap-northeast-2::parameter/aws/service/*",
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
      "Resource": "arn:aws:sqs:ap-northeast-2:226347592148:day3-cluster",
      "Action": [
        "sqs:DeleteMessage",
        "sqs:GetQueueUrl",
        "sqs:ReceiveMessage"
      ]
    },
    {
      "Sid": "AllowPassingInstanceRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::226347592148:role/KarpenterNodeRole-day3-cluster",
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ec2.amazonaws.com",
            "ec2.amazonaws.com.cn"
          ]
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
          "aws:RequestTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "day3-cluster",
          "aws:RequestTag/topology.kubernetes.io/region": "ap-northeast-2"
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
          "aws:ResourceTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:ResourceTag/topology.kubernetes.io/region": "ap-northeast-2",
          "aws:RequestTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:RequestTag/eks:eks-cluster-name": "day3-cluster",
          "aws:RequestTag/topology.kubernetes.io/region": "ap-northeast-2"
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
          "aws:ResourceTag/kubernetes.io/cluster/day3-cluster": "owned",
          "aws:ResourceTag/topology.kubernetes.io/region": "ap-northeast-2"
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
      "Resource": "arn:aws:eks:ap-northeast-2:226347592148:cluster/day3-cluster",
      "Action": "eks:DescribeCluster"
    }
  ]
}

EOF
}

resource "aws_iam_role_policy" "IAMPolicy" {
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateSnapshot\",\"ec2:AttachVolume\",\"ec2:DetachVolume\",\"ec2:ModifyVolume\",\"ec2:DescribeAvailabilityZones\",\"ec2:DescribeInstances\",\"ec2:DescribeSnapshots\",\"ec2:DescribeTags\",\"ec2:DescribeVolumes\",\"ec2:DescribeVolumesModifications\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringEquals\":{\"ec2:CreateAction\":[\"CreateVolume\",\"CreateSnapshot\"]}},\"Action\":[\"ec2:CreateTags\"],\"Resource\":[\"arn:aws:ec2:*:*:volume/*\",\"arn:aws:ec2:*:*:snapshot/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ec2:DeleteTags\"],\"Resource\":[\"arn:aws:ec2:*:*:volume/*\",\"arn:aws:ec2:*:*:snapshot/*\"],\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"aws:RequestTag/ebs.csi.aws.com/cluster\":\"true\"}},\"Action\":[\"ec2:CreateVolume\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"aws:RequestTag/CSIVolumeName\":\"*\"}},\"Action\":[\"ec2:CreateVolume\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"ec2:ResourceTag/ebs.csi.aws.com/cluster\":\"true\"}},\"Action\":[\"ec2:DeleteVolume\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"ec2:ResourceTag/CSIVolumeName\":\"*\"}},\"Action\":[\"ec2:DeleteVolume\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"ec2:ResourceTag/kubernetes.io/created-for/pvc/name\":\"*\"}},\"Action\":[\"ec2:DeleteVolume\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"ec2:ResourceTag/CSIVolumeSnapshotName\":\"*\"}},\"Action\":[\"ec2:DeleteSnapshot\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"ec2:ResourceTag/ebs.csi.aws.com/cluster\":\"true\"}},\"Action\":[\"ec2:DeleteSnapshot\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
    role = "${aws_iam_role.IAMRole3.name}"
}

resource "aws_iam_role_policy" "IAMPolicy2" {
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEquals\":{\"iam:AWSServiceName\":\"elasticloadbalancing.amazonaws.com\"}},\"Action\":[\"iam:CreateServiceLinkedRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ec2:DescribeAccountAttributes\",\"ec2:DescribeAddresses\",\"ec2:DescribeAvailabilityZones\",\"ec2:DescribeInternetGateways\",\"ec2:DescribeVpcs\",\"ec2:DescribeVpcPeeringConnections\",\"ec2:DescribeSubnets\",\"ec2:DescribeSecurityGroups\",\"ec2:DescribeInstances\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DescribeTags\",\"ec2:GetCoipPoolUsage\",\"ec2:DescribeCoipPools\",\"elasticloadbalancing:DescribeLoadBalancers\",\"elasticloadbalancing:DescribeLoadBalancerAttributes\",\"elasticloadbalancing:DescribeListeners\",\"elasticloadbalancing:DescribeListenerAttributes\",\"elasticloadbalancing:DescribeListenerCertificates\",\"elasticloadbalancing:DescribeSSLPolicies\",\"elasticloadbalancing:DescribeRules\",\"elasticloadbalancing:DescribeTargetGroups\",\"elasticloadbalancing:DescribeTargetGroupAttributes\",\"elasticloadbalancing:DescribeTargetHealth\",\"elasticloadbalancing:DescribeTags\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cognito-idp:DescribeUserPoolClient\",\"acm:ListCertificates\",\"acm:DescribeCertificate\",\"iam:ListServerCertificates\",\"iam:GetServerCertificate\",\"waf-regional:GetWebACL\",\"waf-regional:GetWebACLForResource\",\"waf-regional:AssociateWebACL\",\"waf-regional:DisassociateWebACL\",\"wafv2:GetWebACL\",\"wafv2:GetWebACLForResource\",\"wafv2:AssociateWebACL\",\"wafv2:DisassociateWebACL\",\"shield:GetSubscriptionState\",\"shield:DescribeProtection\",\"shield:CreateProtection\",\"shield:DeleteProtection\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ec2:AuthorizeSecurityGroupIngress\",\"ec2:RevokeSecurityGroupIngress\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ec2:CreateSecurityGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringEquals\":{\"ec2:CreateAction\":\"CreateSecurityGroup\"},\"Null\":{\"aws:RequestTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"ec2:CreateTags\"],\"Resource\":\"arn:aws:ec2:*:*:security-group/*\",\"Effect\":\"Allow\"},{\"Condition\":{\"Null\":{\"aws:RequestTag/elbv2.k8s.aws/cluster\":\"true\",\"aws:ResourceTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"ec2:CreateTags\",\"ec2:DeleteTags\"],\"Resource\":\"arn:aws:ec2:*:*:security-group/*\",\"Effect\":\"Allow\"},{\"Condition\":{\"Null\":{\"aws:ResourceTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"ec2:AuthorizeSecurityGroupIngress\",\"ec2:RevokeSecurityGroupIngress\",\"ec2:DeleteSecurityGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"Null\":{\"aws:RequestTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"elasticloadbalancing:CreateLoadBalancer\",\"elasticloadbalancing:CreateTargetGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"elasticloadbalancing:CreateListener\",\"elasticloadbalancing:DeleteListener\",\"elasticloadbalancing:CreateRule\",\"elasticloadbalancing:DeleteRule\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"Null\":{\"aws:RequestTag/elbv2.k8s.aws/cluster\":\"true\",\"aws:ResourceTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"elasticloadbalancing:AddTags\",\"elasticloadbalancing:RemoveTags\"],\"Resource\":[\"arn:aws:elasticloadbalancing:*:*:targetgroup/*/*\",\"arn:aws:elasticloadbalancing:*:*:loadbalancer/net/*/*\",\"arn:aws:elasticloadbalancing:*:*:loadbalancer/app/*/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"elasticloadbalancing:AddTags\",\"elasticloadbalancing:RemoveTags\"],\"Resource\":[\"arn:aws:elasticloadbalancing:*:*:listener/net/*/*/*\",\"arn:aws:elasticloadbalancing:*:*:listener/app/*/*/*\",\"arn:aws:elasticloadbalancing:*:*:listener-rule/net/*/*/*\",\"arn:aws:elasticloadbalancing:*:*:listener-rule/app/*/*/*\"],\"Effect\":\"Allow\"},{\"Condition\":{\"Null\":{\"aws:ResourceTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"elasticloadbalancing:ModifyListenerAttributes\",\"elasticloadbalancing:ModifyLoadBalancerAttributes\",\"elasticloadbalancing:SetIpAddressType\",\"elasticloadbalancing:SetSecurityGroups\",\"elasticloadbalancing:SetSubnets\",\"elasticloadbalancing:DeleteLoadBalancer\",\"elasticloadbalancing:ModifyTargetGroup\",\"elasticloadbalancing:ModifyTargetGroupAttributes\",\"elasticloadbalancing:DeleteTargetGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringEquals\":{\"elasticloadbalancing:CreateAction\":[\"CreateTargetGroup\",\"CreateLoadBalancer\"]},\"Null\":{\"aws:RequestTag/elbv2.k8s.aws/cluster\":\"false\"}},\"Action\":[\"elasticloadbalancing:AddTags\"],\"Resource\":[\"arn:aws:elasticloadbalancing:*:*:targetgroup/*/*\",\"arn:aws:elasticloadbalancing:*:*:loadbalancer/net/*/*\",\"arn:aws:elasticloadbalancing:*:*:loadbalancer/app/*/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"elasticloadbalancing:RegisterTargets\",\"elasticloadbalancing:DeregisterTargets\"],\"Resource\":\"arn:aws:elasticloadbalancing:*:*:targetgroup/*/*\",\"Effect\":\"Allow\"},{\"Action\":[\"elasticloadbalancing:SetWebAcl\",\"elasticloadbalancing:ModifyListener\",\"elasticloadbalancing:AddListenerCertificates\",\"elasticloadbalancing:RemoveListenerCertificates\",\"elasticloadbalancing:ModifyRule\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
    role = "${aws_iam_role.IAMRole4.name}"
}

resource "aws_iam_instance_profile" "IAMInstanceProfile" {
    path = "/"
    name = "${aws_iam_role.IAMRole2.name}"
    roles = [
        "${aws_iam_role.IAMRole2.name}"
    ]
}

resource "aws_iam_instance_profile" "IAMInstanceProfile2" {
    path = "/"
    name = "day3-cluster_11693340466802365569"
    roles = [
        "${aws_iam_role.IAMRole7.name}"
    ]
}

resource "aws_iam_instance_profile" "IAMInstanceProfile3" {
    path = "/"
    name = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    roles = [
        "${aws_iam_role.IAMRole8.name}"
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

resource "aws_iam_access_key" "IAMAccessKey3" {
    status = "Active"
    user = "park"
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
      "AWS" : "arn:aws:iam::226347592148:root"
    },
    "Action" : "kms:*",
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
  "Id" : "MacieKMSAccess",
  "Statement" : [ {
    "Sid" : "AllowRootAccountAccess",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::226347592148:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "AllowMacieToUseTheKey",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "macie.amazonaws.com"
    },
    "Action" : [ "kms:GenerateDataKey", "kms:Encrypt" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "aws:SourceAccount" : "226347592148"
      },
      "ArnLike" : {
        "aws:SourceArn" : [ "arn:aws:macie2:ap-northeast-2:226347592148:export-configuration:*", "arn:aws:macie2:ap-northeast-2:226347592148:classification-job/*" ]
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
  "Id" : "MacieKMSAccess",
  "Statement" : [ {
    "Sid" : "AllowRootAccountAccess",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::226347592148:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "AllowMacieToUseTheKey",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "macie.amazonaws.com"
    },
    "Action" : [ "kms:GenerateDataKey", "kms:Encrypt" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "aws:SourceAccount" : "226347592148"
      },
      "ArnLike" : {
        "aws:SourceArn" : [ "arn:aws:macie2:ap-northeast-2:226347592148:export-configuration:*", "arn:aws:macie2:ap-northeast-2:226347592148:classification-job/*" ]
      }
    }
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
        Name = "day3-vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.0.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "ap-northeast-2c"
    cidr_block = "10.0.32.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet3" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.128.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet4" {
    availability_zone = "ap-northeast-2b"
    cidr_block = "10.0.16.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet5" {
    availability_zone = "ap-northeast-2b"
    cidr_block = "10.0.144.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet6" {
    availability_zone = "ap-northeast-2c"
    cidr_block = "10.0.160.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "day3-igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_eip" "EC2EIP" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation" {
    allocation_id = "eipalloc-0aef350fa2f172046"
    network_interface_id = "eni-01097c127e9511bcf"
    private_ip_address = "10.0.3.204"
}

resource "aws_eip" "EC2EIP2" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation2" {
    allocation_id = "eipalloc-0b504b1eb5d724bd5"
    network_interface_id = "eni-02bdc20cbd992e159"
    private_ip_address = "10.0.24.144"
}

resource "aws_eip" "EC2EIP3" {
    vpc = true
}

resource "aws_eip_association" "EC2EIPAssociation3" {
    allocation_id = "eipalloc-075e50b4bd083e5a6"
    network_interface_id = "eni-01fc7de334b5ab4ae"
    private_ip_address = "10.0.45.0"
}

resource "aws_vpc_dhcp_options" "EC2DHCPOptions" {
    domain_name = "ap-northeast-2.compute.internal"
    tags = {}
}

resource "aws_vpc_dhcp_options_association" "EC2VPCDHCPOptionsAssociation" {
    dhcp_options_id = "dopt-07c12984356bd6cdb"
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "day3-rtb-private1-ap-northeast-2a"
    }
}

resource "aws_route_table" "EC2RouteTable3" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "day3-rtb-private2-ap-northeast-2b"
    }
}

resource "aws_route_table" "EC2RouteTable4" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "day3-rtb-public"
    }
}

resource "aws_route_table" "EC2RouteTable5" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "day3-rtb-private3-ap-northeast-2c"
    }
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-032f65150a0564cae"
    route_table_id = "rtb-0f501161dc6b7ef8a"
}

resource "aws_route" "EC2Route2" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-045d0a99901b5f796"
    route_table_id = "rtb-08733264166cc617e"
}

resource "aws_route" "EC2Route3" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0b33c26c419bd6be9"
    route_table_id = "rtb-08e4da12c50b94ed9"
}

resource "aws_route" "EC2Route4" {
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = "nat-052e9daee6cc1b4df"
    route_table_id = "rtb-0fcd571a0515089dc"
}

resource "aws_nat_gateway" "EC2NatGateway" {
    subnet_id = "subnet-058dd7f42efa52d29"
    tags = {
        Name = "day3-nat-public2-ap-northeast-2b"
    }
    allocation_id = "eipalloc-0b504b1eb5d724bd5"
}

resource "aws_nat_gateway" "EC2NatGateway2" {
    subnet_id = "subnet-01c96e4762e568238"
    tags = {
        Name = "day3-nat-public1-ap-northeast-2a"
    }
    allocation_id = "eipalloc-0aef350fa2f172046"
}

resource "aws_nat_gateway" "EC2NatGateway3" {
    subnet_id = "subnet-07f8030461b6aac64"
    tags = {
        Name = "day3-nat-public3-ap-northeast-2c"
    }
    allocation_id = "eipalloc-075e50b4bd083e5a6"
}

resource "aws_vpc_endpoint" "EC2VPCEndpoint" {
    vpc_endpoint_type = "Interface"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    service_name = "com.amazonaws.elasticache.serverless.ap-northeast-2.vpce-svc-0644bc816be44df2e"
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
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
    private_dns_enabled = false
    security_group_ids = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_vpc_endpoint" "EC2VPCEndpoint2" {
    vpc_endpoint_type = "Interface"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    service_name = "com.amazonaws.elasticache.serverless.ap-northeast-2.vpce-svc-0d3212f4fda0fbfe7"
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
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
    private_dns_enabled = false
    security_group_ids = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_vpc_endpoint" "EC2VPCEndpoint3" {
    vpc_endpoint_type = "Interface"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    service_name = "com.amazonaws.elasticache.serverless.ap-northeast-2.vpce-svc-0f9c7798e2dc91ede"
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
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
    private_dns_enabled = false
    security_group_ids = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation" {
    route_table_id = "rtb-0f501161dc6b7ef8a"
    subnet_id = "subnet-05ed591a8b84b42c2"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation2" {
    route_table_id = "rtb-08733264166cc617e"
    subnet_id = "subnet-08144f18ea0fc04b2"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation3" {
    route_table_id = "rtb-08e4da12c50b94ed9"
    subnet_id = "subnet-07f8030461b6aac64"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation4" {
    route_table_id = "rtb-08e4da12c50b94ed9"
    subnet_id = "subnet-01c96e4762e568238"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation5" {
    route_table_id = "rtb-08e4da12c50b94ed9"
    subnet_id = "subnet-058dd7f42efa52d29"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation6" {
    route_table_id = "rtb-0fcd571a0515089dc"
    subnet_id = "subnet-07b66daa182167f3c"
}

resource "aws_route53_zone" "Route53HostedZone" {
    name = "itnsa.cloud."
}

resource "aws_route53_zone" "Route53HostedZone2" {
    name = "worldskills.cloud."
}

resource "aws_route53_zone" "Route53HostedZone3" {
    name = "awssoft.org."
}

resource "aws_route53_record" "Route53RecordSet" {
    name = "itnsa.cloud."
    type = "NS"
    ttl = 172800
    records = [
        "ns-301.awsdns-37.com.",
        "ns-754.awsdns-30.net.",
        "ns-1944.awsdns-51.co.uk.",
        "ns-1442.awsdns-52.org."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet2" {
    name = "itnsa.cloud."
    type = "SOA"
    ttl = 900
    records = [
        "ns-301.awsdns-37.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet3" {
    name = "itnsa.cloud."
    type = "TXT"
    ttl = 300
    records = [
        "\"v=spf1 include:amazonses.com ~all\""
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet4" {
    name = "_706e74212a0e6e60b7208ce14aa44752.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "_e5d8728699a53e2f99d7436ff3794ccc.lkwmzfhcjn.acm-validations.aws."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet5" {
    name = "_amazonses.itnsa.cloud."
    type = "TXT"
    ttl = 300
    records = [
        "\"y4CeT2Vm2v2M90CSha8ePMwX89ZTIkckbAh7FnZGEL8=\""
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet6" {
    name = "_dmarc.itnsa.cloud."
    type = "TXT"
    ttl = 300
    records = [
        "\"v=DMARC1;p=quarantine;pct=100;fo=1\""
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet7" {
    name = "23atb4hkjrty36u72d4aen7kxd74ti5d._domainkey.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "23atb4hkjrty36u72d4aen7kxd74ti5d.dkim.amazonses.com."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet8" {
    name = "6rwn5xcrcsgzy4qnvkwsye2szfku2xrk._domainkey.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "6rwn5xcrcsgzy4qnvkwsye2szfku2xrk.dkim.amazonses.com."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet9" {
    name = "n2cplo3stim3unrpcu6mirbgocx5uynp._domainkey.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "n2cplo3stim3unrpcu6mirbgocx5uynp.dkim.amazonses.com."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet10" {
    name = "api.itnsa.cloud."
    type = "CNAME"
    ttl = 0
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet11" {
    name = "autodiscover.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "autodiscover.mail.us-east-1.awsapps.com."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet12" {
    name = "ctf.itnsa.cloud."
    type = "A"
    alias {
        name = "edge.itnsa.cloud."
        zone_id = "Z051584029F9RVFYF4VDP"
        evaluate_target_health = true
    }
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet13" {
    name = "edge.itnsa.cloud."
    type = "A"
    ttl = 300
    records = [
        "116.41.254.160"
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet14" {
    name = "ie-skills.itnsa.cloud."
    type = "CNAME"
    ttl = 0
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet15" {
    name = "iso.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet16" {
    name = "_068a1c8f5e8e642f5708488657e79239.meal.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "_3093ce0899928012b343f034c08e615c.wsqgzrdths.acm-validations.aws."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet17" {
    name = "nas.itnsa.cloud."
    type = "CNAME"
    ttl = 0
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet18" {
    name = "rds.itnsa.cloud."
    type = "CNAME"
    ttl = 60
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet19" {
    name = "ssh.itnsa.cloud."
    type = "A"
    alias {
        name = "edge.itnsa.cloud."
        zone_id = "Z051584029F9RVFYF4VDP"
        evaluate_target_health = true
    }
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet20" {
    name = "vpn.itnsa.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "edge.itnsa.cloud."
    ]
    zone_id = "Z051584029F9RVFYF4VDP"
}

resource "aws_route53_record" "Route53RecordSet21" {
    name = "worldskills.cloud."
    type = "NS"
    ttl = 172800
    records = [
        "ns-865.awsdns-44.net.",
        "ns-1873.awsdns-42.co.uk.",
        "ns-1103.awsdns-09.org.",
        "ns-458.awsdns-57.com."
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet22" {
    name = "worldskills.cloud."
    type = "SOA"
    ttl = 900
    records = [
        "ns-865.awsdns-44.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet23" {
    name = "_0b3d690d0cea5a8305af42f50a8ba303.worldskills.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "_6b7940b35d22ef7fbd4e226e2118adb5.vjldqjsdcd.acm-validations.aws."
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet24" {
    name = "_2f7c09095736094796e5e2e02ebd354e.api.worldskills.cloud."
    type = "CNAME"
    ttl = 300
    records = [
        "_4b2d27875bfd3f40f901f1e48bcf56c5.wsqgzrdths.acm-validations.aws."
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet25" {
    name = "ie.worldskills.cloud."
    type = "A"
    ttl = 300
    records = [
        "116.41.254.160"
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet26" {
    name = "mecha.worldskills.cloud."
    type = "A"
    ttl = 300
    records = [
        "116.41.254.160"
    ]
    zone_id = "Z06376413LHBJ8LCHVBE9"
}

resource "aws_route53_record" "Route53RecordSet27" {
    name = "awssoft.org."
    type = "NS"
    ttl = 172800
    records = [
        "ns-782.awsdns-33.net.",
        "ns-141.awsdns-17.com.",
        "ns-1169.awsdns-18.org.",
        "ns-1537.awsdns-00.co.uk."
    ]
    zone_id = "Z0988100UJ74I2LZWGV1"
}

resource "aws_route53_record" "Route53RecordSet28" {
    name = "awssoft.org."
    type = "SOA"
    ttl = 900
    records = [
        "ns-782.awsdns-33.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
    ]
    zone_id = "Z0988100UJ74I2LZWGV1"
}

resource "aws_route53_record" "Route53RecordSet29" {
    name = "www.awssoft.org."
    type = "CNAME"
    ttl = 300
    records = [
        "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
    ]
    zone_id = "Z0988100UJ74I2LZWGV1"
}

resource "aws_instance" "EC2Instance" {
    ami = "ami-05f11164c598ea079"
    instance_type = "t3.large"
    availability_zone = "ap-northeast-2c"
    tenancy = "default"
    subnet_id = "subnet-07b66daa182167f3c"
    ebs_optimized = false
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}",
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 80
        volume_type = "gp3"
        delete_on_termination = true
    }
    user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9ub2RlLmVrcy5hd3MKCi0tLQphcGlWZXJzaW9uOiBub2RlLmVrcy5hd3MvdjFhbHBoYTEKa2luZDogTm9kZUNvbmZpZwpzcGVjOgogIGNsdXN0ZXI6CiAgICBhcGlTZXJ2ZXJFbmRwb2ludDogaHR0cHM6Ly80Nzc3OTMyMkVFMjJGNjk0RkE1MEE3OTVDQ0M5ODU5RS55bDQuYXAtbm9ydGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KICAgIGNlcnRpZmljYXRlQXV0aG9yaXR5OiBMUzB0TFMxQ1JVZEpUaUJEUlZKVVNVWkpRMEZVUlMwdExTMHRDazFKU1VSQ1ZFTkRRV1V5WjBGM1NVSkJaMGxKVEdoVVNTOTNZMVUwVEhkM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFYZEdWRVZVVFVKRlIwRXhWVVVLUVhoTlMyRXpWbWxhV0VwMVdsaFNiR042UVdWR2R6QjVUbFJCZUUxcVZYZE9WRTAwVFZSa1lVWjNNSHBPVkVGNFRXcE5kMDVVVVhwTlZHUmhUVUpWZUFwRmVrRlNRbWRPVmtKQlRWUkRiWFF4V1cxV2VXSnRWakJhV0UxM1oyZEZhVTFCTUVkRFUzRkhVMGxpTTBSUlJVSkJVVlZCUVRSSlFrUjNRWGRuWjBWTENrRnZTVUpCVVVSRlZYSlpkQzh2Y1ZSM1MzVkxSbFZLZVRCalV5dHRkRzVJYjJSS2VIVk9kVlI1VVZwaFpIWk5lRE5PT0VjcldrSjNPVlZNYldndmFHUUtUbVIxZUZSeWFFUnZhRlJUTDBsNmVIZzFORlJvWW5abllXOUdNR2xPWXpFelRXdEhUbk12WlZsbWNFMHZUMHhtYTB4SGJuQlRORVJrWWxGWlZqQlNXUW8zU1hndkswTjZZVzVrZVhsdVZHRnRZMk5xWldSM1pFbDJUbFZzV1VwVU1VeG9WM2xNY1dvM1FUbHBWWHB6SzNWSlQxTlBUM05JZGpKM0wzUlhRbkZKQ25CblNqTXlRamRPUml0RFZUTTRVekV2YmpodFUxUlZUVU5FYVhjMFYyWkdWMGRTT0hSYWIxRjZRVlV6VUdOeVZYTTJObkJyU1VWU1NrOTZWbTlGZG5rS1VrdE9NRGwzY2pGaGNGaGFTRXBXTVVSbVFqVk5ka0ZRTDNkbmJXMHZMM0I1TlRWcVZuRTROemhWUVhoMFRXZE9NSEpaTkhaM2RXSXlZVk16VEVzeWFRcDZhSFZqYUdNeUt5dFpPRkV5WkVGRVJWRjJaV052WTJGb2JuTkVRV2ROUWtGQlIycFhWRUpZVFVFMFIwRXhWV1JFZDBWQ0wzZFJSVUYzU1VOd1JFRlFDa0puVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlJaVlZhWTJSRlRHY3dSMnh6WkZGeWRVeE9TbFpNUVZkV0syRkVRVllLUW1kT1ZraFNSVVZFYWtGTloyZHdjbVJYU214amJUVnNaRWRXZWsxQk1FZERVM0ZIVTBsaU0wUlJSVUpEZDFWQlFUUkpRa0ZSUTNoUlZEWlpiVEJKWlFwbWVrRm5ZekZ4TW1KdWJuVmxZbGM1UjBNMFpqRktlbGh5UlV4dU9GbHdRbTVvVXl0SVIxQlJiR2hJU0RRdmRHVnNNVmc0Y0ZNM1FreHZjV0l6TjJreUNqQk9ZbXBTWVVWTFowaEZOV3RMU21KdFpUbEZPVmxVWm5aMFRIZzNVMDlqTVZwM2MwZENWVlpFVFRKNlpFSktZVVoyT0cxQ1VUSmpaR1ZOVVVsM2NXNEtNMDV4TUc1Uk1YQkRaVWx0Y1RGVEwyTnhXVlZIVVhWcWNVdFRjbkZDTmxFNUx6UkNUazVwVUU1SGVXaHViV3RRVkdORGNHaE1aSE4zYjJaNE1YbDNSQXBIVFdSSFEycFpObWxDYm1KMkwzaE9URFZOZVRKdVNIWlFRMmhwVm10VlVtNUROV0l5UVhrNVRGUk9iMnh2UkdkTFF6Qk1PRTluUnpKQ1oxRXljWHB5Q2xVeU5HSjNiamxqZERSd2MwbzNkVVYxWlN0NldWaHVWVU42VUZSaWRqVXZOWFpLZW1OUFNsb3pUbmh3TW1abWNuRmtPVWRGUzFSd2VVczNhV05TUjFrS2QyYzRWMWQwZGpSV2RVZGhDaTB0TFMwdFJVNUVJRU5GVWxSSlJrbERRVlJGTFMwdExTMEsKICAgIGNpZHI6IDE3Mi4yMC4wLjAvMTYKICAgIG5hbWU6IGRheTMtY2x1c3RlcgogIGt1YmVsZXQ6CiAgICBjb25maWc6CiAgICAgIG1heFBvZHM6IDM1CiAgICAgIGNsdXN0ZXJETlM6CiAgICAgIC0gMTcyLjIwLjAuMTAKICAgIGZsYWdzOgogICAgLSAiLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9zb3VyY2VMYXVuY2hUZW1wbGF0ZVZlcnNpb249MSxhbHBoYS5la3NjdGwuaW8vY2x1c3Rlci1uYW1lPWRheTMtY2x1c3RlcixhbHBoYS5la3NjdGwuaW8vbm9kZWdyb3VwLW5hbWU9ZGF5My1hcHAtbmcscm9sZT1hcHBzLGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMDVmMTExNjRjNTk4ZWEwNzksZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9ZGF5My1hcHAtbmcsZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVJZD1sdC0wYjBiYjc1YjYzMmM5ZTZlNSIKCi0tLy8tLQ=="
    iam_instance_profile = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    tags = {
        Name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-name = "day3-app-ng"
        eks:cluster-name = "day3-cluster"
        k8s.io/cluster-autoscaler/day3-cluster = "owned"
        kubernetes.io/cluster/day3-cluster = "owned"
        eks:nodegroup-name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-type = "managed"
        k8s.io/cluster-autoscaler/enabled = "true"
    }
}

resource "aws_instance" "EC2Instance2" {
    ami = "ami-05f11164c598ea079"
    instance_type = "t3.large"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-05ed591a8b84b42c2"
    ebs_optimized = false
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}",
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 80
        volume_type = "gp3"
        delete_on_termination = true
    }
    user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9ub2RlLmVrcy5hd3MKCi0tLQphcGlWZXJzaW9uOiBub2RlLmVrcy5hd3MvdjFhbHBoYTEKa2luZDogTm9kZUNvbmZpZwpzcGVjOgogIGNsdXN0ZXI6CiAgICBhcGlTZXJ2ZXJFbmRwb2ludDogaHR0cHM6Ly80Nzc3OTMyMkVFMjJGNjk0RkE1MEE3OTVDQ0M5ODU5RS55bDQuYXAtbm9ydGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KICAgIGNlcnRpZmljYXRlQXV0aG9yaXR5OiBMUzB0TFMxQ1JVZEpUaUJEUlZKVVNVWkpRMEZVUlMwdExTMHRDazFKU1VSQ1ZFTkRRV1V5WjBGM1NVSkJaMGxKVEdoVVNTOTNZMVUwVEhkM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFYZEdWRVZVVFVKRlIwRXhWVVVLUVhoTlMyRXpWbWxhV0VwMVdsaFNiR042UVdWR2R6QjVUbFJCZUUxcVZYZE9WRTAwVFZSa1lVWjNNSHBPVkVGNFRXcE5kMDVVVVhwTlZHUmhUVUpWZUFwRmVrRlNRbWRPVmtKQlRWUkRiWFF4V1cxV2VXSnRWakJhV0UxM1oyZEZhVTFCTUVkRFUzRkhVMGxpTTBSUlJVSkJVVlZCUVRSSlFrUjNRWGRuWjBWTENrRnZTVUpCVVVSRlZYSlpkQzh2Y1ZSM1MzVkxSbFZLZVRCalV5dHRkRzVJYjJSS2VIVk9kVlI1VVZwaFpIWk5lRE5PT0VjcldrSjNPVlZNYldndmFHUUtUbVIxZUZSeWFFUnZhRlJUTDBsNmVIZzFORlJvWW5abllXOUdNR2xPWXpFelRXdEhUbk12WlZsbWNFMHZUMHhtYTB4SGJuQlRORVJrWWxGWlZqQlNXUW8zU1hndkswTjZZVzVrZVhsdVZHRnRZMk5xWldSM1pFbDJUbFZzV1VwVU1VeG9WM2xNY1dvM1FUbHBWWHB6SzNWSlQxTlBUM05JZGpKM0wzUlhRbkZKQ25CblNqTXlRamRPUml0RFZUTTRVekV2YmpodFUxUlZUVU5FYVhjMFYyWkdWMGRTT0hSYWIxRjZRVlV6VUdOeVZYTTJObkJyU1VWU1NrOTZWbTlGZG5rS1VrdE9NRGwzY2pGaGNGaGFTRXBXTVVSbVFqVk5ka0ZRTDNkbmJXMHZMM0I1TlRWcVZuRTROemhWUVhoMFRXZE9NSEpaTkhaM2RXSXlZVk16VEVzeWFRcDZhSFZqYUdNeUt5dFpPRkV5WkVGRVJWRjJaV052WTJGb2JuTkVRV2ROUWtGQlIycFhWRUpZVFVFMFIwRXhWV1JFZDBWQ0wzZFJSVUYzU1VOd1JFRlFDa0puVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlJaVlZhWTJSRlRHY3dSMnh6WkZGeWRVeE9TbFpNUVZkV0syRkVRVllLUW1kT1ZraFNSVVZFYWtGTloyZHdjbVJYU214amJUVnNaRWRXZWsxQk1FZERVM0ZIVTBsaU0wUlJSVUpEZDFWQlFUUkpRa0ZSUTNoUlZEWlpiVEJKWlFwbWVrRm5ZekZ4TW1KdWJuVmxZbGM1UjBNMFpqRktlbGh5UlV4dU9GbHdRbTVvVXl0SVIxQlJiR2hJU0RRdmRHVnNNVmc0Y0ZNM1FreHZjV0l6TjJreUNqQk9ZbXBTWVVWTFowaEZOV3RMU21KdFpUbEZPVmxVWm5aMFRIZzNVMDlqTVZwM2MwZENWVlpFVFRKNlpFSktZVVoyT0cxQ1VUSmpaR1ZOVVVsM2NXNEtNMDV4TUc1Uk1YQkRaVWx0Y1RGVEwyTnhXVlZIVVhWcWNVdFRjbkZDTmxFNUx6UkNUazVwVUU1SGVXaHViV3RRVkdORGNHaE1aSE4zYjJaNE1YbDNSQXBIVFdSSFEycFpObWxDYm1KMkwzaE9URFZOZVRKdVNIWlFRMmhwVm10VlVtNUROV0l5UVhrNVRGUk9iMnh2UkdkTFF6Qk1PRTluUnpKQ1oxRXljWHB5Q2xVeU5HSjNiamxqZERSd2MwbzNkVVYxWlN0NldWaHVWVU42VUZSaWRqVXZOWFpLZW1OUFNsb3pUbmh3TW1abWNuRmtPVWRGUzFSd2VVczNhV05TUjFrS2QyYzRWMWQwZGpSV2RVZGhDaTB0TFMwdFJVNUVJRU5GVWxSSlJrbERRVlJGTFMwdExTMEsKICAgIGNpZHI6IDE3Mi4yMC4wLjAvMTYKICAgIG5hbWU6IGRheTMtY2x1c3RlcgogIGt1YmVsZXQ6CiAgICBjb25maWc6CiAgICAgIG1heFBvZHM6IDM1CiAgICAgIGNsdXN0ZXJETlM6CiAgICAgIC0gMTcyLjIwLjAuMTAKICAgIGZsYWdzOgogICAgLSAiLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9zb3VyY2VMYXVuY2hUZW1wbGF0ZVZlcnNpb249MSxhbHBoYS5la3NjdGwuaW8vY2x1c3Rlci1uYW1lPWRheTMtY2x1c3RlcixhbHBoYS5la3NjdGwuaW8vbm9kZWdyb3VwLW5hbWU9ZGF5My1hcHAtbmcscm9sZT1hcHBzLGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMDVmMTExNjRjNTk4ZWEwNzksZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9ZGF5My1hcHAtbmcsZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVJZD1sdC0wYjBiYjc1YjYzMmM5ZTZlNSIKCi0tLy8tLQ=="
    iam_instance_profile = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    tags = {
        k8s.io/cluster-autoscaler/enabled = "true"
        alpha.eksctl.io/nodegroup-type = "managed"
        kubernetes.io/cluster/day3-cluster = "owned"
        eks:cluster-name = "day3-cluster"
        k8s.io/cluster-autoscaler/day3-cluster = "owned"
        Name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-name = "day3-app-ng"
        eks:nodegroup-name = "day3-app-ng"
    }
}

resource "aws_instance" "EC2Instance3" {
    ami = "ami-055811530249cf67e"
    instance_type = "t3.small"
    key_name = "day3"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-01c96e4762e568238"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole2.name}"
    tags = {
        Name = "day3-bastion"
    }
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer" {
    name = "day3-ingress-alb"
    internal = false
    load_balancer_type = "application"
    subnets = [
        "subnet-01c96e4762e568238",
        "subnet-058dd7f42efa52d29",
        "subnet-07f8030461b6aac64"
    ]
    security_groups = [
        "${aws_security_group.EC2SecurityGroup4.id}",
        "${aws_security_group.EC2SecurityGroup.id}"
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
    load_balancer_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:loadbalancer/app/day3-ingress-alb/164dd0d555c2f353"
    port = 80
    protocol = "HTTP"
    tags = 
    default_action {
        fixed_response {
            content_type = "text/plain"
            status_code = "404"
        }
        type = "fixed-response"
    }
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule" {
    priority = "1"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:listener/app/day3-ingress-alb/164dd0d555c2f353/3e4709f86b74a256"
    condition {
        path_pattern {
            values = [
                "/v1/health",
                "/v1/health/*"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-serverse-18ce4ad065/5098e091afc3443f"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-serverse-18ce4ad065/5098e091afc3443f"
                    weight = 1
                }
            ]
            stickiness {
                enabled = false
            }
        }
    }
    tags = 
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule2" {
    priority = "2"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:listener/app/day3-ingress-alb/164dd0d555c2f353/3e4709f86b74a256"
    condition {
        
        query_string {
            key = "name"
            value = "*"
        }
        
        path_pattern {
            values = [
                "/v1/employee"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-getservi-68c4cbfaea/fb51d1563218f17a"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-getservi-68c4cbfaea/fb51d1563218f17a"
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
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:listener/app/day3-ingress-alb/164dd0d555c2f353/3e4709f86b74a256"
    condition {
        path_pattern {
            values = [
                "/v1/employee/strike",
                "/v1/employee/strike/*"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-getservi-68c4cbfaea/fb51d1563218f17a"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-getservi-68c4cbfaea/fb51d1563218f17a"
                    weight = 1
                }
            ]
            stickiness {
                enabled = false
            }
        }
    }
    tags = 
}

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule4" {
    priority = "4"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:listener/app/day3-ingress-alb/164dd0d555c2f353/3e4709f86b74a256"
    condition {
        path_pattern {
            values = [
                "/v1/employee"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-manservi-b5d66e1fe5/18ed9e308b6b5755"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-manservi-b5d66e1fe5/18ed9e308b6b5755"
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

resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule5" {
    priority = "5"
    listener_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:listener/app/day3-ingress-alb/164dd0d555c2f353/3e4709f86b74a256"
    condition {
        
        query_string {
            key = "name"
            value = "*"
        }
        
        path_pattern {
            values = [
                "/v1/employee/strike"
            ]
        }
    }
    action {
        type = "forward"
        target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-manservi-b5d66e1fe5/18ed9e308b6b5755"
        forward {
            target_group = [
                {
                    arn = "arn:aws:elasticloadbalancing:ap-northeast-2:226347592148:targetgroup/k8s-day3-manservi-b5d66e1fe5/18ed9e308b6b5755"
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

resource "aws_autoscaling_group" "AutoScalingAutoScalingGroup" {
    name = "eks-day3-app-ng-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    mixed_instances_policy {
        instances_distribution {
            on_demand_allocation_strategy = "prioritized"
            on_demand_base_capacity = 0
            on_demand_percentage_above_base_capacity = 100
            spot_allocation_strategy = "lowest-price"
            spot_instance_pools = 2
        }
        launch_template {
            launch_template_specification {
                launch_template_id = "lt-09a7dc064278f5574"
                launch_template_name = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
                version = "1"
            }
            override = [
                {
                    instance_type = "t3.large"
                }
            ]
        }
    }
    min_size = 2
    max_size = 20
    desired_capacity = 2
    default_cooldown = 300
    availability_zones = [
        "ap-northeast-2a",
        "ap-northeast-2b",
        "ap-northeast-2c"
    ]
    health_check_type = "EC2"
    health_check_grace_period = 15
    vpc_zone_identifier = [
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
    termination_policies = [
        "AllocationStrategy",
        "OldestLaunchTemplate",
        "OldestInstance"
    ]
    service_linked_role_arn = "arn:aws:iam::226347592148:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"
    metrics_granularity = "1Minute"
    enabled_metrics = [
        "WarmPoolMinSize",
        "GroupDesiredCapacity",
        "GroupTotalCapacity",
        "GroupAndWarmPoolTotalCapacity",
        "GroupTerminatingCapacity",
        "GroupTerminatingInstances",
        "GroupMinSize",
        "GroupStandbyCapacity",
        "WarmPoolDesiredCapacity",
        "GroupAndWarmPoolDesiredCapacity",
        "GroupMaxSize",
        "GroupPendingCapacity",
        "WarmPoolTerminatingCapacity",
        "GroupInServiceCapacity",
        "WarmPoolTotalCapacity",
        "WarmPoolWarmedCapacity",
        "GroupInServiceInstances",
        "GroupPendingInstances",
        "GroupStandbyInstances",
        "WarmPoolPendingCapacity",
        "GroupTotalInstances"
    ]
    tag {
        key = "eks:cluster-name"
        value = "day3-cluster"
        propagate_at_launch = true
    }
    tag {
        key = "eks:nodegroup-name"
        value = "day3-app-ng"
        propagate_at_launch = true
    }
    tag {
        key = "k8s.io/cluster-autoscaler/day3-cluster"
        value = "owned"
        propagate_at_launch = true
    }
    tag {
        key = "k8s.io/cluster-autoscaler/enabled"
        value = "true"
        propagate_at_launch = true
    }
    tag {
        key = "kubernetes.io/cluster/day3-cluster"
        value = "owned"
        propagate_at_launch = true
    }
}

resource "aws_autoscaling_lifecycle_hook" "AutoScalingLifecycleHook" {
    name = "Launch-LC-Hook"
    autoscaling_group_name = "eks-day3-app-ng-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    notification_target_arn = "arn:aws:sns:ap-northeast-2:823778094414:eks-asg-lifecycle-hook-topic"
    heartbeat_timeout = 1800
    default_result = "CONTINUE"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
}

resource "aws_autoscaling_lifecycle_hook" "AutoScalingLifecycleHook2" {
    name = "Terminate-LC-Hook"
    autoscaling_group_name = "eks-day3-app-ng-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    notification_target_arn = "arn:aws:sns:ap-northeast-2:823778094414:eks-asg-lifecycle-hook-topic"
    heartbeat_timeout = 1800
    default_result = "CONTINUE"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
}

resource "aws_security_group" "EC2SecurityGroup" {
    description = "[k8s] Shared Backend SecurityGroup for LoadBalancer"
    name = "k8s-traffic-day3cluster-74871cc4d5"
    tags = {
        elbv2.k8s.aws/resource = "backend-sg"
        elbv2.k8s.aws/cluster = "day3-cluster"
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

resource "aws_security_group" "EC2SecurityGroup2" {
    description = "day3-aurora-mysql-sg"
    name = "day3-aurora-mysql-sg"
    tags = {
        Name = "day3-aurora-mysql-sg"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
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

resource "aws_security_group" "EC2SecurityGroup3" {
    description = "launch-wizard-1 created 2025-01-25T04:42:25.764Z"
    name = "day3-bastion-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
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

resource "aws_security_group" "EC2SecurityGroup4" {
    description = "[k8s] Managed SecurityGroup for LoadBalancer"
    name = "k8s-day3-day3ingr-fc86330684"
    tags = {
        elbv2.k8s.aws/cluster = "day3-cluster"
        ingress.k8s.aws/stack = "day3/day3-ingress-alb"
        ingress.k8s.aws/resource = "ManagedLBSecurityGroup"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 80
        protocol = "tcp"
        to_port = 80
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
    description = "Communication between the control plane and worker nodegroups"
    name = "eksctl-day3-cluster-cluster-ControlPlaneSecurityGroup-hWpVWNvvtxM6"
    tags = {
        alpha.eksctl.io/cluster-name = "day3-cluster"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        Name = "eksctl-day3-cluster-cluster/ControlPlaneSecurityGroup"
        alpha.eksctl.io/cluster-oidc-enabled = "true"
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

resource "aws_security_group" "EC2SecurityGroup6" {
    description = "Communication between all nodes in the cluster"
    name = "eksctl-day3-cluster-cluster-ClusterSharedNodeSecurityGroup-UBnjstP5cI0y"
    tags = {
        alpha.eksctl.io/cluster-oidc-enabled = "true"
        Name = "eksctl-day3-cluster-cluster/ClusterSharedNodeSecurityGroup"
        alpha.eksctl.io/cluster-name = "day3-cluster"
        alpha.eksctl.io/eksctl-version = "0.202.0"
        eksctl.cluster.k8s.io/v1alpha1/cluster-name = "day3-cluster"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "sg-0eaf2ddc3ec3c0a5c"
        ]
        description = "Allow nodes to communicate with each other (all ports)"
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup7.id}"
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

resource "aws_security_group" "EC2SecurityGroup7" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-day3-cluster-487268796"
    tags = {
        kubernetes.io/cluster/day3-cluster = "owned"
        karpenter.sh/discovery = "day3-cluster"
        Name = "eks-cluster-sg-day3-cluster-487268796"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup.id}"
        ]
        description = "elbv2.k8s.aws/targetGroupBinding=shared"
        from_port = 8080
        protocol = "tcp"
        to_port = 8081
    }
    ingress {
        security_groups = [
            "sg-0e5388ababcb21091"
        ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    }
    ingress {
        security_groups = [
            "sg-0eaf2ddc3ec3c0a5c"
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

resource "aws_security_group" "EC2SecurityGroup8" {
    description = "launch-wizard-1 created 2025-01-25T05:28:18.715Z"
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
    name = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    tag_specifications {
        resource_type = "volume"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
            eks:nodegroup-name = "day3-app-ng"
            eks:cluster-name = "day3-cluster"
        }
    }
    tag_specifications {
        resource_type = "instance"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
            eks:nodegroup-name = "day3-app-ng"
            eks:cluster-name = "day3-cluster"
        }
    }
    tag_specifications {
        resource_type = "network-interface"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
            eks:nodegroup-name = "day3-app-ng"
            eks:cluster-name = "day3-cluster"
        }
    }
    user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9ub2RlLmVrcy5hd3MKCi0tLQphcGlWZXJzaW9uOiBub2RlLmVrcy5hd3MvdjFhbHBoYTEKa2luZDogTm9kZUNvbmZpZwpzcGVjOgogIGNsdXN0ZXI6CiAgICBhcGlTZXJ2ZXJFbmRwb2ludDogaHR0cHM6Ly80Nzc3OTMyMkVFMjJGNjk0RkE1MEE3OTVDQ0M5ODU5RS55bDQuYXAtbm9ydGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KICAgIGNlcnRpZmljYXRlQXV0aG9yaXR5OiBMUzB0TFMxQ1JVZEpUaUJEUlZKVVNVWkpRMEZVUlMwdExTMHRDazFKU1VSQ1ZFTkRRV1V5WjBGM1NVSkJaMGxKVEdoVVNTOTNZMVUwVEhkM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFYZEdWRVZVVFVKRlIwRXhWVVVLUVhoTlMyRXpWbWxhV0VwMVdsaFNiR042UVdWR2R6QjVUbFJCZUUxcVZYZE9WRTAwVFZSa1lVWjNNSHBPVkVGNFRXcE5kMDVVVVhwTlZHUmhUVUpWZUFwRmVrRlNRbWRPVmtKQlRWUkRiWFF4V1cxV2VXSnRWakJhV0UxM1oyZEZhVTFCTUVkRFUzRkhVMGxpTTBSUlJVSkJVVlZCUVRSSlFrUjNRWGRuWjBWTENrRnZTVUpCVVVSRlZYSlpkQzh2Y1ZSM1MzVkxSbFZLZVRCalV5dHRkRzVJYjJSS2VIVk9kVlI1VVZwaFpIWk5lRE5PT0VjcldrSjNPVlZNYldndmFHUUtUbVIxZUZSeWFFUnZhRlJUTDBsNmVIZzFORlJvWW5abllXOUdNR2xPWXpFelRXdEhUbk12WlZsbWNFMHZUMHhtYTB4SGJuQlRORVJrWWxGWlZqQlNXUW8zU1hndkswTjZZVzVrZVhsdVZHRnRZMk5xWldSM1pFbDJUbFZzV1VwVU1VeG9WM2xNY1dvM1FUbHBWWHB6SzNWSlQxTlBUM05JZGpKM0wzUlhRbkZKQ25CblNqTXlRamRPUml0RFZUTTRVekV2YmpodFUxUlZUVU5FYVhjMFYyWkdWMGRTT0hSYWIxRjZRVlV6VUdOeVZYTTJObkJyU1VWU1NrOTZWbTlGZG5rS1VrdE9NRGwzY2pGaGNGaGFTRXBXTVVSbVFqVk5ka0ZRTDNkbmJXMHZMM0I1TlRWcVZuRTROemhWUVhoMFRXZE9NSEpaTkhaM2RXSXlZVk16VEVzeWFRcDZhSFZqYUdNeUt5dFpPRkV5WkVGRVJWRjJaV052WTJGb2JuTkVRV2ROUWtGQlIycFhWRUpZVFVFMFIwRXhWV1JFZDBWQ0wzZFJSVUYzU1VOd1JFRlFDa0puVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlJaVlZhWTJSRlRHY3dSMnh6WkZGeWRVeE9TbFpNUVZkV0syRkVRVllLUW1kT1ZraFNSVVZFYWtGTloyZHdjbVJYU214amJUVnNaRWRXZWsxQk1FZERVM0ZIVTBsaU0wUlJSVUpEZDFWQlFUUkpRa0ZSUTNoUlZEWlpiVEJKWlFwbWVrRm5ZekZ4TW1KdWJuVmxZbGM1UjBNMFpqRktlbGh5UlV4dU9GbHdRbTVvVXl0SVIxQlJiR2hJU0RRdmRHVnNNVmc0Y0ZNM1FreHZjV0l6TjJreUNqQk9ZbXBTWVVWTFowaEZOV3RMU21KdFpUbEZPVmxVWm5aMFRIZzNVMDlqTVZwM2MwZENWVlpFVFRKNlpFSktZVVoyT0cxQ1VUSmpaR1ZOVVVsM2NXNEtNMDV4TUc1Uk1YQkRaVWx0Y1RGVEwyTnhXVlZIVVhWcWNVdFRjbkZDTmxFNUx6UkNUazVwVUU1SGVXaHViV3RRVkdORGNHaE1aSE4zYjJaNE1YbDNSQXBIVFdSSFEycFpObWxDYm1KMkwzaE9URFZOZVRKdVNIWlFRMmhwVm10VlVtNUROV0l5UVhrNVRGUk9iMnh2UkdkTFF6Qk1PRTluUnpKQ1oxRXljWHB5Q2xVeU5HSjNiamxqZERSd2MwbzNkVVYxWlN0NldWaHVWVU42VUZSaWRqVXZOWFpLZW1OUFNsb3pUbmh3TW1abWNuRmtPVWRGUzFSd2VVczNhV05TUjFrS2QyYzRWMWQwZGpSV2RVZGhDaTB0TFMwdFJVNUVJRU5GVWxSSlJrbERRVlJGTFMwdExTMEsKICAgIGNpZHI6IDE3Mi4yMC4wLjAvMTYKICAgIG5hbWU6IGRheTMtY2x1c3RlcgogIGt1YmVsZXQ6CiAgICBjb25maWc6CiAgICAgIG1heFBvZHM6IDM1CiAgICAgIGNsdXN0ZXJETlM6CiAgICAgIC0gMTcyLjIwLjAuMTAKICAgIGZsYWdzOgogICAgLSAiLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9zb3VyY2VMYXVuY2hUZW1wbGF0ZVZlcnNpb249MSxhbHBoYS5la3NjdGwuaW8vY2x1c3Rlci1uYW1lPWRheTMtY2x1c3RlcixhbHBoYS5la3NjdGwuaW8vbm9kZWdyb3VwLW5hbWU9ZGF5My1hcHAtbmcscm9sZT1hcHBzLGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMDVmMTExNjRjNTk4ZWEwNzksZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9ZGF5My1hcHAtbmcsZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVJZD1sdC0wYjBiYjc1YjYzMmM5ZTZlNSIKCi0tLy8tLQ=="
    iam_instance_profile {
        name = "eks-e2ca4e02-248f-cb7e-45a7-6fa9b0230007"
    }
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
    image_id = "ami-05f11164c598ea079"
}

resource "aws_launch_template" "EC2LaunchTemplate2" {
    name = "eksctl-day3-cluster-nodegroup-day3-app-ng"
    tag_specifications {
        resource_type = "instance"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
        }
    }
    tag_specifications {
        resource_type = "volume"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
        }
    }
    tag_specifications {
        resource_type = "network-interface"
        tags {
            Name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-name = "day3-app-ng"
            alpha.eksctl.io/nodegroup-type = "managed"
        }
    }
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup" {
    health_check {
        interval = 5
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 2
        unhealthy_threshold = 2
        healthy_threshold = 2
        matcher = "200"
    }
    port = 8081
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "k8s-day3-getservi-68c4cbfaea"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup2" {
    health_check {
        interval = 5
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 2
        unhealthy_threshold = 2
        healthy_threshold = 2
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "k8s-day3-manservi-b5d66e1fe5"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup3" {
    health_check {
        interval = 5
        path = "/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 2
        unhealthy_threshold = 2
        healthy_threshold = 2
        matcher = "200"
    }
    port = 8080
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    name = "k8s-day3-serverse-18ce4ad065"
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
    availability_zone = "ap-northeast-2c"
    encrypted = true
    size = 80
    type = "gp3"
    snapshot_id = "snap-066e6f3d8729af4fc"
    kms_key_id = "arn:aws:kms:ap-northeast-2:226347592148:key/8e086fd7-798c-4fed-9af8-c685be08c480"
    tags = {
        Name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-type = "managed"
        eks:cluster-name = "day3-cluster"
        eks:nodegroup-name = "day3-app-ng"
    }
}

resource "aws_ebs_volume" "EC2Volume3" {
    availability_zone = "ap-northeast-2a"
    encrypted = true
    size = 80
    type = "gp3"
    snapshot_id = "snap-066e6f3d8729af4fc"
    kms_key_id = "arn:aws:kms:ap-northeast-2:226347592148:key/8e086fd7-798c-4fed-9af8-c685be08c480"
    tags = {
        alpha.eksctl.io/nodegroup-name = "day3-app-ng"
        alpha.eksctl.io/nodegroup-type = "managed"
        Name = "day3-app-ng"
        eks:cluster-name = "day3-cluster"
        eks:nodegroup-name = "day3-app-ng"
    }
}

resource "aws_volume_attachment" "EC2VolumeAttachment" {
    volume_id = "vol-070ad54c5e5e56153"
    instance_id = "i-0e806af3b49502552"
    device_name = "/dev/xvda"
}

resource "aws_volume_attachment" "EC2VolumeAttachment2" {
    volume_id = "vol-0ef91b8b78c9bfe58"
    instance_id = "i-016223c414b576245"
    device_name = "/dev/xvda"
}

resource "aws_volume_attachment" "EC2VolumeAttachment3" {
    volume_id = "vol-0548599a22c3140e4"
    instance_id = "i-06346be8a6fc0e60d"
    device_name = "/dev/xvda"
}

resource "aws_network_interface" "EC2NetworkInterface" {
    description = "VPC Endpoint Interface vpce-09faf754a7cf6ef34"
    private_ips = [
        "10.0.156.95"
    ]
    subnet_id = "subnet-08144f18ea0fc04b2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface2" {
    description = "ELB app/day3-ingress-alb/164dd0d555c2f353"
    private_ips = [
        "10.0.19.74"
    ]
    subnet_id = "subnet-058dd7f42efa52d29"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}",
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface3" {
    description = "Interface for NAT Gateway nat-045d0a99901b5f796"
    private_ips = [
        "10.0.24.144"
    ]
    subnet_id = "subnet-058dd7f42efa52d29"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface4" {
    description = "VPC Endpoint Interface vpce-0cccac094d5b5dfe4"
    private_ips = [
        "10.0.158.244"
    ]
    subnet_id = "subnet-08144f18ea0fc04b2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface5" {
    description = "VPC Endpoint Interface vpce-0721bf2d938aa9419"
    private_ips = [
        "10.0.145.72"
    ]
    subnet_id = "subnet-08144f18ea0fc04b2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface6" {
    description = "Amazon EKS day3-cluster"
    private_ips = [
        "10.0.150.120"
    ]
    subnet_id = "subnet-08144f18ea0fc04b2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}",
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface7" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.159.142"
    ]
    subnet_id = "subnet-08144f18ea0fc04b2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface8" {
    description = ""
    private_ips = [
        "10.0.128.212",
        "10.0.143.145",
        "10.0.137.66",
        "10.0.138.19",
        "10.0.131.36",
        "10.0.138.197",
        "10.0.140.246",
        "10.0.129.38",
        "10.0.131.58",
        "10.0.129.251",
        "10.0.134.158",
        "10.0.130.110"
    ]
    subnet_id = "subnet-05ed591a8b84b42c2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface9" {
    description = "VPC Endpoint Interface vpce-0cccac094d5b5dfe4"
    private_ips = [
        "10.0.139.217"
    ]
    subnet_id = "subnet-05ed591a8b84b42c2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface10" {
    description = "Interface for NAT Gateway nat-032f65150a0564cae"
    private_ips = [
        "10.0.3.204"
    ]
    subnet_id = "subnet-01c96e4762e568238"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface11" {
    description = "VPC Endpoint Interface vpce-0721bf2d938aa9419"
    private_ips = [
        "10.0.130.112"
    ]
    subnet_id = "subnet-05ed591a8b84b42c2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface12" {
    description = ""
    private_ips = [
        "10.0.3.196"
    ]
    subnet_id = "subnet-01c96e4762e568238"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface13" {
    description = "aws-K8S-i-06346be8a6fc0e60d"
    private_ips = [
        "10.0.138.114",
        "10.0.139.210",
        "10.0.129.35",
        "10.0.128.51",
        "10.0.143.215",
        "10.0.128.10",
        "10.0.135.44",
        "10.0.129.172",
        "10.0.133.252",
        "10.0.131.78",
        "10.0.138.94",
        "10.0.129.31"
    ]
    subnet_id = "subnet-05ed591a8b84b42c2"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface14" {
    description = "ELB app/day3-ingress-alb/164dd0d555c2f353"
    private_ips = [
        "10.0.6.75"
    ]
    subnet_id = "subnet-01c96e4762e568238"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}",
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface15" {
    description = "VPC Endpoint Interface vpce-09faf754a7cf6ef34"
    private_ips = [
        "10.0.140.115"
    ]
    subnet_id = "subnet-05ed591a8b84b42c2"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface16" {
    description = "Interface for NAT Gateway nat-052e9daee6cc1b4df"
    private_ips = [
        "10.0.45.0"
    ]
    subnet_id = "subnet-07f8030461b6aac64"
    source_dest_check = false
}

resource "aws_network_interface" "EC2NetworkInterface17" {
    description = "VPC Endpoint Interface vpce-0cccac094d5b5dfe4"
    private_ips = [
        "10.0.160.64"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface18" {
    description = ""
    private_ips = [
        "10.0.175.250",
        "10.0.163.160",
        "10.0.160.145",
        "10.0.166.97",
        "10.0.175.50",
        "10.0.165.135",
        "10.0.167.231",
        "10.0.167.24",
        "10.0.175.218",
        "10.0.161.187",
        "10.0.167.62",
        "10.0.175.63"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface19" {
    description = "aws-K8S-i-016223c414b576245"
    private_ips = [
        "10.0.169.193",
        "10.0.171.18",
        "10.0.165.19",
        "10.0.167.180",
        "10.0.172.37",
        "10.0.173.54",
        "10.0.165.71",
        "10.0.167.57",
        "10.0.166.153",
        "10.0.170.155",
        "10.0.167.123",
        "10.0.173.254"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface20" {
    description = "VPC Endpoint Interface vpce-09faf754a7cf6ef34"
    private_ips = [
        "10.0.168.81"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface21" {
    description = "VPC Endpoint Interface vpce-0721bf2d938aa9419"
    private_ips = [
        "10.0.163.238"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "sg-0563657dad9896f5f"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface22" {
    description = "RDSNetworkInterface"
    private_ips = [
        "10.0.164.87"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface23" {
    description = "ELB app/day3-ingress-alb/164dd0d555c2f353"
    private_ips = [
        "10.0.45.6"
    ]
    subnet_id = "subnet-07f8030461b6aac64"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup.id}",
        "${aws_security_group.EC2SecurityGroup4.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface24" {
    description = "Amazon EKS day3-cluster"
    private_ips = [
        "10.0.170.88"
    ]
    subnet_id = "subnet-07b66daa182167f3c"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup5.id}",
        "${aws_security_group.EC2SecurityGroup7.id}"
    ]
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment" {
    network_interface_id = "eni-01b2bac899042482b"
    device_index = 0
    instance_id = "i-06346be8a6fc0e60d"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment2" {
    network_interface_id = "eni-0ddae752bfd238a99"
    device_index = 0
    instance_id = "i-0e806af3b49502552"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment3" {
    network_interface_id = "eni-0c37bc047ceb25e1d"
    device_index = 1
    instance_id = "i-06346be8a6fc0e60d"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment4" {
    network_interface_id = "eni-0d5b1202067d04623"
    device_index = 0
    instance_id = "i-016223c414b576245"
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment5" {
    network_interface_id = "eni-0dfe4e1217a91abfd"
    device_index = 1
    instance_id = "i-016223c414b576245"
}

resource "aws_key_pair" "EC2KeyPair" {
    public_key = "REPLACEME"
    key_name = "day3"
}

resource "aws_rds_cluster" "RDSDBCluster" {
    availability_zones = [
        "ap-northeast-2b",
        "ap-northeast-2c",
        "ap-northeast-2a"
    ]
    backup_retention_period = 1
    database_name = "day3"
    cluster_identifier = "day3-database-1"
    db_cluster_parameter_group_name = "default.aurora-mysql8.0"
    db_subnet_group_name = "day3-aurora-mysql-sgp"
    engine = "aurora-mysql"
    port = 3306
    master_username = "root"
    master_password = "REPLACEME"
    preferred_backup_window = "16:31-17:01"
    preferred_maintenance_window = "fri:17:54-fri:18:24"
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
    storage_encrypted = true
    kms_key_id = "arn:aws:kms:ap-northeast-2:226347592148:key/3c048603-0a8c-4e6d-8c02-798f54fbe98e"
    engine_version = "8.0.mysql_aurora.3.05.2"
    iam_database_authentication_enabled = false
    engine_mode = "provisioned"
    deletion_protection = true
}

resource "aws_rds_cluster_instance" "RDSDBInstance" {
    identifier = "day3-database-1-instance-1"
    instance_class = "db.t3.large"
    engine = "aurora-mysql"
    name = "day3"
    preferred_backup_window = "16:31-17:01"
    availability_zone = "ap-northeast-2b"
    preferred_maintenance_window = "tue:15:10-tue:15:40"
    engine_version = "8.0.mysql_aurora.3.05.2"
    auto_minor_version_upgrade = true
    publicly_accessible = false
    port = 3306
    cluster_identifier = "day3-database-1"
    kms_key_id = "arn:aws:kms:ap-northeast-2:226347592148:key/3c048603-0a8c-4e6d-8c02-798f54fbe98e"
    monitoring_interval = 60
    db_subnet_group_name = "day3-aurora-mysql-sgp"
}

resource "aws_rds_cluster_instance" "RDSDBInstance2" {
    identifier = "day3-database-1-instance-1-ap-northeast-2c"
    instance_class = "db.t3.large"
    engine = "aurora-mysql"
    name = "day3"
    preferred_backup_window = "16:31-17:01"
    availability_zone = "ap-northeast-2c"
    preferred_maintenance_window = "fri:20:25-fri:20:55"
    engine_version = "8.0.mysql_aurora.3.05.2"
    auto_minor_version_upgrade = true
    publicly_accessible = false
    port = 3306
    cluster_identifier = "day3-database-1"
    kms_key_id = "arn:aws:kms:ap-northeast-2:226347592148:key/3c048603-0a8c-4e6d-8c02-798f54fbe98e"
    monitoring_interval = 60
    db_subnet_group_name = "day3-aurora-mysql-sgp"
}

resource "aws_db_subnet_group" "RDSDBSubnetGroup" {
    description = "day3-aurora-mysql-sgp"
    name = "day3-aurora-mysql-sgp"
    subnet_ids = [
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
}

resource "aws_sqs_queue" "SQSQueue" {
    delay_seconds = "0"
    max_message_size = "262144"
    message_retention_seconds = "300"
    receive_wait_time_seconds = "0"
    visibility_timeout_seconds = "30"
    name = "day3-cluster"
}

resource "aws_sqs_queue_policy" "SQSQueuePolicy" {
    policy = "{\"Version\":\"2008-10-17\",\"Id\":\"EC2InterruptionPolicy\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"sqs.amazonaws.com\",\"events.amazonaws.com\"]},\"Action\":\"sqs:SendMessage\",\"Resource\":\"arn:aws:sqs:ap-northeast-2:226347592148:day3-cluster\"},{\"Sid\":\"DenyHTTP\",\"Effect\":\"Deny\",\"Principal\":\"*\",\"Action\":\"sqs:*\",\"Resource\":\"arn:aws:sqs:ap-northeast-2:226347592148:day3-cluster\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}}}]}"
    queue_url = "https://sqs.ap-northeast-2.amazonaws.com/226347592148/day3-cluster"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "RDSOSMetrics"
    retention_in_days = 30
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "RDSOSMetrics"
    name = "db-7FVUE5ITILQLHBCTASWEXKPMVY"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream2" {
    log_group_name = "RDSOSMetrics"
    name = "db-RG2DGOI2VTD4N77JKYRCYTEZEQ"
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
        domain_name = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        
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
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.js"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.jpg"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.jpeg"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.gif"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.css"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
        viewer_protocol_policy = "allow-all"
    }
    ordered_cache_behavior {
        allowed_methods = [
            "HEAD",
            "GET"
        ]
        compress = false
        path_pattern = "/*.png"
        smooth_streaming = false
        target_origin_id = "day3-ingress-alb-74394715.ap-northeast-2.elb.amazonaws.com"
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
    http_version = "http2"
    is_ipv6_enabled = false
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "day3-repo"
}

resource "aws_eks_cluster" "EKSCluster" {
    name = "day3-cluster"
    role_arn = "${aws_iam_role.IAMRole6.arn}"
    version = "1.31"
    vpc_config {
        security_group_ids = [
            "${aws_security_group.EC2SecurityGroup5.id}"
        ]
        subnet_ids = [
            "subnet-058dd7f42efa52d29",
            "subnet-07f8030461b6aac64",
            "subnet-01c96e4762e568238",
            "subnet-05ed591a8b84b42c2",
            "subnet-08144f18ea0fc04b2",
            "subnet-07b66daa182167f3c"
        ]
    }
}

resource "aws_neptune_subnet_group" "NeptuneDBSubnetGroup" {
    name = "day3-aurora-mysql-sgp"
    description = "day3-aurora-mysql-sgp"
    subnet_ids = [
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
}

resource "aws_docdb_subnet_group" "DocDBDBSubnetGroup" {
    name = "day3-aurora-mysql-sgp"
    description = "day3-aurora-mysql-sgp"
    subnet_ids = [
        "subnet-05ed591a8b84b42c2",
        "subnet-08144f18ea0fc04b2",
        "subnet-07b66daa182167f3c"
    ]
}

resource "aws_ses_configuration_set" "SESConfigurationSet" {
    name = "configuration-set"
}

resource "aws_cloudwatch_event_rule" "EventsRule" {
    name = "AutoScalingManagedRule"
    description = "This rule is used to route Instance notifications to EC2 Auto Scaling"
    event_pattern = "{\"source\":[\"aws.ec2\"],\"detail-type\":[\"EC2 Instance Rebalance Recommendation\",\"EC2 Spot Instance Interruption Warning\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget" {
    rule = "AutoScalingManagedRule"
    arn = "arn:aws:events:ap-northeast-2:226347592148:rule/AutoScalingManagedRule"
}

resource "aws_cloudwatch_event_rule" "EventsRule2" {
    name = "Karpenter-day3-cluster-RebalanceRule-L3oo87RvybLe"
    event_pattern = "{\"detail-type\":[\"EC2 Instance Rebalance Recommendation\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget2" {
    rule = "Karpenter-day3-cluster-RebalanceRule-L3oo87RvybLe"
    arn = "arn:aws:events:ap-northeast-2:226347592148:rule/Karpenter-day3-cluster-RebalanceRule-L3oo87RvybLe"
}

resource "aws_cloudwatch_event_rule" "EventsRule3" {
    name = "Karpenter-day3-cluster-InstanceStateChangeRule-oz9LIRxLlnDD"
    event_pattern = "{\"detail-type\":[\"EC2 Instance State-change Notification\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget3" {
    rule = "Karpenter-day3-cluster-InstanceStateChangeRule-oz9LIRxLlnDD"
    arn = "arn:aws:events:ap-northeast-2:226347592148:rule/Karpenter-day3-cluster-InstanceStateChangeRule-oz9LIRxLlnDD"
}

resource "aws_cloudwatch_event_rule" "EventsRule4" {
    name = "Karpenter-day3-cluster-SpotInterruptionRule-QdNqmD5hWauW"
    event_pattern = "{\"detail-type\":[\"EC2 Spot Instance Interruption Warning\"],\"source\":[\"aws.ec2\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget4" {
    rule = "Karpenter-day3-cluster-SpotInterruptionRule-QdNqmD5hWauW"
    arn = "arn:aws:events:ap-northeast-2:226347592148:rule/Karpenter-day3-cluster-SpotInterruptionRule-QdNqmD5hWauW"
}

resource "aws_cloudwatch_event_rule" "EventsRule5" {
    name = "Karpenter-day3-cluster-ScheduledChangeRule-luvVimFX6uxP"
    event_pattern = "{\"detail-type\":[\"AWS Health Event\"],\"source\":[\"aws.health\"]}"
}

resource "aws_cloudwatch_event_target" "CloudWatchEventTarget5" {
    rule = "Karpenter-day3-cluster-ScheduledChangeRule-luvVimFX6uxP"
    arn = "arn:aws:events:ap-northeast-2:226347592148:rule/Karpenter-day3-cluster-ScheduledChangeRule-luvVimFX6uxP"
}
