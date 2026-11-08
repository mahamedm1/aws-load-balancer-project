
# AWS Application Load Balancer & EC2 Project

## Project Overview

This project demonstrates the deployment and configuration of an AWS Application Load Balancer (ALB) to distribute incoming HTTP traffic across two EC2 instances deployed in separate Availability Zones.

The objective was to gain hands-on experience with AWS load balancing, target groups, health checks, and high availability by building an infrastructure environment capable of distributing incoming requests across multiple web servers.

The infrastructure was provisioned manually using the AWS Management Console to develop a practical understanding of how Application Load Balancers operate and how they improve application availability and fault tolerance.

A key aspect of this project was configuring **one Application Load Balancer across two Availability Zones**, with an EC2 instance deployed in each zone. Both instances hosted web pages displaying different responses, allowing traffic distribution to be tested and verified.

## Architecture

The infrastructure was deployed in the AWS **eu-north-1 (Stockholm)** Region within a custom VPC containing two public and two private subnets.

A single internet-facing Application Load Balancer was configured across two Availability Zones, receiving incoming HTTP requests on port 80 and forwarding them to healthy EC2 instances registered within a target group.

The EC2 instances were deployed across:

- **eu-north-1a:** AZ1-EC2 (Server 1)
- **eu-north-1b:** AZ2-EC2 (Server 2)

This architecture improves application availability by allowing the ALB to continue directing traffic to a healthy instance if another becomes unhealthy.

### Network Components

- **VPC:** Provides an isolated virtual network for the infrastructure.
- **Public Subnets:** Two public subnets configured within the VPC to support the internet-facing ALB.
- **Private Subnets:** Two private subnets created within the VPC.
- **Application Load Balancer (ALB):** Distributes incoming HTTP traffic across healthy EC2 instances in two Availability Zones.
- **EC2 Instances:** Two web servers deployed in separate Availability Zones, each serving a different response.
- **Target Group:** Contains both EC2 instances as registered targets.
- **HTTP Listener:** Listens for incoming HTTP requests on port 80 and forwards them to the target group.
- **Health Checks:** Monitor the availability of EC2 instances to ensure traffic is forwarded only to healthy targets.
- **Security Groups:** Control inbound and outbound network traffic between the ALB and EC2 instances.

### Architecture Diagram

