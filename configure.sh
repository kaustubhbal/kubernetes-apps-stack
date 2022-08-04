#!/bin/bash
wget https://github.com/weaveworks/eksctl/releases/download/v0.68.0/eksctl_Linux_amd64.tar.gz
tar -zxvf eksctl_Linux_amd64.tar.gz
mv /tmp/eksctl /bin
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
mv aws-iam-authenticator /bin/
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.22.6/2022-03-09/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /bin/
apt-get update
apt-get install awscli -y
echo 'source <(kubectl completion bash)' >>~/.bashrc
    kubectl completion bash >/etc/bash_completion.d/kubectl
    source /etc/bash_completion.d/kubectl
    echo 'source <(kubectl completion bash)' >> /etc/bashrc
    source /etc/bash_completion.d/kubectl
    

#eksctl create cluster --name prod --version 1.18 --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 3 --region us-east-2 --ssh-access --ssh-public-key=ohio &> output.log &
#kubernetes notes    
#https://phoenixnap.com/kb/understanding-kubernetes-architecture-diagrams


