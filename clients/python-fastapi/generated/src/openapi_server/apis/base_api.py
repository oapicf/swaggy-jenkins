# coding: utf-8

from typing import Dict, List  # noqa: F401

from fastapi import (  # noqa: F401
    APIRouter,
    Body,
    Cookie,
    Depends,
    Form,
    Header,
    Path,
    Query,
    Response,
    Security,
    status,
)

from openapi_server.models.extra_models import TokenModel  # noqa: F401
from openapi_server.models.default_crumb_issuer import DefaultCrumbIssuer
from openapi_server.security_api import get_token_jenkins_auth

router = APIRouter()


@router.get(
    "/crumbIssuer/api/json",
    responses={
        200: {"model": DefaultCrumbIssuer, "description": "Successfully retrieved CSRF protection token"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["base"],
    response_model_by_alias=True,
)
async def get_crumb(
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> DefaultCrumbIssuer:
    """Retrieve CSRF protection token"""
    ...
