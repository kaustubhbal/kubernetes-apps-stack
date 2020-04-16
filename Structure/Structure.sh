#!/bin/bash
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /bin
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
mv aws-iam-authenticator /bin/
curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /bin/
echo 'source <(kubectl completion bash)' >>~/.bashrc
    kubectl completion bash >/etc/bash_completion.d/kubectl
    source /etc/bash_completion.d/kubectl
    echo 'source <(kubectl completion bash)' >> /etc/bashrc
    source /etc/bash_completion.d/kubectl
