# coding: utf-8

from __future__ import annotations
from datetime import date, datetime  # noqa: F401

import re  # noqa: F401
from typing import Any, Dict, List, Optional  # noqa: F401

from pydantic import AnyUrl, BaseModel, EmailStr, Field, validator  # noqa: F401
from openapi_server.models.extension_class_impllinks import ExtensionClassImpllinks


class ExtensionClassImpl(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.

    ExtensionClassImpl - a model defined in OpenAPI

        _class: The _class of this ExtensionClassImpl [Optional].
        links: The links of this ExtensionClassImpl [Optional].
        classes: The classes of this ExtensionClassImpl [Optional].
    """

    _class: Optional[str] = Field(alias="_class", default=None)
    links: Optional[ExtensionClassImpllinks] = Field(alias="_links", default=None)
    classes: Optional[List[str]] = Field(alias="classes", default=None)

ExtensionClassImpl.update_forward_refs()
