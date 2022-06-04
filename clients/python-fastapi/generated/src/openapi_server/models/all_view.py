# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401


class AllView(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    AllView - a model defined in OpenAPI

        _class: The _class of this AllView [Optional].
        name: The name of this AllView [Optional].
        url: The url of this AllView [Optional].
    """

    _class: Optional[str] = Field(alias="_class", default=None)
    name: Optional[str] = Field(alias="name", default=None)
    url: Optional[str] = Field(alias="url", default=None)

AllView.update_forward_refs()
