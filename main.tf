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
    name = "egeul-admin-user"
    tags = {}
}

resource "aws_iam_role" "IAMRole" {
    path = "/service-role/"
    name = "AmazonSageMakerCanvasEMRSExecutionAccess-20241206T135862"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"EMRServerlessTrustPolicy\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"emr-serverless.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"}}}]}"
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
    name = "AmazonSageMakerCanvasEMRSExecutionAccess-20241128T033602"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"EMRServerlessTrustPolicy\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"emr-serverless.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole4" {
    path = "/service-role/"
    name = "AmazonSageMaker-ExecutionRole-20241206T135863"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole5" {
    path = "/service-role/"
    name = "AmazonSagemakerCanvasForecastRole-20241206T135862"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"forecast.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole6" {
    path = "/service-role/"
    name = "AmazonSagemakerCanvasForecastRole-20241128T033602"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"forecast.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole7" {
    path = "/service-role/"
    name = "AmazonSageMaker-ExecutionRole-20241128T033603"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sagemaker.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole8" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudformation.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
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
    name = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"apigateway.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
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
    name = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codepipeline.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
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
    name = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"firehose.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole16" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsGlueRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"glue.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole17" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsLaunchRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"servicecatalog.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole18" {
    path = "/service-role/"
    name = "AmazonSageMakerServiceCatalogProductsUseRole"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"codebuild.amazonaws.com\",\"firehose.amazonaws.com\",\"codepipeline.amazonaws.com\",\"cloudformation.amazonaws.com\",\"lambda.amazonaws.com\",\"events.amazonaws.com\",\"states.amazonaws.com\",\"sagemaker.amazonaws.com\",\"glue.amazonaws.com\",\"apigateway.amazonaws.com\"]},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole19" {
    path = "/service-role/"
    name = "egeul-ai-bedrock-role2"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"bedrock.amazonaws.com\"},\"Action\":\"sts:AssumeRole\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"127214190635\"},\"ArnEquals\":{\"aws:SourceArn\":\"arn:aws:bedrock:us-west-2:127214190635:model-customization-job/*\"}}}]}"
    max_session_duration = 3600
    tags = {}
}

resource "aws_iam_role" "IAMRole20" {
    path = "/"
    name = "egeul-ai-bedrock-role"
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
    aws_service_name = "servicequotas.amazonaws.com"
    description = "A service-linked role is required for Service Quotas to access your service limits."
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole2" {
    aws_service_name = "elasticfilesystem.amazonaws.com"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole3" {
    aws_service_name = "sagemaker.amazonaws.com"
    description = "AWS SageMaker Notebooks Service Linked Role"
}

resource "aws_iam_service_linked_role" "IAMServiceLinkedRole4" {
    aws_service_name = "ops.emr-serverless.amazonaws.com"
}

resource "aws_iam_policy" "IAMManagedPolicy" {
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

resource "aws_iam_policy" "IAMManagedPolicy2" {
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

resource "aws_iam_policy" "IAMManagedPolicy3" {
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

resource "aws_iam_policy" "IAMManagedPolicy6" {
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

resource "aws_iam_policy" "IAMManagedPolicy7" {
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

resource "aws_iam_policy" "IAMManagedPolicy10" {
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

resource "aws_iam_policy" "IAMManagedPolicy13" {
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

resource "aws_iam_policy" "IAMManagedPolicy14" {
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

resource "aws_iam_policy" "IAMManagedPolicy17" {
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

resource "aws_iam_policy" "IAMManagedPolicy18" {
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

resource "aws_iam_policy" "IAMManagedPolicy19" {
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

resource "aws_iam_policy" "IAMManagedPolicy20" {
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
    role = "${aws_iam_role.IAMRole20.name}"
}

resource "aws_iam_instance_profile" "IAMInstanceProfile" {
    path = "/"
    name = "${aws_iam_role.IAMRole20.name}"
    roles = [
        "${aws_iam_role.IAMRole20.name}"
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

resource "aws_security_group" "EC2SecurityGroup" {
    description = "[DO NOT DELETE] Security Group that allows inbound NFS traffic for SageMaker Notebooks Domain [d-122chnteye4o]"
    name = "security-group-for-inbound-nfs-d-122chnteye4o"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:127214190635:domain/d-122chnteye4o"
    }
    vpc_id = "vpc-084140095ab1477cb"
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup2.id}"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup2.id}"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    ingress {
        security_groups = [
            "${aws_security_group.EC2SecurityGroup2.id}"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_security_group" "EC2SecurityGroup2" {
    description = "[DO NOT DELETE] Security Group that allows outbound NFS traffic for SageMaker Notebooks Domain [d-122chnteye4o]"
    name = "security-group-for-outbound-nfs-d-122chnteye4o"
    tags = {
        ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:127214190635:domain/d-122chnteye4o"
    }
    vpc_id = "vpc-084140095ab1477cb"
    egress {
        security_groups = [
            "sg-01da3821063ab9361"
        ]
        from_port = 988
        protocol = "tcp"
        to_port = 988
    }
    egress {
        security_groups = [
            "sg-01da3821063ab9361"
        ]
        from_port = 1018
        protocol = "tcp"
        to_port = 1023
    }
    egress {
        security_groups = [
            "sg-01da3821063ab9361"
        ]
        from_port = 2049
        protocol = "tcp"
        to_port = 2049
    }
}

resource "aws_s3_bucket" "S3Bucket" {
    bucket = "egeul-ai-output"
}

resource "aws_s3_bucket" "S3Bucket2" {
    bucket = "egeul-ai-sagemaker"
}

resource "aws_s3_bucket" "S3Bucket3" {
    bucket = "sagemaker-studio-078f5isseqe9"
}

resource "aws_s3_bucket" "S3Bucket4" {
    bucket = "egeul-ai-stable-diffusion"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy" {
    bucket = "${aws_s3_bucket.S3Bucket.id}"
    policy = "{\"Version\":\"2012-10-17\",\"Id\":\"Policy1733298065946\",\"Statement\":[{\"Sid\":\"Stmt1733298065203\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":[\"arn:aws:s3:::egeul-ai-output\",\"arn:aws:s3:::egeul-ai-output/*\"]}]}"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy2" {
    bucket = "${aws_s3_bucket.S3Bucket4.id}"
    policy = "{\"Version\":\"2012-10-17\",\"Id\":\"Policy1733151621836\",\"Statement\":[{\"Sid\":\"Stmt1733151620958\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":[\"arn:aws:s3:::egeul-ai-stable-diffusion\",\"arn:aws:s3:::egeul-ai-stable-diffusion/*\"]}]}"
}

resource "aws_s3_bucket_policy" "S3BucketPolicy3" {
    bucket = "${aws_s3_bucket.S3Bucket3.id}"
    policy = "{\"Version\":\"2008-10-17\",\"Id\":\"Enforce HTTPS\",\"Statement\":[{\"Effect\":\"Deny\",\"Principal\":\"*\",\"Action\":\"s3:*\",\"Resource\":\"arn:aws:s3:::sagemaker-studio-078f5isseqe9\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}}}]}"
}

resource "aws_cloudwatch_log_group" "LogsLogGroup" {
    name = "/aws/sagemaker/studio"
}

resource "aws_cloudwatch_log_stream" "LogsLogStream" {
    log_group_name = "/aws/sagemaker/studio"
    name = "d-122chnteye4o/default-20241206T135862/Canvas/default"
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

resource "aws_servicequotas_service_quota" "ServiceQuotasServiceQuota" {
    quota_code = "L-0DA4ABF3"
    service_code = "iam"
    value = 20
}
