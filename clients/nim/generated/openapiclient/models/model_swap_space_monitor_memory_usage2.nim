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


type SwapSpaceMonitorMemoryUsage2* = object
  ## 
  class*: string
  availablePhysicalMemory*: int
  availableSwapSpace*: int
  totalPhysicalMemory*: int
  totalSwapSpace*: int
