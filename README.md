# Docker + CI

Set of docker files that are useful for running ci/cd workflow on CircleCI and Concourse. 
Come pre-packaged with a set of tools that may be useful for folks working with Terrafom, AWS CLI, Node, Python and docker 
(as in, you can run docker commands from within these containers. 
See: https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools) for the entire set of available pre-packaged tools.

These mostly use `slim` base images to improve images size. 

## Images


### CircleCI

#### Node + Terraform + DinD + awscli

Details:

 - File: `circleci/Dockerfile.circle`
 - Pull: `docker pull carlomazzaferro/circle-ci-cm`

Specs:
 - `Node 11`
 - `Terraform 0.11.11`
 - `awscli`
 - All the tools from [CircleCI base images](https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools)

Ideal for:

 - Running tests on fronted servers
 - Packaging frontend docker images
 - Deploying images with the terraform CLI

Size: 998MB

#### Python + DinD + awscli

- File: `circleci/Dockerfile.circle.awscli`
- Pull: `carlomazzaferro/circle-ci-awscli`
- All the tools from [CircleCI base images](https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools)

Size: 620MB

#### Terraform + DinD

- File: `circleci/Dockerfile.circle.terraform`
- Pull: `carlomazzaferro/circle-ci-terraform`
- Some of the tools from [CircleCI base images](https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools). 
See Dockerfile definition for more info.

Size: 367 MB

Ideal for:

 - Deploying images with the terraform CLI using a pretty small image


### Concourse

#### Alpine Python + Scientific libs (numpy, sagemaker) + awscli + Terraform

- File: `concourse/Dockerfile.concourse.python`
- Pull: `carlomazzaferro/concourse-tf-python`


Size: 350 MB

Ideal for:

 - Provision terraform infra and do Sagemaker-related operations such as deploying models, until when terraform [supports
 it fully](https://github.com/terraform-providers/terraform-provider-aws/issues/2493)
 
 
#### Python + TensorFlow + awscli + Terraform

- File: `concourse/Dockerfile.concourse.tensorflow`
- Pull: `carlomazzaferro/concourse-tf-python-tensorflow`


Size: 1.4 GB

Ideal for:

 - Provision terraform infra and do Sagemaker-related operations such as training TensorFlow models
 
 







