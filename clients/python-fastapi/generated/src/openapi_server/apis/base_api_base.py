# coding: utf-8

from typing import ClassVar, Dict, List, Tuple  # noqa: F401

from typing import Any
from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer
from openapi_server.security_api import get_token_jenkins_auth

class BaseBaseApi:
    subclasses: ClassVar[Tuple] = ()

    def __init_subclass__(cls, **kwargs):
        super().__init_subclass__(**kwargs)
        BaseBaseApi.subclasses = BaseBaseApi.subclasses + (cls,)
    async def get_crumb(
        self,
    ) -> DefaultCrumbIssuer:
        """Retrieve CSRF protection token"""
        ...
