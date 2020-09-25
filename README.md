# stack-kapsule

This stack will create a Scaleway Kubernetes Kapsule cluster with one or more node pools.

# Architecture

<p align="center">
<img src="docs/diagram.png" width="400">
</p>


  * **Kapsule**: Scaleway Kubernetes Kapsule
  * **Node Pool**: Scaleway Kubernetes Kapsule Node Pool

# Requirements

In order to run this task, couple elements are required within the infrastructure:

  * Having an Object Storage Bucket to store Terraform remote states [Here](https://www.scaleway.com/en/docs/block-storage-overview/)


# Details

## Pipeline

> **Note** The pipeline contains a manual approval between terraform plan and terraform apply.
> That means if you trigger a terraform plan, to apply it, you have to go on terraform apply job
> and click on the `+` button to trigger it.

<img src="docs/pipeline.png" width="800">

**Jobs description**

  * `terraform-plan`: Terraform job that will simply make a plan of the stack.
  * `terraform-apply`: Terraform job similar to the plan one, but will actually create/update everything that needs to. Please see the plan diff for a better understanding.
  * `terraform-destroy`: :warning: Terraform job meant to destroy the whole stack - **NO CONFIRMATION ASKED**. If triggered, the full project **WILL** be destroyed. Use with caution.

**Params**

|Name|Description|Type|Default|Required|
|---|---|:---:|:---:|:---:|


## Terraform

**Inputs**

|Name|Description|Type|Default|Required|
|---|---|:---:|:---:|:---:|

**Outputs**

| Name | Description |
|------|-------------|

# Known Issues

