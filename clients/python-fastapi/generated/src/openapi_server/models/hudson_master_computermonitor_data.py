# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401
from openapi_server.models.clock_difference import ClockDifference
from openapi_server.models.disk_space_monitor_descriptor_disk_space import DiskSpaceMonitorDescriptorDiskSpace
from openapi_server.models.response_time_monitor_data import ResponseTimeMonitorData
from openapi_server.models.swap_space_monitor_memory_usage2 import SwapSpaceMonitorMemoryUsage2


class HudsonMasterComputermonitorData(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    HudsonMasterComputermonitorData - a model defined in OpenAPI

        hudson_node_monitors_swap_space_monitor: The hudson_node_monitors_swap_space_monitor of this HudsonMasterComputermonitorData [Optional].
        hudson_node_monitors_temporary_space_monitor: The hudson_node_monitors_temporary_space_monitor of this HudsonMasterComputermonitorData [Optional].
        hudson_node_monitors_disk_space_monitor: The hudson_node_monitors_disk_space_monitor of this HudsonMasterComputermonitorData [Optional].
        hudson_node_monitors_architecture_monitor: The hudson_node_monitors_architecture_monitor of this HudsonMasterComputermonitorData [Optional].
        hudson_node_monitors_response_time_monitor: The hudson_node_monitors_response_time_monitor of this HudsonMasterComputermonitorData [Optional].
        hudson_node_monitors_clock_monitor: The hudson_node_monitors_clock_monitor of this HudsonMasterComputermonitorData [Optional].
        _class: The _class of this HudsonMasterComputermonitorData [Optional].
    """

    hudson_node_monitors_swap_space_monitor: Optional[SwapSpaceMonitorMemoryUsage2] = Field(alias="hudson.node_monitors.SwapSpaceMonitor", default=None)
    hudson_node_monitors_temporary_space_monitor: Optional[DiskSpaceMonitorDescriptorDiskSpace] = Field(alias="hudson.node_monitors.TemporarySpaceMonitor", default=None)
    hudson_node_monitors_disk_space_monitor: Optional[DiskSpaceMonitorDescriptorDiskSpace] = Field(alias="hudson.node_monitors.DiskSpaceMonitor", default=None)
    hudson_node_monitors_architecture_monitor: Optional[str] = Field(alias="hudson.node_monitors.ArchitectureMonitor", default=None)
    hudson_node_monitors_response_time_monitor: Optional[ResponseTimeMonitorData] = Field(alias="hudson.node_monitors.ResponseTimeMonitor", default=None)
    hudson_node_monitors_clock_monitor: Optional[ClockDifference] = Field(alias="hudson.node_monitors.ClockMonitor", default=None)
    _class: Optional[str] = Field(alias="_class", default=None)

HudsonMasterComputermonitorData.update_forward_refs()
