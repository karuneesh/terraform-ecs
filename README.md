# Provisioning AWS ECS Services with Terraform
![terraform-ecs-provision_](https://github.com/karuneesh/terraform-ecs/assets/59604775/14e9e11e-fcfc-4ff0-bdb7-fea36be4e5d4)
# Provisioning AWS ECS Services with Terraform

The above figure depicts two workflows. The workflow one is related to Infrastructure repository & the second workflow is linked to CI/CD of AWS ECS Services used to build node.js apps.

## Workflow-1: Provisioning AWS ECS Services with Terraform

1. **Preparation and Central Repository**:
   - DevOps Infra user prepares the solution locally and pushes it to the central Git repository.
   
2. **Cloning and Initialization**:
   - DevOps Infra team member clones the Terraform IaC repository.
   - `terraform init` is executed to install necessary plugins/modules and authenticate with the AWS account.

3. **Planning and Verification**:
   - `terraform plan` is executed to analyze dependencies, evaluate changes required to match desired state, and verify prerequisites.
   
4. **Applying Changes**:
   - `terraform apply` is executed to provision, modify, or destroy resources as necessary to bring the infrastructure into the desired state.
<img width="642" alt="terraform-ecs-modules" src="https://github.com/karuneesh/terraform-ecs/assets/59604775/62982135-e965-44d6-9e22-02fa5cf817a8">
### Solution Explanation:
- Utilizes reusable and configurable Terraform modules for provisioning AWS resources.
- Modules have input and output files along with main configuration files.
- Order of provisioning modules is crucial due to dependencies between resources.
- Configuration values are specified in `terraform.tfvars` file.
- Accessing the application is done via the Public DNS of the public ALB.

## Workflow-2: CI/CD for ECS Microservices Applications

1. **Code Commit**:
   - DevOps Developer commits code into respective AWS CodeCommit repositories for microservices.

2. **CodePipeline**:
   - CodePipeline is triggered, consisting of three stages: CodeCommit, CodeBuild, and CodeDeploy.

3. **Deployment**:
   - Final stage of CI/CD deploys the latest updated microservice Node.js app code onto the ECS cluster.

This workflow ensures a streamlined process for developers to continuously integrate and deploy microservices applications onto ECS clusters across different environments.



