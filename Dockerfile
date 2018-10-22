FROM circleci/node:10.2

USER root

ENV TERRAFORM_VERSION=0.11.8

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin 
RUN rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip


RUN apt-get update && apt-get install -y python python-pip libpython-dev
RUN pip install awscli
       