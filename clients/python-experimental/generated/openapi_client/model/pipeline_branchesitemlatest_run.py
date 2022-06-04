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


class PipelineBranchesitemlatestRun(
    DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    durationInMillis = IntSchema
    estimatedDurationInMillis = IntSchema
    enQueueTime = StrSchema
    endTime = StrSchema
    id = StrSchema
    organization = StrSchema
    pipeline = StrSchema
    result = StrSchema
    runSummary = StrSchema
    startTime = StrSchema
    state = StrSchema
    type = StrSchema
    commitId = StrSchema
    _class = StrSchema


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, ],
        durationInMillis: typing.Union[durationInMillis, Unset] = unset,
        estimatedDurationInMillis: typing.Union[estimatedDurationInMillis, Unset] = unset,
        enQueueTime: typing.Union[enQueueTime, Unset] = unset,
        endTime: typing.Union[endTime, Unset] = unset,
        id: typing.Union[id, Unset] = unset,
        organization: typing.Union[organization, Unset] = unset,
        pipeline: typing.Union[pipeline, Unset] = unset,
        result: typing.Union[result, Unset] = unset,
        runSummary: typing.Union[runSummary, Unset] = unset,
        startTime: typing.Union[startTime, Unset] = unset,
        state: typing.Union[state, Unset] = unset,
        type: typing.Union[type, Unset] = unset,
        commitId: typing.Union[commitId, Unset] = unset,
        _class: typing.Union[_class, Unset] = unset,
        _configuration: typing.Optional[Configuration] = None,
        **kwargs: typing.Type[Schema],
    ) -> 'PipelineBranchesitemlatestRun':
        return super().__new__(
            cls,
            *args,
            durationInMillis=durationInMillis,
            estimatedDurationInMillis=estimatedDurationInMillis,
            enQueueTime=enQueueTime,
            endTime=endTime,
            id=id,
            organization=organization,
            pipeline=pipeline,
            result=result,
            runSummary=runSummary,
            startTime=startTime,
            state=state,
            type=type,
            commitId=commitId,
            _class=_class,
            _configuration=_configuration,
            **kwargs,
        )
