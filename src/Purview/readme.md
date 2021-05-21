<!-- region Generated -->
# Az.Purview
This directory contains the PowerShell module for the Purview service.

---
## Status
[![Az.Purview](https://img.shields.io/powershellgallery/v/Az.Purview.svg?style=flat-square&label=Az.Purview "Az.Purview")](https://www.powershellgallery.com/packages/Az.Purview/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 2.2.3 or greater

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Az.Purview`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
Branch: 3f1e770aa89c7d306d7cdb4f7aa852819d2f9fa8
require:
# readme.azure.noprofile.md is the common configuration file
  - $(this-folder)/../readme.azure.noprofile.md
input-file:
# You need to specify your swagger files here.
  - $(repo)/specification/deviceupdate/resource-manager/Microsoft.DeviceUpdate/preview/2020-03-01-preview/deviceupdate.json
# If the swagger has not been put in the repo, you may uncomment the following line and refer to it locally
# - (this-folder)/relative-path-to-your-swagger 

# For new RP, the version is 0.1.0
module-version: 0.1.0
# Normally, title is the service name
title: Purview
subject-prefix: $(service-name)

# If there are post APIs for some kinds of actions in the RP, you may need to 
# uncomment following line to support viaIdentity for these post APIs
# identity-correction-for-post: true
nested-object-to-string: true

directive:
  # Following is two common directive which are normally required in all the RPs
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^Update$|^UpdateViaIdentity$|^Check$|^CheckViaIdentity$|^CheckViaIdentityExpanded$
    remove: true
  # Remove the set-* cmdlet
  - where:
      verb: Set
    remove: true
  - where:
      verb: New|Update
      subject: Account
    hide: true
  - where:
      verb: Invoke
      subject: HeadAccount
    set:
      verb: Test
      subject: AccountExistence
  - where:
      verb: Invoke
      subject: HeadInstance
    set:
      verb: Test
      subject: InstanceExistence  
  - model-cmdlet:
    - IotHubSettings
  - from: swagger-document
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceUpdate/accounts/{accountName}"].put.responses
    transform: >-
      return {
          "200": {
            "description": "Async operation to create or update Account was created.",
            "schema": {
              "$ref": "#/definitions/Account"
            }
          },
          "201": {
            "description": "Async operation to create or update Account was created.",
            "schema": {
              "$ref": "#/definitions/Account"
            }
          },
          "default": {
            "description": "Error response describing the reason for operation failure.",
            "schema": {
              "$ref": "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/common-types/resource-management/v2/types.json#/definitions/ErrorResponse"
            }
          }
        }
  - from: swagger-document
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceUpdate/accounts/{accountName}/instances/{instanceName}"].put.responses
    transform: >-
      return {
        "200": {
            "description": "Async operation to create or update Instance was created.",
            "schema": {
              "$ref": "#/definitions/Instance"
            }
          },
          "201": {
            "description": "Async operation to create or update Instance was created.",
            "schema": {
              "$ref": "#/definitions/Instance"
            }
          },
          "default": {
            "description": "Error response describing the reason for operation failure.",
            "schema": {
              "$ref": "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/common-types/resource-management/v2/types.json#/definitions/ErrorResponse"
            }
          }
        }
```
