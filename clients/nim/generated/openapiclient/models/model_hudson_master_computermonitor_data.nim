#
# Swaggy Jenkins
# 
# Jenkins API clients generated from Swagger / Open API specification
# The version of the OpenAPI document: 1.5.1-pre.0
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech
#

import json
import tables

import model_clock_difference
import model_disk_space_monitor_descriptor_disk_space
import model_response_time_monitor_data
import model_swap_space_monitor_memory_usage2

type HudsonMasterComputermonitorData* = object
  ## 
  hudsonNodeMonitorsSwapSpaceMonitor*: SwapSpaceMonitorMemoryUsage2
  hudsonNodeMonitorsTemporarySpaceMonitor*: DiskSpaceMonitorDescriptorDiskSpace
  hudsonNodeMonitorsDiskSpaceMonitor*: DiskSpaceMonitorDescriptorDiskSpace
  hudsonNodeMonitorsArchitectureMonitor*: string
  hudsonNodeMonitorsResponseTimeMonitor*: ResponseTimeMonitorData
  hudsonNodeMonitorsClockMonitor*: ClockDifference
  class*: string
