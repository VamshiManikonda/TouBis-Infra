#!/bin/bash

#initialize the all the stacks

aws cloudformation deploy --template-file templates/network_stack.yaml --stack-name TouBisNetwork --profile TouBicAdmin --region=us-east-1

aws cloudformation deploy --template-file templates/webservers_stack.yaml --stack-name TouBisWebServers --profile TouBicAdmin --region=us-east-1

aws cloudformation deploy --template-file templates/loadbalancer_stack.yaml --stack-name TouBisWebLoadBalancers --profile TouBicAdmin --region=us-east-1

