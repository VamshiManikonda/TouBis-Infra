# TouBisProject

Here are the prerequisites for infrastructure creation and provisiniong of aws resources
- ansible client
- awscli

aws configure --profile TouBisAdmin

and then enter the following details


AWS Access Key ID [None]:      <enter access key provided in shared file and hit enter>
AWS Secret Access Key [None]:  <enter secret key provided in shared file and hit enter>
Default region name [None]:    us-east-1
Default output format [None]:  <just hit enter>


Infrastructure setup will be launched from local machine

Web application deployment will be done from Bastion host (publicly accessible) as our 3 servers (2 webservers, 1 proxy load balancer) are in private network.


Infrastructure setup/update commands:
------------------------------

git clone https://github.com/VamshiManikonda/TouBis-Infra.git
git pull
cd TouBis-Infra/cloudformation/
bash init.sh

when you run above command, CloudFormation stacks will be created at region=us-east-1

Deployment steps:
--------------------------------

- ssh on to Bastion host using 'TouBisKey.pem'
- clone repo
- git clone https://github.com/VamshiManikonda/ansible-node-app-deploy.git
- git pull

- run below ansible commands to deploy

- cd deploy
- ansible-playbook deploy.yml -i demo -u root -e env=demo


Note: Use the pem file 'TouBisKey' to ssh on to Bastion host and other instaances via Bastion host.

Key's and Credentials are stored in Google-Drive
https://drive.google.com/drive/folders/1nJx3eo_PJT-mX4PTMS4E5f7GCp4eMdo3?usp=sharing

