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
from openapi_server.models.all_view import AllView
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server.models.hudsonassigned_labels import HudsonassignedLabels
from openapi_server.models.unlabeled_load_statistics import UnlabeledLoadStatistics
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self

class Hudson(BaseModel):
    """
    Hudson
    """ # noqa: E501
    _class: Optional[StrictStr] = None
    assigned_labels: Optional[List[HudsonassignedLabels]] = Field(default=None, alias="assignedLabels")
    mode: Optional[StrictStr] = None
    node_description: Optional[StrictStr] = Field(default=None, alias="nodeDescription")
    node_name: Optional[StrictStr] = Field(default=None, alias="nodeName")
    num_executors: Optional[StrictInt] = Field(default=None, alias="numExecutors")
    description: Optional[StrictStr] = None
    jobs: Optional[List[FreeStyleProject]] = None
    primary_view: Optional[AllView] = Field(default=None, alias="primaryView")
    quieting_down: Optional[StrictBool] = Field(default=None, alias="quietingDown")
    slave_agent_port: Optional[StrictInt] = Field(default=None, alias="slaveAgentPort")
    unlabeled_load: Optional[UnlabeledLoadStatistics] = Field(default=None, alias="unlabeledLoad")
    use_crumbs: Optional[StrictBool] = Field(default=None, alias="useCrumbs")
    use_security: Optional[StrictBool] = Field(default=None, alias="useSecurity")
    views: Optional[List[AllView]] = None
    __properties: ClassVar[List[str]] = ["_class", "assignedLabels", "mode", "nodeDescription", "nodeName", "numExecutors", "description", "jobs", "primaryView", "quietingDown", "slaveAgentPort", "unlabeledLoad", "useCrumbs", "useSecurity", "views"]

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
        """Create an instance of Hudson from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in assigned_labels (list)
        _items = []
        if self.assigned_labels:
            for _item in self.assigned_labels:
                if _item:
                    _items.append(_item.to_dict())
            _dict['assignedLabels'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in jobs (list)
        _items = []
        if self.jobs:
            for _item in self.jobs:
                if _item:
                    _items.append(_item.to_dict())
            _dict['jobs'] = _items
        # override the default output from pydantic by calling `to_dict()` of primary_view
        if self.primary_view:
            _dict['primaryView'] = self.primary_view.to_dict()
        # override the default output from pydantic by calling `to_dict()` of unlabeled_load
        if self.unlabeled_load:
            _dict['unlabeledLoad'] = self.unlabeled_load.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in views (list)
        _items = []
        if self.views:
            for _item in self.views:
                if _item:
                    _items.append(_item.to_dict())
            _dict['views'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of Hudson from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "_class": obj.get("_class"),
            "assignedLabels": [HudsonassignedLabels.from_dict(_item) for _item in obj.get("assignedLabels")] if obj.get("assignedLabels") is not None else None,
            "mode": obj.get("mode"),
            "nodeDescription": obj.get("nodeDescription"),
            "nodeName": obj.get("nodeName"),
            "numExecutors": obj.get("numExecutors"),
            "description": obj.get("description"),
            "jobs": [FreeStyleProject.from_dict(_item) for _item in obj.get("jobs")] if obj.get("jobs") is not None else None,
            "primaryView": AllView.from_dict(obj.get("primaryView")) if obj.get("primaryView") is not None else None,
            "quietingDown": obj.get("quietingDown"),
            "slaveAgentPort": obj.get("slaveAgentPort"),
            "unlabeledLoad": UnlabeledLoadStatistics.from_dict(obj.get("unlabeledLoad")) if obj.get("unlabeledLoad") is not None else None,
            "useCrumbs": obj.get("useCrumbs"),
            "useSecurity": obj.get("useSecurity"),
            "views": [AllView.from_dict(_item) for _item in obj.get("views")] if obj.get("views") is not None else None
        })
        return _obj


