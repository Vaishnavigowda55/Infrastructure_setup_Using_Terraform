# "Automating AWS VPC and EC2 Instance Setup Using Terraform"
This Terraform configuration also deploys an "Nginx web server" on the EC2 instance. The server is automatically installed and started when the instance is created.<br>
The Nginx server is installed using a bash script (user_data), which runs during the instance launch.<br>
Once deployed, you can access the Nginx server via the EC2 instance's public IP or URL provided in the Terraform output.

# Prerequisites
## Before using the Terraform configuration, ensure the following:

#### AWS CLI is installed and configured with valid AWS credentials.<br>
#### Terraform is installed on your local machine.<br>
#### Few commands to run terraform script.<br>
1. terraform init                 #Initializes the working directory and downloads necessary provider plugins
2. terraform plan                 #Previews the changes Terraform will apply based on the configuration
3. terraform validate                #Verifies the configuration files for syntax errors and issues
4. terraform apply                 #Applies the configuration to create or modify the resources in your AWS account
