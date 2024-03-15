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

import model_hudson_master_computerexecutors
import model_hudson_master_computermonitor_data
import model_label1

type HudsonMasterComputer* = object
  ## 
  class*: string
  displayName*: string
  executors*: seq[HudsonMasterComputerexecutors]
  icon*: string
  iconClassName*: string
  idle*: bool
  jnlpAgent*: bool
  launchSupported*: bool
  loadStatistics*: Label1
  manualLaunchAllowed*: bool
  monitorData*: HudsonMasterComputermonitorData
  numExecutors*: int
  offline*: bool
  offlineCause*: string
  offlineCauseReason*: string
  temporarilyOffline*: bool
