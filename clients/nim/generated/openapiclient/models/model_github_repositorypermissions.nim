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


type GithubRepositorypermissions* = object
  ## 
  admin*: bool
  push*: bool
  pull*: bool
  class*: string
