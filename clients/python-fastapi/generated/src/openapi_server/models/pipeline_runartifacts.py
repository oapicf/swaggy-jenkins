# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401


class PipelineRunartifacts(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    PipelineRunartifacts - a model defined in OpenAPI

        name: The name of this PipelineRunartifacts [Optional].
        size: The size of this PipelineRunartifacts [Optional].
        url: The url of this PipelineRunartifacts [Optional].
        _class: The _class of this PipelineRunartifacts [Optional].
    """

    name: Optional[str] = Field(alias="name", default=None)
    size: Optional[int] = Field(alias="size", default=None)
    url: Optional[str] = Field(alias="url", default=None)
    _class: Optional[str] = Field(alias="_class", default=None)

PipelineRunartifacts.update_forward_refs()
