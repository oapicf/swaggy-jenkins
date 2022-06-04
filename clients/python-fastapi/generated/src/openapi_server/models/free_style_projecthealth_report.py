# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401


class FreeStyleProjecthealthReport(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    FreeStyleProjecthealthReport - a model defined in OpenAPI

        description: The description of this FreeStyleProjecthealthReport [Optional].
        icon_class_name: The icon_class_name of this FreeStyleProjecthealthReport [Optional].
        icon_url: The icon_url of this FreeStyleProjecthealthReport [Optional].
        score: The score of this FreeStyleProjecthealthReport [Optional].
        _class: The _class of this FreeStyleProjecthealthReport [Optional].
    """

    description: Optional[str] = Field(alias="description", default=None)
    icon_class_name: Optional[str] = Field(alias="iconClassName", default=None)
    icon_url: Optional[str] = Field(alias="iconUrl", default=None)
    score: Optional[int] = Field(alias="score", default=None)
    _class: Optional[str] = Field(alias="_class", default=None)

FreeStyleProjecthealthReport.update_forward_refs()
