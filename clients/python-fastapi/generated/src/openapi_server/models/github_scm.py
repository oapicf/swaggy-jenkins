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




from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from openapi_server.models.github_scmlinks import GithubScmlinks
try:
    from typing import Self
except ImportError:
    from typing_extensions import Self

class GithubScm(BaseModel):
    """
    GithubScm
    """ # noqa: E501
    _class: Optional[StrictStr] = None
    links: Optional[GithubScmlinks] = Field(default=None, alias="_links")
    credential_id: Optional[StrictStr] = Field(default=None, alias="credentialId")
    id: Optional[StrictStr] = None
    uri: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["_class", "_links", "credentialId", "id", "uri"]

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
        """Create an instance of GithubScm from a JSON string"""
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
        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of GithubScm from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "_class": obj.get("_class"),
            "_links": GithubScmlinks.from_dict(obj.get("_links")) if obj.get("_links") is not None else None,
            "credentialId": obj.get("credentialId"),
            "id": obj.get("id"),
            "uri": obj.get("uri")
        })
        return _obj


