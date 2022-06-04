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


class GenericResource(
    DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    _class = StrSchema
    displayName = StrSchema
    durationInMillis = IntSchema
    id = StrSchema
    result = StrSchema
    startTime = StrSchema


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, ],
        _class: typing.Union[_class, Unset] = unset,
        displayName: typing.Union[displayName, Unset] = unset,
        durationInMillis: typing.Union[durationInMillis, Unset] = unset,
        id: typing.Union[id, Unset] = unset,
        result: typing.Union[result, Unset] = unset,
        startTime: typing.Union[startTime, Unset] = unset,
        _configuration: typing.Optional[Configuration] = None,
        **kwargs: typing.Type[Schema],
    ) -> 'GenericResource':
        return super().__new__(
            cls,
            *args,
            _class=_class,
            displayName=displayName,
            durationInMillis=durationInMillis,
            id=id,
            result=result,
            startTime=startTime,
            _configuration=_configuration,
            **kwargs,
        )
