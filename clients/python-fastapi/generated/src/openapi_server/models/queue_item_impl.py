# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401


class QueueItemImpl(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    QueueItemImpl - a model defined in OpenAPI

        _class: The _class of this QueueItemImpl [Optional].
        expected_build_number: The expected_build_number of this QueueItemImpl [Optional].
        id: The id of this QueueItemImpl [Optional].
        pipeline: The pipeline of this QueueItemImpl [Optional].
        queued_time: The queued_time of this QueueItemImpl [Optional].
    """

    _class: Optional[str] = Field(alias="_class", default=None)
    expected_build_number: Optional[int] = Field(alias="expectedBuildNumber", default=None)
    id: Optional[str] = Field(alias="id", default=None)
    pipeline: Optional[str] = Field(alias="pipeline", default=None)
    queued_time: Optional[int] = Field(alias="queuedTime", default=None)

QueueItemImpl.update_forward_refs()
