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
    name = "egeul-admin-user"
    tags = {}
}

resource "aws_iam_role" "IAMRole" {
    path = "/service-role/"
    name = "AmazonSageMaker-ExecutionRole-20241128T033603"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole2" {
    path = "/service-role/"
    name = "AmazonSagemakerCanvasBedrockRole-20241206T135862"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"BedrockAssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"bedrock.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole3" {
    path = "/service-role/"
    name = "AmazonSageMakerCanvasEMRSExecutionAccess-20241206T135862"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"EMRServerlessTrustPolicy\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"emr-serverless.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole4" {
    path = "/service-role/"
    name = "AmazonSageMakerCanvasEMRSExecutionAccess-20241128T033602"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"EMRServerlessTrustPolicy\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"emr-serverless.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole5" {
    path = "/service-role/"
    name = "AmazonSageMaker-ExecutionRole-20241206T135863"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole6" {
    path = "/service-role/"
    name = "AmazonSagemakerCanvasForecastRole-20241206T135862"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"forecast.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole7" {
    path = "/service-role/"
    name = "AmazonSagemakerCanvasForecastRole-20241128T033602"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"forecast.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole8" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"apigateway.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole9" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsCodeBuildRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codebuild.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole10" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codepipeline.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole11" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsEventsRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"events.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole12" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudformation.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole13" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsExecutionRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole14" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsLambdaRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole15" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsLaunchRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"servicecatalog.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole16" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsUseRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"codepipeline.amazonaws.com\",\"codebuild.amazonaws.com\",\"sagemaker.amazonaws.com\",\"lambda.amazonaws.com\",\"glue.amazonaws.com\",\"firehose.amazonaws.com\",\"apigateway.amazonaws.com\",\"states.amazonaws.com\",\"events.amazonaws.com\",\"cloudformation.amazonaws.com\"]},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole17" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsGlueRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"glue.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole18" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"firehose.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole19" {
    path = "/"
    name = "egeul-ai-bedrock-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"bedrock.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"},\"ArnEquals\":{\"aws:SourceArn\":\"arn:aws:bedrock:us-west-2:127214190635:model-customization-job/*\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole20" {
    path = "/service-role/"
    name = "egeul-ai-bedrock-role2"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"bedrock.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"},\"ArnEquals\":{\"aws:SourceArn\":\"arn:aws:bedrock:us-west-2:127214190635:model-customization-job/*\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole21" {
    path = "/"
    name = "egeul-dev-srv-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole22" {
    path = "/service-role/"
    name = "egeul-ec2-manager-function"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole23" {
    path = "/"
    name = "egeul-sagemaker-full-role"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole24" {
    path = "/service-role/"
    name = "SageMaker-ExecutionRole-20241206T141794"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:sagemaker:ap-northeast-2:127214190635:*\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole25" {
    path = "/service-role/"
    name = "SageMaker-ExecutionRole-20241206T141833"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:sagemaker:ap-northeast-2:127214190635:*\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
    aws_service_name = "elasticfilesystem.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "ops.emr-serverless.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "sagemaker.amazonaws.com"
    description = "AWS SageMaker Notebooks Service Linked Role"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "servicequotas.amazonaws.com"
    description = "A service-linked role is required for Service Quotas to access your service limits."
}

resource "aws_iam_policy" "IAMManagedPolicy" {
    name = "AmazonSageMaker-ExecutionPolicy-20241206T135863"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy2" {
    name = "AmazonSageMaker-ExecutionPolicy-20241128T033603"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy3" {
    name = "SM_ModelManagement_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateModel",
                "sagemaker:CreateModelPackage",
                "sagemaker:CreateModelPackageGroup",
                "sagemaker:DescribeModel",
                "sagemaker:DescribeModelPackage",
                "sagemaker:DescribeModelPackageGroup",
                "sagemaker:BatchDescribeModelPackage",
                "sagemaker:UpdateModelPackage",
                "sagemaker:DeleteModel",
                "sagemaker:DeleteModelPackage",
                "sagemaker:DeleteModelPackageGroup"
            ],
            "Resource": "arn:aws:sagemaker:*:*:*/*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:ListModels",
                "sagemaker:ListModelPackages",
                "sagemaker:ListModelPackageGroups"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": [
                "arn:aws:iam::127214190635:role/service-role/SageMaker-ExecutionRole-20241206T141833"
            ],
            "Condition": {
                "StringEquals": {
                    "iam:PassedToService": "sagemaker.amazonaws.com"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy4" {
    name = "SM_StudioAppPermissions_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "SMStudioUserProfileAppPermissionsCreateAndDelete",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:app/*",
            "Condition": {
                "Null": {
                    "sagemaker:OwnerUserProfileArn": "true"
                }
            }
        },
        {
            "Sid": "SMStudioCreatePresignedDomainUrlForUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreatePresignedDomainUrl"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
        },
        {
            "Sid": "SMStudioAppPermissionsListAndDescribe",
            "Effect": "Allow",
            "Action": [
                "sagemaker:ListApps",
                "sagemaker:ListDomains",
                "sagemaker:ListUserProfiles",
                "sagemaker:ListSpaces",
                "sagemaker:DescribeApp",
                "sagemaker:DescribeDomain",
                "sagemaker:DescribeUserProfile",
                "sagemaker:DescribeSpace"
            ],
            "Resource": "*"
        },
        {
            "Sid": "SMStudioAppPermissionsTagOnCreate",
            "Effect": "Allow",
            "Action": [
                "sagemaker:AddTags"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:*/*",
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "SMStudioRestrictSharedSpacesWithoutOwners",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateSpace",
                "sagemaker:UpdateSpace",
                "sagemaker:DeleteSpace"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:space/$${sagemaker:DomainId}/*",
            "Condition": {
                "Null": {
                    "sagemaker:OwnerUserProfileArn": "true"
                }
            }
        },
        {
            "Sid": "SMStudioRestrictSpacesToOwnerUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateSpace",
                "sagemaker:UpdateSpace",
                "sagemaker:DeleteSpace"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:space/$${sagemaker:DomainId}/*",
            "Condition": {
                "ArnLike": {
                    "sagemaker:OwnerUserProfileArn": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
                },
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Private",
                        "Shared"
                    ]
                }
            }
        },
        {
            "Sid": "SMStudioRestrictCreatePrivateSpaceAppsToOwnerUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:app/$${sagemaker:DomainId}/*",
            "Condition": {
                "ArnLike": {
                    "sagemaker:OwnerUserProfileArn": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
                },
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Private"
                    ]
                }
            }
        },
        {
            "Sid": "AllowAppActionsForSharedSpaces",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:*:*:app/$${sagemaker:DomainId}/*/*/*",
            "Condition": {
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Shared"
                    ]
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy5" {
    name = "SM_MLflowTrackingExecutionRole_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFlowTrackingExecutionBucketPermissions",
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:AbortMultipartUpload",
                "s3:GetBucketLocation",
                "s3:GetBucketCors",
                "s3:PutBucketCors"
            ],
            "Resource": [
                "arn:aws:s3:::sagemaker-*",
                "arn:aws:s3:::sagemaker-*/*"
            ],
            "Condition": {
                "StringEquals": {
                    "aws:ResourceAccount": "127214190635"
                }
            }
        },
        {
            "Sid": "MLFlowTrackingExecutionModelRegistry",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateModelPackage",
                "sagemaker:CreateModelPackageGroup",
                "sagemaker:UpdateModelPackage"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:*/*"
        },
        {
            "Sid": "MLFlowTrackingExecutionModelRegistryAddTags",
            "Effect": "Allow",
            "Action": "sagemaker:AddTags",
            "Resource": [
                "arn:aws:sagemaker:ap-northeast-2:127214190635:model-package/*",
                "arn:aws:sagemaker:ap-northeast-2:127214190635:model-package-group/*"
            ],
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "MLFlowTrackingExecutionListTags",
            "Effect": "Allow",
            "Action": "sagemaker:ListTags",
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy6" {
    name = "AWSLambdaBasicExecutionRole-03886c7c-b167-45d8-a1e1-f368df4fda0c"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "logs:CreateLogGroup",
            "Resource": "arn:aws:logs:ap-northeast-2:127214190635:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:ap-northeast-2:127214190635:log-group:/aws/lambda/egeul-ec2-manger-function:*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy7" {
    name = "SM_MLflowManagement_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFlowManagementComprehensive",
            "Effect": "Allow",
            "Action": [
                "sagemaker:DeleteMlflowTrackingServer",
                "sagemaker:DescribeMlflowTrackingServer",
                "sagemaker:StartMlflowTrackingServer",
                "sagemaker:StopMlflowTrackingServer",
                "sagemaker:UpdateMlflowTrackingServer"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        },
        {
            "Sid": "MLFlowManagementTagOnCreate",
            "Effect": "Allow",
            "Action": "sagemaker:AddTags",
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*",
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "MLFlowManagementCreateAndList",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateMlflowTrackingServer",
                "sagemaker:CreatePresignedMlflowTrackingServerUrl",
                "sagemaker:ListMlflowTrackingServers"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy8" {
    name = "SM_MLflowTrackingExecutionRole_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFlowTrackingExecutionBucketPermissions",
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:AbortMultipartUpload",
                "s3:GetBucketLocation",
                "s3:GetBucketCors",
                "s3:PutBucketCors"
            ],
            "Resource": [
                "arn:aws:s3:::sagemaker-*",
                "arn:aws:s3:::sagemaker-*/*"
            ],
            "Condition": {
                "StringEquals": {
                    "aws:ResourceAccount": "127214190635"
                }
            }
        },
        {
            "Sid": "MLFlowTrackingExecutionModelRegistry",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateModelPackage",
                "sagemaker:CreateModelPackageGroup",
                "sagemaker:UpdateModelPackage"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:*/*"
        },
        {
            "Sid": "MLFlowTrackingExecutionModelRegistryAddTags",
            "Effect": "Allow",
            "Action": "sagemaker:AddTags",
            "Resource": [
                "arn:aws:sagemaker:ap-northeast-2:127214190635:model-package/*",
                "arn:aws:sagemaker:ap-northeast-2:127214190635:model-package-group/*"
            ],
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "MLFlowTrackingExecutionListTags",
            "Effect": "Allow",
            "Action": "sagemaker:ListTags",
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy9" {
    name = "SM_ModelManagement_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateModel",
                "sagemaker:CreateModelPackage",
                "sagemaker:CreateModelPackageGroup",
                "sagemaker:DescribeModel",
                "sagemaker:DescribeModelPackage",
                "sagemaker:DescribeModelPackageGroup",
                "sagemaker:BatchDescribeModelPackage",
                "sagemaker:UpdateModelPackage",
                "sagemaker:DeleteModel",
                "sagemaker:DeleteModelPackage",
                "sagemaker:DeleteModelPackageGroup"
            ],
            "Resource": "arn:aws:sagemaker:*:*:*/*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:ListModels",
                "sagemaker:ListModelPackages",
                "sagemaker:ListModelPackageGroups"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": [
                "arn:aws:iam::127214190635:role/service-role/SageMaker-ExecutionRole-20241206T141794"
            ],
            "Condition": {
                "StringEquals": {
                    "iam:PassedToService": "sagemaker.amazonaws.com"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy10" {
    name = "SM_MLflowServerAccess_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFLowPermissionsDescribeAndListTags",
            "Effect": "Allow",
            "Action": [
                "sagemaker:DescribeMlflowTrackingServer",
                "sagemaker:ListTags"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        },
        {
            "Sid": "MLFLowPermissionsCreatePresignedUrlAndListServers",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreatePresignedMlflowTrackingServerUrl",
                "sagemaker:ListMlflowTrackingServers"
            ],
            "Resource": "*"
        },
        {
            "Sid": "MLFLowPermissionsComprehensive",
            "Effect": "Allow",
            "Action": [
                "sagemaker-mlflow:*"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy11" {
    name = "SageMakerS3AllResourcesPolicyTemplate_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy12" {
    name = "SM_CommonJobManagement_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateTrainingJob",
                "sagemaker:CreateTransformJob",
                "sagemaker:CreateProcessingJob",
                "sagemaker:CreateAutoMLJob",
                "sagemaker:CreateHyperParameterTuningJob",
                "sagemaker:StopTrainingJob",
                "sagemaker:StopProcessingJob",
                "sagemaker:StopAutoMLJob",
                "sagemaker:StopHyperParameterTuningJob",
                "sagemaker:DescribeTrainingJob",
                "sagemaker:DescribeTransformJob",
                "sagemaker:DescribeProcessingJob",
                "sagemaker:DescribeAutoMLJob",
                "sagemaker:DescribeHyperParameterTuningJob",
                "sagemaker:UpdateTrainingJob",
                "sagemaker:BatchGetMetrics"
            ],
            "Resource": "arn:aws:sagemaker:*:*:*/*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:Search",
                "sagemaker:ListTrainingJobs",
                "sagemaker:ListTransformJobs",
                "sagemaker:ListProcessingJobs",
                "sagemaker:ListAutoMLJobs",
                "sagemaker:ListCandidatesForAutoMLJob",
                "sagemaker:ListHyperParameterTuningJobs",
                "sagemaker:ListTrainingJobsForHyperParameterTuningJob"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": [
                "arn:aws:iam::127214190635:role/service-role/SageMaker-ExecutionRole-20241206T141833"
            ],
            "Condition": {
                "StringEquals": {
                    "iam:PassedToService": "sagemaker.amazonaws.com"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy13" {
    name = "SageMakerS3AllResourcesPolicyTemplate_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy14" {
    name = "SM_ComputeExecutionRole_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635",
                "arn:aws:s3:::egeul-ai-sagemaker",
                "arn:aws:s3:::egeul-ai-output",
                "arn:aws:s3:::sagemaker-studio-078f5isseqe9/sharing",
                "arn:aws:s3:::egeul-ai-stable-diffusion"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635/*",
                "arn:aws:s3:::egeul-ai-sagemaker/*",
                "arn:aws:s3:::egeul-ai-output/*",
                "arn:aws:s3:::sagemaker-studio-078f5isseqe9/sharing/*",
                "arn:aws:s3:::egeul-ai-stable-diffusion/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:BatchPutMetrics",
                "ecr:GetAuthorizationToken",
                "ecr:ListImages"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage"
            ],
            "Resource": [
                "arn:aws:ecr:ap-northeast-2:127214190635:repository/egeul-ai"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:PutMetricData",
            "Resource": "*",
            "Condition": {
                "StringLike": {
                    "cloudwatch:namespace": [
                        "*SageMaker*",
                        "*Sagemaker*",
                        "*sagemaker*"
                    ]
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents",
                "logs:CreateLogGroup",
                "logs:DescribeLogStreams"
            ],
            "Resource": "arn:aws:logs:*:*:log-group:/aws/sagemaker/*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy15" {
    name = "SM_CommonJobManagement_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateTrainingJob",
                "sagemaker:CreateTransformJob",
                "sagemaker:CreateProcessingJob",
                "sagemaker:CreateAutoMLJob",
                "sagemaker:CreateHyperParameterTuningJob",
                "sagemaker:StopTrainingJob",
                "sagemaker:StopProcessingJob",
                "sagemaker:StopAutoMLJob",
                "sagemaker:StopHyperParameterTuningJob",
                "sagemaker:DescribeTrainingJob",
                "sagemaker:DescribeTransformJob",
                "sagemaker:DescribeProcessingJob",
                "sagemaker:DescribeAutoMLJob",
                "sagemaker:DescribeHyperParameterTuningJob",
                "sagemaker:UpdateTrainingJob",
                "sagemaker:BatchGetMetrics"
            ],
            "Resource": "arn:aws:sagemaker:*:*:*/*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:Search",
                "sagemaker:ListTrainingJobs",
                "sagemaker:ListTransformJobs",
                "sagemaker:ListProcessingJobs",
                "sagemaker:ListAutoMLJobs",
                "sagemaker:ListCandidatesForAutoMLJob",
                "sagemaker:ListHyperParameterTuningJobs",
                "sagemaker:ListTrainingJobsForHyperParameterTuningJob"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": [
                "arn:aws:iam::127214190635:role/service-role/SageMaker-ExecutionRole-20241206T141794"
            ],
            "Condition": {
                "StringEquals": {
                    "iam:PassedToService": "sagemaker.amazonaws.com"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy16" {
    name = "SM_MLflowServerAccess_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFLowPermissionsDescribeAndListTags",
            "Effect": "Allow",
            "Action": [
                "sagemaker:DescribeMlflowTrackingServer",
                "sagemaker:ListTags"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        },
        {
            "Sid": "MLFLowPermissionsCreatePresignedUrlAndListServers",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreatePresignedMlflowTrackingServerUrl",
                "sagemaker:ListMlflowTrackingServers"
            ],
            "Resource": "*"
        },
        {
            "Sid": "MLFLowPermissionsComprehensive",
            "Effect": "Allow",
            "Action": [
                "sagemaker-mlflow:*"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy17" {
    name = "SM_MLflowManagement_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "MLFlowManagementComprehensive",
            "Effect": "Allow",
            "Action": [
                "sagemaker:DeleteMlflowTrackingServer",
                "sagemaker:DescribeMlflowTrackingServer",
                "sagemaker:StartMlflowTrackingServer",
                "sagemaker:StopMlflowTrackingServer",
                "sagemaker:UpdateMlflowTrackingServer"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*"
        },
        {
            "Sid": "MLFlowManagementTagOnCreate",
            "Effect": "Allow",
            "Action": "sagemaker:AddTags",
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:mlflow-tracking-server/*",
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "MLFlowManagementCreateAndList",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateMlflowTrackingServer",
                "sagemaker:CreatePresignedMlflowTrackingServerUrl",
                "sagemaker:ListMlflowTrackingServers"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy18" {
    name = "SageMakerS3BucketPolicyTemplate_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:ListBucket"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635",
                "arn:aws:s3:::egeul-ai-sagemaker",
                "arn:aws:s3:::egeul-ai-output",
                "arn:aws:s3:::sagemaker-studio-5bm02lpfpr6/sharing",
                "arn:aws:s3:::egeul-ai-stable-diffusion"
            ]
        },
        {
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635/*",
                "arn:aws:s3:::egeul-ai-sagemaker/*",
                "arn:aws:s3:::egeul-ai-output/*",
                "arn:aws:s3:::sagemaker-studio-5bm02lpfpr6/sharing/*",
                "arn:aws:s3:::egeul-ai-stable-diffusion/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy19" {
    name = "SageMakerS3BucketPolicyTemplate_1733462327347"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:ListBucket"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635",
                "arn:aws:s3:::egeul-ai-sagemaker",
                "arn:aws:s3:::egeul-ai-output",
                "arn:aws:s3:::sagemaker-studio-078f5isseqe9/sharing",
                "arn:aws:s3:::egeul-ai-stable-diffusion"
            ]
        },
        {
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::sagemaker-ap-northeast-2-127214190635/*",
                "arn:aws:s3:::egeul-ai-sagemaker/*",
                "arn:aws:s3:::egeul-ai-output/*",
                "arn:aws:s3:::sagemaker-studio-078f5isseqe9/sharing/*",
                "arn:aws:s3:::egeul-ai-stable-diffusion/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy20" {
    name = "AmazonSageMakerServiceCatalogProductsUseRole-20241128T033623"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "cloudformation:CreateChangeSet",
                "cloudformation:CreateStack",
                "cloudformation:DescribeChangeSet",
                "cloudformation:DeleteChangeSet",
                "cloudformation:DeleteStack",
                "cloudformation:DescribeStacks",
                "cloudformation:ExecuteChangeSet",
                "cloudformation:SetStackPolicy",
                "cloudformation:UpdateStack"
            ],
            "Resource": "arn:aws:cloudformation:*:*:stack/sagemaker-*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "cloudwatch:PutMetricData"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "codebuild:BatchGetBuilds",
                "codebuild:StartBuild"
            ],
            "Resource": [
                "arn:aws:codebuild:*:*:project/sagemaker-*",
                "arn:aws:codebuild:*:*:build/sagemaker-*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "codecommit:CancelUploadArchive",
                "codecommit:GetBranch",
                "codecommit:GetCommit",
                "codecommit:GetUploadArchiveStatus",
                "codecommit:UploadArchive"
            ],
            "Resource": "arn:aws:codecommit:*:*:sagemaker-*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "codepipeline:StartPipelineExecution"
            ],
            "Resource": "arn:aws:codepipeline:*:*:sagemaker-*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "ec2:DescribeRouteTables"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "ecr:BatchCheckLayerAvailability",
                "ecr:BatchGetImage",
                "ecr:Describe*",
                "ecr:GetAuthorizationToken",
                "ecr:GetDownloadUrlForLayer"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ecr:BatchDeleteImage",
                "ecr:CompleteLayerUpload",
                "ecr:CreateRepository",
                "ecr:DeleteRepository",
                "ecr:InitiateLayerUpload",
                "ecr:PutImage",
                "ecr:UploadLayerPart"
            ],
            "Resource": [
                "arn:aws:ecr:*:*:repository/sagemaker-*"
            ]
        },
        {
            "Action": [
                "events:DeleteRule",
                "events:DescribeRule",
                "events:PutRule",
                "events:PutTargets",
                "events:RemoveTargets"
            ],
            "Resource": [
                "arn:aws:events:*:*:rule/sagemaker-*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "firehose:PutRecord",
                "firehose:PutRecordBatch"
            ],
            "Resource": "arn:aws:firehose:*:*:deliverystream/sagemaker-*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "glue:BatchCreatePartition",
                "glue:BatchDeletePartition",
                "glue:BatchDeleteTable",
                "glue:BatchDeleteTableVersion",
                "glue:BatchGetPartition",
                "glue:CreateDatabase",
                "glue:CreatePartition",
                "glue:CreateTable",
                "glue:DeletePartition",
                "glue:DeleteTable",
                "glue:DeleteTableVersion",
                "glue:GetDatabase",
                "glue:GetPartition",
                "glue:GetPartitions",
                "glue:GetTable",
                "glue:GetTables",
                "glue:GetTableVersion",
                "glue:GetTableVersions",
                "glue:SearchTables",
                "glue:UpdatePartition",
                "glue:UpdateTable",
                "glue:GetUserDefinedFunctions"
            ],
            "Resource": [
                "arn:aws:glue:*:*:catalog",
                "arn:aws:glue:*:*:database/default",
                "arn:aws:glue:*:*:database/global_temp",
                "arn:aws:glue:*:*:database/sagemaker-*",
                "arn:aws:glue:*:*:table/sagemaker-*",
                "arn:aws:glue:*:*:tableVersion/sagemaker-*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "iam:PassRole"
            ],
            "Resource": [
                "arn:aws:iam::*:role/service-role/AmazonSageMakerServiceCatalogProductsUse*"
            ],
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "lambda:InvokeFunction"
            ],
            "Resource": [
                "arn:aws:lambda:*:*:function:sagemaker-*"
            ]
        },
        {
            "Action": [
                "logs:CreateLogDelivery",
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:DeleteLogDelivery",
                "logs:Describe*",
                "logs:GetLogDelivery",
                "logs:GetLogEvents",
                "logs:ListLogDeliveries",
                "logs:PutLogEvents",
                "logs:PutResourcePolicy",
                "logs:UpdateLogDelivery"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:CreateBucket",
                "s3:DeleteBucket",
                "s3:GetBucketAcl",
                "s3:GetBucketCors",
                "s3:GetBucketLocation",
                "s3:ListAllMyBuckets",
                "s3:ListBucket",
                "s3:ListBucketMultipartUploads",
                "s3:PutBucketCors",
                "s3:PutObjectAcl"
            ],
            "Resource": [
                "arn:aws:s3:::aws-glue-*",
                "arn:aws:s3:::sagemaker-*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:AbortMultipartUpload",
                "s3:DeleteObject",
                "s3:GetObject",
                "s3:GetObjectVersion",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::aws-glue-*",
                "arn:aws:s3:::sagemaker-*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "sagemaker:*"
            ],
            "NotResource": [
                "arn:aws:sagemaker:*:*:domain/*",
                "arn:aws:sagemaker:*:*:user-profile/*",
                "arn:aws:sagemaker:*:*:app/*",
                "arn:aws:sagemaker:*:*:flow-definition/*"
            ]
        },
        {
            "Action": [
                "states:DescribeExecution",
                "states:DescribeStateMachine",
                "states:DescribeStateMachineForExecution",
                "states:GetExecutionHistory",
                "states:ListExecutions",
                "states:ListTagsForResource",
                "states:StartExecution",
                "states:StopExecution",
                "states:TagResource",
                "states:UntagResource",
                "states:UpdateStateMachine"
            ],
            "Resource": [
                "arn:aws:states:*:*:stateMachine:sagemaker-*",
                "arn:aws:states:*:*:execution:sagemaker-*:*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "states:ListStateMachines"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "codestar-connections:UseConnection"
            ],
            "Resource": "arn:aws:codestar-connections:*:*:connection/*",
            "Condition": {
                "StringEqualsIgnoreCase": {
                    "aws:ResourceTag/sagemaker": "true"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy21" {
    name = "SM_StudioAppPermissions_1733462246953"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "SMStudioUserProfileAppPermissionsCreateAndDelete",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:app/*",
            "Condition": {
                "Null": {
                    "sagemaker:OwnerUserProfileArn": "true"
                }
            }
        },
        {
            "Sid": "SMStudioCreatePresignedDomainUrlForUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreatePresignedDomainUrl"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
        },
        {
            "Sid": "SMStudioAppPermissionsListAndDescribe",
            "Effect": "Allow",
            "Action": [
                "sagemaker:ListApps",
                "sagemaker:ListDomains",
                "sagemaker:ListUserProfiles",
                "sagemaker:ListSpaces",
                "sagemaker:DescribeApp",
                "sagemaker:DescribeDomain",
                "sagemaker:DescribeUserProfile",
                "sagemaker:DescribeSpace"
            ],
            "Resource": "*"
        },
        {
            "Sid": "SMStudioAppPermissionsTagOnCreate",
            "Effect": "Allow",
            "Action": [
                "sagemaker:AddTags"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:*/*",
            "Condition": {
                "Null": {
                    "sagemaker:TaggingAction": "false"
                }
            }
        },
        {
            "Sid": "SMStudioRestrictSharedSpacesWithoutOwners",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateSpace",
                "sagemaker:UpdateSpace",
                "sagemaker:DeleteSpace"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:space/$${sagemaker:DomainId}/*",
            "Condition": {
                "Null": {
                    "sagemaker:OwnerUserProfileArn": "true"
                }
            }
        },
        {
            "Sid": "SMStudioRestrictSpacesToOwnerUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateSpace",
                "sagemaker:UpdateSpace",
                "sagemaker:DeleteSpace"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:space/$${sagemaker:DomainId}/*",
            "Condition": {
                "ArnLike": {
                    "sagemaker:OwnerUserProfileArn": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
                },
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Private",
                        "Shared"
                    ]
                }
            }
        },
        {
            "Sid": "SMStudioRestrictCreatePrivateSpaceAppsToOwnerUserProfile",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:ap-northeast-2:127214190635:app/$${sagemaker:DomainId}/*",
            "Condition": {
                "ArnLike": {
                    "sagemaker:OwnerUserProfileArn": "arn:aws:sagemaker:ap-northeast-2:127214190635:user-profile/$${sagemaker:DomainId}/$${sagemaker:UserProfileName}"
                },
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Private"
                    ]
                }
            }
        },
        {
            "Sid": "AllowAppActionsForSharedSpaces",
            "Effect": "Allow",
            "Action": [
                "sagemaker:CreateApp",
                "sagemaker:DeleteApp"
            ],
            "Resource": "arn:aws:sagemaker:*:*:app/$${sagemaker:DomainId}/*/*/*",
            "Condition": {
                "StringEquals": {
                    "sagemaker:SpaceSharingType": [
                        "Shared"
                    ]
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_policy" "IAMManagedPolicy22" {
    name = "egeul-ai-bedrock-role2policy"
    path = "/service-role/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::egeul-ai-traning-data-bucket",
                "arn:aws:s3:::egeul-ai-output-data-bucket",
                "arn:aws:s3:::egeul-ai-traning-data-bucket/*",
                "arn:aws:s3:::egeul-ai-output-data-bucket/*"
            ],
            "Condition": {
                "StringEquals": {
                    "aws:PrincipalAccount": "127214190635"
                }
            }
        }
    ]
}
EOF
}

resource "aws_iam_role_policy" "IAMPolicy" {
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::egeul-ai-traning-data-bucket",
        "arn:aws:s3:::egeul-ai-traning-data-bucket/*",
        "arn:aws:s3:::egeul-ai-output-data-bucket",
        "arn:aws:s3:::egeul-ai-output-data-bucket/*"
      ],
      "Condition": {
        "StringEquals": {
          "aws:PrincipalAccount": "127214190635"
        }
      }
    }
  ]
}
EOF
    role = "${aws_iam_role.IAMRole19.name}"
}

resource "aws_iam_instance_profile" "IAMInstanceProfile" {
    path = "/"
    name = "${aws_iam_role.IAMRole19.name}"
    roles = [
        "${aws_iam_role.IAMRole19.name}"
    ]
}

resource "aws_iam_instance_profile" "IAMInstanceProfile2" {
    path = "/"
    name = "${aws_iam_role.IAMRole21.name}"
    roles = [
        "${aws_iam_role.IAMRole21.name}"
    ]
}

resource "aws_iam_access_key" "IAMAccessKey" {
    status = "Active"
    user = "egeul-admin-user"
}

resource "aws_vpc" "EC2VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = "egeul-vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "ap-northeast-2a"
    cidr_block = "10.0.1.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "ap-northeast-2c"
    cidr_block = "10.0.2.0/24"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "egeul-igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_vpc_dhcp_options" "EC2DHCPOptions" {
    domain_name = "ap-northeast-2.compute.internal"
    tags = {}
}

resource "aws_vpc_dhcp_options_association" "EC2VPCDHCPOptionsAssociation" {
    dhcp_options_id = "dopt-03b37df987fc1430a"
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "egeul-pub-rt"
    }
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0ad89cee9a7bc3fc8"
    route_table_id = "rtb-0894a20cabbbca3c2"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation" {
    route_table_id = "rtb-0894a20cabbbca3c2"
    subnet_id = "subnet-02f46be9b82457c0b"
}

resource "aws_route_table_association" "EC2SubnetRouteTableAssociation2" {
    route_table_id = "rtb-0894a20cabbbca3c2"
    subnet_id = "subnet-0ef2e51eb449ab422"
}

resource "aws_instance" "EC2Instance" {
    ami = "ami-0f1e61a80c7ab943e"
    instance_type = "m5.large"
    key_name = "egeul-dev-srv-keypair"
    availability_zone = "ap-northeast-2a"
    tenancy = "default"
    subnet_id = "subnet-0ef2e51eb449ab422"
    ebs_optimized = true
    vpc_security_group_ids = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 100
        volume_type = "gp3"
        delete_on_termination = true
    }
    iam_instance_profile = "${aws_iam_role.IAMRole21.name}"
    tags = {
        Name = "egeul-dev-srv"
    }
}

resource "aws_security_group" "EC2SecurityGroup" {
    description = "[DO NOT DELETE] Security Group that allows outbound NFS traffic for SageMaker Notebooks Domain [d-bvgxfbndwaj9]"
    name = "security-group-for-outbound-nfs-d-bvgxfbndwaj9"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:ap-northeast-2:127214190635:domain/d-bvgxfbndwaj9"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    egress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup3.id}"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_security_group" "EC2SecurityGroup2" {
    description = "eguel-dev-srv-sg"
    name = "eguel-dev-srv-sg"
    tags = {}
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        cidr_blocks = [
            "122.36.65.53/32"
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
    description = "[DO NOT DELETE] Security Group that allows inbound NFS traffic for SageMaker Notebooks Domain [d-bvgxfbndwaj9]"
    name = "security-group-for-inbound-nfs-d-bvgxfbndwaj9"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:ap-northeast-2:127214190635:domain/d-bvgxfbndwaj9"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "sg-0d0d7868571acd575"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    ingress {
        security_groups = [
            "sg-0d0d7868571acd575"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    ingress {
        security_groups = [
            "sg-0d0d7868571acd575"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_security_group" "EC2SecurityGroup4" {
    description = "[DO NOT DELETE] Security Group that allows inbound NFS traffic for SageMaker Notebooks Domain [d-vwhle1xabpgn]"
    name = "security-group-for-inbound-nfs-d-vwhle1xabpgn"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:ap-northeast-2:127214190635:domain/d-vwhle1xabpgn"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup5.id}"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup5.id}"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup5.id}"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_security_group" "EC2SecurityGroup5" {
    description = "[DO NOT DELETE] Security Group that allows outbound NFS traffic for SageMaker Notebooks Domain [d-vwhle1xabpgn]"
    name = "security-group-for-outbound-nfs-d-vwhle1xabpgn"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:ap-northeast-2:127214190635:domain/d-vwhle1xabpgn"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
    egress {
        security_groups = [
            "sg-0e452beec1bc7636e"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    egress {
        security_groups = [
            "sg-0e452beec1bc7636e"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    egress {
        security_groups = [
            "sg-0e452beec1bc7636e"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_ebs_volume" "EC2Volume" {
    availability_zone = "ap-northeast-2a"
    encrypted = false
    size = 100
    type = "gp3"
    snapshot_id = "snap-05186cc383683df31"
    tags = {}
}

resource "aws_volume_attachment" "EC2VolumeAttachment" {
    volume_id = "vol-034e131b5e90b2df7"
    instance_id = "i-04050a2ab349c0a05"
    device_name = "/dev/xvda"
}

resource "aws_network_interface" "EC2NetworkInterface" {
    description = "EFS mount target for fs-0f4fc699f905a6663 (fsmt-0abb47f2f1dc64ba1)"
    private_ips = [
        "10.0.2.112"
    ]
    subnet_id = "subnet-02f46be9b82457c0b"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface2" {
    description = ""
    private_ips = [
        "10.0.1.172"
    ]
    subnet_id = "subnet-0ef2e51eb449ab422"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup2.id}"
    ]
}

resource "aws_network_interface" "EC2NetworkInterface3" {
    description = "EFS mount target for fs-0f4fc699f905a6663 (fsmt-057c92d550f4714d3)"
    private_ips = [
        "10.0.1.196"
    ]
    subnet_id = "subnet-0ef2e51eb449ab422"
    source_dest_check = true
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
}

resource "aws_network_interface_attachment" "EC2NetworkInterfaceAttachment" {
    network_interface_id = "eni-00b97323679183223"
    device_index = 0
    instance_id = "i-04050a2ab349c0a05"
}

resource "aws_key_pair" "EC2KeyPair" {
    public_key = "REPLACEME"
    key_name = "egeul-dev-srv-keypair"
}

resource "aws_lambda_function" "LambdaFunction" {
    description = ""
    function_name = "egeul-ec2-manger-function"
    handler = "lambda_function.lambda_handler"
    architectures = [
        "x86_64"
    ]
    s3_bucket = "awslambda-ap-ne-2-tasks"
    s3_key = "/snapshots/127214190635/egeul-ec2-manger-function-a7b70df3-c335-4a8f-b94a-591a74d91d9c"
    s3_object_version = "S4QGIU99_VfhWI.rLY_TzuXaozRHlBy6"
    memory_size = 128
    role = "${aws_iam_role.IAMRole22.arn}"
    runtime = "python3.13"
    timeout = 10
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_permission" "LambdaPermission" {
    action = "lambda:InvokeFunctionUrl"
    function_name = "${aws_lambda_function.LambdaFunction.arn}"
    principal = "*"
}

resource "aws_s3_bucket" "S3Bucket" {
    bucket = "egeul-ai-output"
}

resource "aws_s3_bucket" "S3Bucket2" {
    bucket = "egeul-ai-sagemaker"
}

resource "aws_s3_bucket" "S3Bucket3" {
    bucket = "egeul-ai-stable-diffusion"
}

resource "aws_s3_bucket" "S3Bucket4" {
    bucket = "sagemaker-studio-078f5isseqe9"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy" {
    bucket = "${aws_s3_bucket.S3Bucket.id}"
    policy = "{\"Version\":\"2012-10-17\",\"Id\":\"Policy1733298065946\",\"Statement\":[{\"Sid\":\"Stmt1733298065203\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":[\"arn:aws:s3:::egeul-ai-output\",\"arn:aws:s3:::egeul-ai-output/*\"]}]}"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy2" {
    bucket = "${aws_s3_bucket.S3Bucket3.id}"
    policy = "{\"Version\":\"2012-10-17\",\"Id\":\"Policy1733151621836\",\"Statement\":[{\"Sid\":\"Stmt1733151620958\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":[\"arn:aws:s3:::egeul-ai-stable-diffusion\",\"arn:aws:s3:::egeul-ai-stable-diffusion/*\"]}]}"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy3" {
    bucket = "${aws_s3_bucket.S3Bucket4.id}"
    policy = "{\"Version\":\"2008-10-17\",\"Id\":\"Enforce HTTPS\",\"Statement\":[{\"Effect\":\"Deny\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":\"arn:aws:s3:::sagemaker-studio-078f5isseqe9\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}}}]}"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "/aws/lambda/egeul-ec2-manger-function"
    retention_in_days = 3
}

resource "aws_cloudwatch_log_group" "LogsLogGroup2" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-17-56-400"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup3" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-44-55-024"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup4" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-08-46-58-136"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup5" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-10-16-13-583"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup6" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-13-05-25-409"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup7" {
    name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-05-06-51-14-412"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup8" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-14-03-771"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup9" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-33-55-356"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup10" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-57-51-674"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup11" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup12" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup13" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup14" {
    name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup15" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-19-46-18-811"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup16" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-20-39-03-723"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup17" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-22-24-47-858"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup18" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-28-09-17-42-485"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup19" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-28-15-56-15-396"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup20" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-02-15-20-55-422"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup21" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-02-16-08-04-782"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup22" {
    name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-03-08-35-06-052"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup23" {
    name = "/aws/sagemaker/InferenceComponents/model-txt2img-stabilityai-stable-diffusion-v2-1-20241204-080001"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup24" {
    name = "/aws/sagemaker/InferenceComponents/model-txt2img-stabilityai-stable-diffusion-v2-1-20241204-121522"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup25" {
    name = "/aws/sagemaker/TrainingJobs"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup26" {
    name = "/aws/sagemaker/studio"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]05cf099184d94536bc2a1f1772999175"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream2" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]135bb32fdc7e4c9880c95797d7ffbae8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream3" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]3358e5e82c1444db8e3216b6be20119a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream4" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]36480b6977cf4bcdafa46f54456bf259"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream5" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]3a6bdb9b89b74a51bbb405e1f0590e58"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream6" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]4ca80b4c94294560bb2981bf46b072d7"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream7" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]64b34e3d9e3c47eaaba931b44109e396"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream8" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]93d228954937472eaa6edca9e36d3ef1"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream9" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]9736320ea4c543a0be61e5a8608c648d"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream10" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]a580cb56efc449c69d9e66a40ee926b8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream11" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]b48b3c3d4ace448fa48150d6e69209f6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream12" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]b7b665399eb040bbaa4367e209595c4f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream13" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]c114682f27894769b11e98012e01d59b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream14" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]c596989e1e0343ce80a592d78114b0bc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream15" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]cfb806f571524e1f8e30fde419a1a15d"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream16" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]d2b645a0721a4d83b09ee6913e56880f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream17" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]d3564653f7814058b2449597c17efce8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream18" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]d3de1b8b00ea473486c5670aedc37f42"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream19" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]de9e6bd3ed3347ef9ced638378eaf2ec"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream20" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]e96beb35cff8450491a7da366e786182"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream21" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]f877ae1f967b4b279712347cd7eed4c4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream22" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]fbb239decffd441889127bb594dbbad8"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream23" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/25/[$LATEST]fdbf8ace74e64467b0ba62d76c493392"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream24" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/26/[$LATEST]8b589deafdcb42faa5c60760a6b4476e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream25" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/26/[$LATEST]f9a9866ae16247d79afa9e09f8197062"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream26" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/27/[$LATEST]9bceae75df39450aa4efba39673ce8e9"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream27" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/27/[$LATEST]a5a5dd35c9f343658b2c51159b72ca8b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream28" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/28/[$LATEST]aef6dbc0baa243578e0245a47aef8dfb"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream29" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/29/[$LATEST]95597e959a744d5ea8182632638c83a0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream30" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/11/29/[$LATEST]b4d9a90cabb644d497b68489c1d7bbb4"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream31" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/02/[$LATEST]8db47e24550443fb84867076ca9c2189"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream32" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/02/[$LATEST]ab2a75cc47674710a43fd201f61435da"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream33" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/03/[$LATEST]23caca3d35544e5ebde6d98676ca6a5c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream34" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/03/[$LATEST]d0bf4a402489490daac926cafcb0cd69"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream35" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/03/[$LATEST]fb9707ad6cc74319a96d92d4099b4c14"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream36" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/04/[$LATEST]a8588962a6d1466b945c1aa161c7c2bb"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream37" {
    log_group_name = "/aws/lambda/egeul-ec2-manger-function"
    name = "2024/12/04/[$LATEST]caa5f4b77c9d4b6d841733308a7b999b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream38" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-17-56-400"
    name = "AllTraffic/i-0fb32d8f46e175314"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream39" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-08-46-58-136"
    name = "AllTraffic/i-089271e126f8b49a3"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream40" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-44-55-024"
    name = "AllTraffic/i-0061044703cc7374c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream41" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-10-16-13-583"
    name = "AllTraffic/i-0db9d2866b849ea97"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream42" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-05-06-51-14-412"
    name = "AllTraffic/i-0e11b0103a6779134"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream43" {
    log_group_name = "/aws/sagemaker/Endpoints/egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-13-05-25-409"
    name = "AllTraffic/i-0de4b064a061a7912"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream44" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-14-03-771"
    name = "AllTraffic/i-07f4192b9d122d5d2"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream45" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-57-51-674"
    name = "AllTraffic/i-03fabfe150d9dbafd"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream46" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-inference-2024-12-03-10-33-55-356"
    name = "AllTraffic/i-0d47705954703e902"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream47" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
    name = "AllTraffic/i-012002f2955d2b192"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream48" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
    name = "AllTraffic/i-0795f490e892ab0d9"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream49" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
    name = "AllTraffic/i-0479bdfa8f159f886"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream50" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
    name = "AllTraffic/i-0edb30e475fb25fc0"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream51" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
    name = "AllTraffic/i-0395f96218ebd1eb6"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream52" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
    name = "AllTraffic/i-08b31c80862dafd5c"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream53" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
    name = "AllTraffic/i-0a499be6a5a95be9a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream54" {
    log_group_name = "/aws/sagemaker/Endpoints/huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
    name = "AllTraffic/i-0b8adc9aec904d78e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream55" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-19-46-18-811"
    name = "AllTraffic/i-01892bf63f812442f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream56" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-20-39-03-723"
    name = "AllTraffic/i-014dc778febe97f3f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream57" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-27-22-24-47-858"
    name = "AllTraffic/i-0b69156817cc5a0cc"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream58" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-28-09-17-42-485"
    name = "AllTraffic/i-092a79ff16863353f"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream59" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-11-28-15-56-15-396"
    name = "AllTraffic/i-04aa59597000fe4ed"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream60" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-02-15-20-55-422"
    name = "AllTraffic/i-0befc1b6cae54e05b"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream61" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-02-16-08-04-782"
    name = "AllTraffic/i-0cf8f665b98cb5d2e"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream62" {
    log_group_name = "/aws/sagemaker/Endpoints/jumpstart-example-FT-model-txt2img-stab-2024-12-03-08-35-06-052"
    name = "AllTraffic/i-043dd85519e9f8a5a"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream63" {
    log_group_name = "/aws/sagemaker/InferenceComponents/model-txt2img-stabilityai-stable-diffusion-v2-1-20241204-080001"
    name = "T8YtWkFA1mmZlCpuBYtQHBQmN48ZC3ud5BnH"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream64" {
    log_group_name = "/aws/sagemaker/InferenceComponents/model-txt2img-stabilityai-stable-diffusion-v2-1-20241204-121522"
    name = "ntYQL4TXVhaO7i1coMC2NTqdTngMz8grFoqb"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream65" {
    log_group_name = "/aws/sagemaker/studio"
    name = "d-bvgxfbndwaj9/egeul-ai-user/Canvas/default"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream66" {
    log_group_name = "/aws/sagemaker/studio"
    name = "d-vwhle1xabpgn/egeul-ml/JupyterLab/default"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream67" {
    log_group_name = "/aws/sagemaker/studio"
    name = "d-vwhle1xabpgn/egeul-studio-up/Canvas/default"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream68" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-02-15-00-56-615/algo-1-1733151693"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream69" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-02-15-57-42-853/algo-1-1733155098"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream70" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-03-08-23-12-663/algo-1-1733214232"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream71" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-03-09-04-51-362/algo-1-1733216729"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream72" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-03-09-32-01-152/algo-1-1733218361"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream73" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-04-08-35-35-415/algo-1-1733301372"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream74" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-04-10-04-51-106/algo-1-1733306730"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream75" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-04-10-51-58-002/algo-1-1733309554"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream76" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-04-12-54-34-140/algo-1-1733316917"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream77" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "egeul-ai-model-txt2img-stabilityai-stab-2024-12-05-06-39-52-489/algo-1-1733380831"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream78" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "huggingface-pytorch-training-2024-12-04-09-44-03-301/algo-1-1733305542"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream79" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "huggingface-pytorch-training-2024-12-04-09-51-32-954/algo-1-1733305964"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream80" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-dft-model-txt2img-stabili-20241204-073532/algo-1-1733298299"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream81" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-dft-model-txt2img-stabili-20241204-105304/algo-1-1733309717"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream82" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-dft-model-txt2img-stabili-20241204-110139/algo-1-1733310178"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream83" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-example-model-txt2img-stabili-2024-11-27-19-10-12-923/algo-1-1732734651"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream84" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-example-model-txt2img-stabili-2024-11-27-20-07-18-170/algo-1-1732738076"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream85" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-example-model-txt2img-stabili-2024-11-27-21-56-54-351/algo-1-1732744650"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream86" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-example-model-txt2img-stabili-2024-11-28-08-53-02-958/algo-1-1732784020"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream87" {
    log_group_name = "/aws/sagemaker/TrainingJobs"
    name = "jumpstart-example-model-txt2img-stabili-2024-11-28-15-22-36-391/algo-1-1732807394"
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "egeul-ai"
}

resource "aws_efs_file_system" "EFSFileSystem" {
    performance_mode = "generalPurpose"
    encrypted = true
    kms_key_id = "arn:aws:kms:ap-northeast-2:127214190635:key/1dccfa28-64f5-4d50-959d-52492567985d"
    throughput_mode = "bursting"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:ap-northeast-2:127214190635:domain/d-bvgxfbndwaj9"
    }
}

resource "aws_efs_mount_target" "EFSMountTarget" {
    file_system_id = "fs-0f4fc699f905a6663"
    ip_address = "10.0.2.112"
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
    subnet_id = "subnet-02f46be9b82457c0b"
}

resource "aws_efs_mount_target" "EFSMountTarget2" {
    file_system_id = "fs-0f4fc699f905a6663"
    ip_address = "10.0.1.196"
    security_groups = [
        "${aws_security_group.EC2SecurityGroup3.id}"
    ]
    subnet_id = "subnet-0ef2e51eb449ab422"
}

resource "aws_budgets_budget" "BudgetsBudget" {
    limit_amount = "100.0"
    limit_unit = "USD"
    time_period_end = "2087-06-15T00:00:00.000Z"
    time_period_start = "2024-11-01T00:00:00.000Z"
    time_unit = "MONTHLY"
    cost_filters {}
    name = "My Monthly Cost Budget"
    cost_types {
        include_support = true
        include_other_subscription = true
        include_tax = true
        include_subscription = true
        use_blended = false
        include_upfront = true
        include_discount = true
        include_credit = false
        include_recurring = true
        use_amortized = false
        include_refund = false
    }
    budget_type = "COST"
}

resource "aws_sagemaker_model" "SageMakerModel" {
    name = "sagemaker-jumpstart-2024-12-04-10-16-13-583"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-04-10-16-13-583/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel2" {
    name = "sagemaker-jumpstart-2024-12-04-13-05-25-409"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-04-13-05-25-409/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel3" {
    name = "sagemaker-jumpstart-2024-12-05-06-51-14-412"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-05-06-51-14-412/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel4" {
    name = "stable-diffusion-2-1-111938"
    primary_container {
        environment {
            ENDPOINT_SERVER_TIMEOUT = "3600"
            MODEL_CACHE_ROOT = "/opt/ml/model"
            SAGEMAKER_ENV = "1"
            SAGEMAKER_MODEL_SERVER_WORKERS = "1"
            SAGEMAKER_PROGRAM = "inference.py"
        }
        model_data_url = "s3://egeul-ai-output/sagemaker/jumpstart-dft-model-txt2img-stabili-20241204-110139/output/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel5" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-12-09-412"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-tgi-inference:2.0.1-tgi0.9.3-gpu-py39-cu118-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel6" {
    name = "sagemaker-jumpstart-2024-12-04-08-46-58-136"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-04-08-46-58-136/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel7" {
    name = "stable-diffusion-2-1-075654"
    primary_container {
        environment {
            ENDPOINT_SERVER_TIMEOUT = "3600"
            MODEL_CACHE_ROOT = "/opt/ml/model"
            SAGEMAKER_ENV = "1"
            SAGEMAKER_MODEL_SERVER_WORKERS = "1"
            SAGEMAKER_PROGRAM = "inference.py"
        }
        model_data_url = "s3://egeul-ai-output/sagemaker/jumpstart-dft-model-txt2img-stabili-20241204-073532/output/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel8" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-08-06-633"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-tgi-inference:2.0.1-tgi0.9.3-gpu-py39-cu118-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel9" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-40-55-493"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-tgi-inference:2.0.1-tgi0.9.3-gpu-py39-cu118-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel10" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-34-10-745"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-tgi-inference:2.0.1-tgi0.9.3-gpu-py39-cu118-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel11" {
    name = "huggingface-pytorch-inference-2024-12-03-10-57-51-041"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.13.1-transformers4.26.0-gpu-py39-cu117-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel12" {
    name = "huggingface-pytorch-inference-2024-12-03-10-57-20-113"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.13.1-transformers4.26.0-gpu-py39-cu117-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel13" {
    name = "sagemaker-jumpstart-2024-12-03-09-44-55-024"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-03-09-44-55-024/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel14" {
    name = "huggingface-pytorch-inference-2024-12-03-10-14-03-140"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.13.1-transformers4.26.0-gpu-py39-cu117-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel15" {
    name = "sagemaker-jumpstart-2024-12-03-09-17-56-400"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-03-09-17-56-400/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel16" {
    name = "huggingface-pytorch-inference-2024-12-03-10-33-54-596"
    primary_container {
        environment {
            HF_MODEL_ID = "stabilityai/stable-diffusion-2-1-base"
            HF_TASK = "text-to-image"
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_REGION = "ap-northeast-2"
            TRUST_REMOTE_CODE = "True"
        }
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.13.1-transformers4.26.0-gpu-py39-cu117-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel17" {
    name = "sagemaker-jumpstart-2024-12-03-08-35-06-052"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-03-08-35-06-052/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel18" {
    name = "sagemaker-jumpstart-2024-11-27-22-24-47-858"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-27-22-24-47-858/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel19" {
    name = "sagemaker-jumpstart-2024-12-02-15-20-55-422"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-02-15-20-55-422/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel20" {
    name = "sagemaker-jumpstart-2024-12-02-16-08-04-783"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-12-02-16-08-04-783/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel21" {
    name = "sagemaker-jumpstart-2024-11-28-09-17-42-485"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-28-09-17-42-485/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel22" {
    name = "sagemaker-jumpstart-2024-11-28-15-56-15-396"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-28-15-56-15-396/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel23" {
    name = "sagemaker-jumpstart-2024-11-27-22-09-20-901"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-27-22-09-20-901/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel24" {
    name = "sagemaker-jumpstart-2024-11-27-20-39-03-723"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-27-20-39-03-723/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_model" "SageMakerModel25" {
    name = "sagemaker-jumpstart-2024-11-27-19-46-18-812"
    primary_container {
        environment {
            SAGEMAKER_CONTAINER_LOG_LEVEL = "20"
            SAGEMAKER_PROGRAM = "inference.py"
            SAGEMAKER_REGION = "ap-northeast-2"
            SAGEMAKER_SUBMIT_DIRECTORY = "/opt/ml/model/code"
        }
        model_data_url = "s3://sagemaker-ap-northeast-2-127214190635/sagemaker-jumpstart-2024-11-27-19-46-18-812/model.tar.gz"
        image = "763104351884.dkr.ecr.ap-northeast-2.amazonaws.com/huggingface-pytorch-inference:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04"
    }
    execution_role_arn = "${aws_iam_role.IAMRole23.arn}"
}

resource "aws_sagemaker_endpoint" "SageMakerEndpoint" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
    endpoint_config_name = "huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
}

resource "aws_sagemaker_endpoint" "SageMakerEndpoint2" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
    endpoint_config_name = "huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
}

resource "aws_sagemaker_endpoint" "SageMakerEndpoint3" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
    endpoint_config_name = "huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
}

resource "aws_sagemaker_endpoint" "SageMakerEndpoint4" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
    endpoint_config_name = "huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-05-06-51-14-412"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-05-06-51-14-412"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig2" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-13-05-25-409"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-04-13-05-25-409"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig3" {
    name = "sagemaker-epc-1733314533034"
    production_variants {
        variant_name = "AllTraffic"
        initial_instance_count = 1
        instance_type = "ml.p3.2xlarge"
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig4" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-08-46-58-136"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-04-08-46-58-136"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig5" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-04-10-16-13-583"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-04-10-16-13-583"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig6" {
    name = "sagemaker-epc-1733299293656"
    production_variants {
        variant_name = "AllTraffic"
        initial_instance_count = 1
        instance_type = "ml.p3.2xlarge"
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig7" {
    name = "sagemaker-epc-1733299216820"
    production_variants {
        variant_name = "AllTraffic"
        initial_instance_count = 1
        instance_type = "ml.p3.2xlarge"
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig8" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-40-56-158"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-tgi-inference-2024-12-03-12-40-55-493"
        initial_instance_count = 1
        instance_type = "ml.g5.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig9" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-12-12-10-087"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-tgi-inference-2024-12-03-12-12-09-412"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig10" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-08-07-289"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-tgi-inference-2024-12-03-11-08-06-633"
        initial_instance_count = 1
        instance_type = "ml.g5.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig11" {
    name = "huggingface-pytorch-inference-2024-12-03-10-57-51-674"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-inference-2024-12-03-10-57-51-041"
        initial_instance_count = 1
        instance_type = "ml.g4dn.xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig12" {
    name = "huggingface-pytorch-tgi-inference-2024-12-03-11-34-11-393"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-tgi-inference-2024-12-03-11-34-10-745"
        initial_instance_count = 1
        instance_type = "ml.g4dn.xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig13" {
    name = "huggingface-pytorch-inference-2024-12-03-10-14-03-771"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-inference-2024-12-03-10-14-03-140"
        initial_instance_count = 1
        instance_type = "ml.g4dn.xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig14" {
    name = "huggingface-pytorch-inference-2024-12-03-10-33-55-356"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-inference-2024-12-03-10-33-54-596"
        initial_instance_count = 1
        instance_type = "ml.g4dn.xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig15" {
    name = "huggingface-pytorch-inference-2024-12-03-10-57-20-746"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "huggingface-pytorch-inference-2024-12-03-10-57-20-113"
        initial_instance_count = 1
        instance_type = "ml.g4dn.xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig16" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-44-55-024"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-03-09-44-55-024"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig17" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-12-02-16-08-04-782"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-02-16-08-04-783"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig18" {
    name = "egeul-ai-FT-model-txt2img-stabilityai-s-2024-12-03-09-17-56-400"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-03-09-17-56-400"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig19" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-12-02-15-20-55-422"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-02-15-20-55-422"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig20" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-12-03-08-35-06-052"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-12-03-08-35-06-052"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig21" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-28-15-56-15-396"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-28-15-56-15-396"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig22" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-28-09-17-42-485"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-28-09-17-42-485"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig23" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-27-22-24-47-858"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-27-22-24-47-858"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig24" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-27-22-09-20-901"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-27-22-09-20-901"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig25" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-27-20-39-03-723"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-27-20-39-03-723"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_sagemaker_endpoint_configuration" "SageMakerEndpointConfig26" {
    name = "jumpstart-example-FT-model-txt2img-stab-2024-11-27-19-46-18-811"
    production_variants {
        variant_name = "AllTraffic"
        model_name = "sagemaker-jumpstart-2024-11-27-19-46-18-812"
        initial_instance_count = 1
        instance_type = "ml.g4dn.2xlarge"
        initial_variant_weight = 1
    }
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota" {
    quota_code = "L-1623D0BE"
    service_code = "sagemaker"
    value = 2
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota2" {
    quota_code = "L-9614C779"
    service_code = "sagemaker"
    value = 3
}

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota3" {
    quota_code = "L-C2495BC4"
    service_code = "sagemaker"
    value = 2
}
