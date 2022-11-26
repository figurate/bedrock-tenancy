# bedrock-tenancy

A collection of infrastructure blueprints related to tenant management

## Overview

Modern application architectures typically span multiple IaaS, PaaS, and SaaS environments, each with their
own tenancy concepts and configurations. This blueprint collection provides common configurations for well-known
environments, providing a simple and conistent approach to managing tenancy for your applications.

## AWS

The following blueprints are concerned with Amazon Web Services (AWS) tenancy.

### Secure Baseline

This blueprint utilizes the [Nozaq AWS Secure Baseline](https://github.com/nozaq/terraform-aws-secure-baseline)
Terraform module to configure an AWS account.

### Service Discovery Namespaces

This blueprint uses the [Figurate Service Discovery Namespace] module to configure tenant namespaces.

### Alternate Contacts

Configure AWS alternate contacts used for general notifications from AWS.

### Organizations

Manage AWS Organizations and member accounts.


## Terraform Cloud

These blueprints configure organizations in Terraform Enterprise/Cloud.

### TFE Organization

Manage Organization membership and variable sets.


## Digital Ocean

TBD.


## GitHub

TBD.


## CloudFlare

TBD.
