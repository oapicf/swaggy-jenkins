# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification

    The version of the OpenAPI document: 2.0.1-pre.0
    Contact: blah+oapicf@cliffano.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json




from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from openapi_server.models.input_step_impl import InputStepImpl
from openapi_server.models.pipeline_step_impllinks import PipelineStepImpllinks
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self

class PipelineStepImpl(BaseModel):
    """
    PipelineStepImpl
    """ # noqa: E501
    _class: Optional[StrictStr] = None
    links: Optional[PipelineStepImpllinks] = Field(default=None, alias="_links")
    display_name: Optional[StrictStr] = Field(default=None, alias="displayName")
    duration_in_millis: Optional[StrictInt] = Field(default=None, alias="durationInMillis")
    id: Optional[StrictStr] = None
    input: Optional[InputStepImpl] = None
    result: Optional[StrictStr] = None
    start_time: Optional[StrictStr] = Field(default=None, alias="startTime")
    state: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["_class", "_links", "displayName", "durationInMillis", "id", "input", "result", "startTime", "state"]

    model_config = {
        "populate_by_name": True,
        "validate_assignment": True,
        "protected_namespaces": (),
    }


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of PipelineStepImpl from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        _dict = self.model_dump(
            by_alias=True,
            exclude={
            },
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of links
        if self.links:
            _dict['_links'] = self.links.to_dict()
        # override the default output from pydantic by calling `to_dict()` of input
        if self.input:
            _dict['input'] = self.input.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of PipelineStepImpl from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "_class": obj.get("_class"),
            "_links": PipelineStepImpllinks.from_dict(obj.get("_links")) if obj.get("_links") is not None else None,
            "displayName": obj.get("displayName"),
            "durationInMillis": obj.get("durationInMillis"),
            "id": obj.get("id"),
            "input": InputStepImpl.from_dict(obj.get("input")) if obj.get("input") is not None else None,
            "result": obj.get("result"),
            "startTime": obj.get("startTime"),
            "state": obj.get("state")
        })
        return _obj


