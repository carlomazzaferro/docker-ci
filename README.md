# Docker + CI

Set of docker files that are useful for running ci/cd workflow on CircleCI. 
Come pre-packaged with a set of tools that may be useful for folks working with Terrafom, AWS CLI, Node, Python and docker 
(as in, you can run docker commands from within these containers. 
See: https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools) for the entire set of available pre-packaged tools.

These all use `slim` base images to improve images size. 

## Images

### Node + Terraform + DinD + awscli

Details:

 - File: `Dockerfile.circle`
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

### Python + DinD + awscli

- File: `Dockerfile.circle.awscli`
- Pull: `carlomazzaferro/circle-ci-awscli`
- All the tools from [CircleCI base images](https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools)

Size: 620MB

### Terraform + DinD

- File: `Dockerfile.circle.terraform`
- Pull: `carlomazzaferro/circle-ci-terraform`
- Some of the tools from [CircleCI base images](https://circleci.com/docs/2.0/circleci-images/#pre-installed-tools). 
See Dockerfile definition for more info.

Size: 367 MB

Ideal for:

 - Deploying images with the terraform CLI using a pretty small image





