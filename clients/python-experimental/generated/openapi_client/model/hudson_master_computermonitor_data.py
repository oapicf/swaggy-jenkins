# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification  # noqa: E501

    The version of the OpenAPI document: 1.5.1-pre.0
    Contact: blah@cliffano.com
    Generated by: https://openapi-generator.tech
"""

import re  # noqa: F401
import sys  # noqa: F401
import typing  # noqa: F401
import functools  # noqa: F401

from frozendict import frozendict  # noqa: F401

import decimal  # noqa: F401
from datetime import date, datetime  # noqa: F401
from frozendict import frozendict  # noqa: F401

from openapi_client.schemas import (  # noqa: F401
    AnyTypeSchema,
    ComposedSchema,
    DictSchema,
    ListSchema,
    StrSchema,
    IntSchema,
    Int32Schema,
    Int64Schema,
    Float32Schema,
    Float64Schema,
    NumberSchema,
    UUIDSchema,
    DateSchema,
    DateTimeSchema,
    DecimalSchema,
    BoolSchema,
    BinarySchema,
    NoneSchema,
    none_type,
    Configuration,
    Unset,
    unset,
    ComposedBase,
    ListBase,
    DictBase,
    NoneBase,
    StrBase,
    IntBase,
    Int32Base,
    Int64Base,
    Float32Base,
    Float64Base,
    NumberBase,
    UUIDBase,
    DateBase,
    DateTimeBase,
    BoolBase,
    BinaryBase,
    Schema,
    _SchemaValidator,
    _SchemaTypeChecker,
    _SchemaEnumMaker
)


class HudsonMasterComputermonitorData(
    DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    @classmethod
    @property
    def hudson.node_monitors.SwapSpaceMonitor(cls) -> typing.Type['SwapSpaceMonitorMemoryUsage2']:
        return SwapSpaceMonitorMemoryUsage2

    @classmethod
    @property
    def hudson.node_monitors.TemporarySpaceMonitor(cls) -> typing.Type['DiskSpaceMonitorDescriptorDiskSpace']:
        return DiskSpaceMonitorDescriptorDiskSpace

    @classmethod
    @property
    def hudson.node_monitors.DiskSpaceMonitor(cls) -> typing.Type['DiskSpaceMonitorDescriptorDiskSpace']:
        return DiskSpaceMonitorDescriptorDiskSpace
    hudson_node_monitors_architecture_monitor = StrSchema
    locals()['hudson.node_monitors.ArchitectureMonitor'] = hudson_node_monitors_architecture_monitor
    del locals()['hudson_node_monitors_architecture_monitor']

    @classmethod
    @property
    def hudson.node_monitors.ResponseTimeMonitor(cls) -> typing.Type['ResponseTimeMonitorData']:
        return ResponseTimeMonitorData

    @classmethod
    @property
    def hudson.node_monitors.ClockMonitor(cls) -> typing.Type['ClockDifference']:
        return ClockDifference
    _class = StrSchema


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, ],
        _class: typing.Union[_class, Unset] = unset,
        _configuration: typing.Optional[Configuration] = None,
        **kwargs: typing.Type[Schema],
    ) -> 'HudsonMasterComputermonitorData':
        return super().__new__(
            cls,
            *args,
            _class=_class,
            _configuration=_configuration,
            **kwargs,
        )

from openapi_client.model.clock_difference import ClockDifference
from openapi_client.model.disk_space_monitor_descriptor_disk_space import DiskSpaceMonitorDescriptorDiskSpace
from openapi_client.model.response_time_monitor_data import ResponseTimeMonitorData
from openapi_client.model.swap_space_monitor_memory_usage2 import SwapSpaceMonitorMemoryUsage2
