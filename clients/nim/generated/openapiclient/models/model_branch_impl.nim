#
# Swaggy Jenkins
# 
# Jenkins API clients generated from Swagger / Open API specification
# The version of the OpenAPI document: 2.0.1-pre.0
# Contact: blah+oapicf@cliffano.com
# Generated by: https://openapi-generator.tech
#

import json
import tables

import model_branch_impllinks
import model_branch_implpermissions
import model_pipeline_run_impl
import model_string_parameter_definition

type BranchImpl* = object
  ## 
  class*: string
  displayName*: string
  estimatedDurationInMillis*: int
  fullDisplayName*: string
  fullName*: string
  name*: string
  organization*: string
  parameters*: seq[StringParameterDefinition]
  permissions*: BranchImplpermissions
  weatherScore*: int
  pullRequest*: string
  links*: BranchImpllinks
  latestRun*: PipelineRunImpl
