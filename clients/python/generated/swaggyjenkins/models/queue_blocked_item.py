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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from swaggyjenkins.models.cause_action import CauseAction
from swaggyjenkins.models.free_style_project import FreeStyleProject
from typing import Optional, Set
from typing_extensions import Self

class QueueBlockedItem(BaseModel):
    """
    QueueBlockedItem
    """ # noqa: E501
    var_class: Optional[StrictStr] = Field(default=None, alias="_class")
    actions: Optional[List[CauseAction]] = None
    blocked: Optional[StrictBool] = None
    buildable: Optional[StrictBool] = None
    id: Optional[StrictInt] = None
    in_queue_since: Optional[StrictInt] = Field(default=None, alias="inQueueSince")
    params: Optional[StrictStr] = None
    stuck: Optional[StrictBool] = None
    task: Optional[FreeStyleProject] = None
    url: Optional[StrictStr] = None
    why: Optional[StrictStr] = None
    buildable_start_milliseconds: Optional[StrictInt] = Field(default=None, alias="buildableStartMilliseconds")
    __properties: ClassVar[List[str]] = ["_class", "actions", "blocked", "buildable", "id", "inQueueSince", "params", "stuck", "task", "url", "why", "buildableStartMilliseconds"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of QueueBlockedItem from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of each item in actions (list)
        _items = []
        if self.actions:
            for _item in self.actions:
                if _item:
                    _items.append(_item.to_dict())
            _dict['actions'] = _items
        # override the default output from pydantic by calling `to_dict()` of task
        if self.task:
            _dict['task'] = self.task.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of QueueBlockedItem from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "_class": obj.get("_class"),
            "actions": [CauseAction.from_dict(_item) for _item in obj["actions"]] if obj.get("actions") is not None else None,
            "blocked": obj.get("blocked"),
            "buildable": obj.get("buildable"),
            "id": obj.get("id"),
            "inQueueSince": obj.get("inQueueSince"),
            "params": obj.get("params"),
            "stuck": obj.get("stuck"),
            "task": FreeStyleProject.from_dict(obj["task"]) if obj.get("task") is not None else None,
            "url": obj.get("url"),
            "why": obj.get("why"),
            "buildableStartMilliseconds": obj.get("buildableStartMilliseconds")
        })
        return _obj


