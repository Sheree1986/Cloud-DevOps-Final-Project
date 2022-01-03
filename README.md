# Cloud-DevOps-Finial-Project
Introduction
In this project I used the below tools 
•	AWS
o	CloudFormation
o	EKS
•	CircleCI
•	Docker
Application
My application is a simple “Hello World” application. I used the below sequence to deploy my application 
1-	CloudFormation to create infrastructure. This infrastructure is created only one time 
a.	Network infrastructure including: VPC, 1 public subnet, 2 private subnets and internet gateway (InfrastructureCreation/Network.yml)
b.	Servers infrastructure including: 1 EKS cluster and 1 bastion host to test and administrate my EKS cluster (InfrastructureCreation/Servers.yml)
2-	CircleCI CI/CD to auto deploy my application if any change done using the following sequence
a.	code linting
b.	docker code building
c.	docker code uploading to docker hub
d.	deploy new image from docker hub to my EKS cluster
Output
I can use my cluster endpoint to check the running application.
http://af8623c770f474e0c951a6351894a0b7-988427686.us-east-1.elb.amazonaws.com/

