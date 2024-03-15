# coding: utf-8

from typing import Dict, List  # noqa: F401
import importlib
import pkgutil

from openapi_server.apis.remote_access_api_base import BaseRemoteAccessApi
import openapi_server.impl

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
from openapi_server.models.computer_set import ComputerSet
from openapi_server.models.free_style_build import FreeStyleBuild
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server.models.hudson import Hudson
from openapi_server.models.list_view import ListView
from openapi_server.models.queue import Queue
from openapi_server.security_api import get_token_jenkins_auth

router = APIRouter()

ns_pkg = openapi_server.impl
for _, name, _ in pkgutil.iter_modules(ns_pkg.__path__, ns_pkg.__name__ + "."):
    importlib.import_module(name)


@router.get(
    "/computer/api/json",
    responses={
        200: {"model": ComputerSet, "description": "Successfully retrieved computer details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_computer(
    depth: int = Query(None, description="Recursion depth in response model", alias="depth"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> ComputerSet:
    """Retrieve computer details"""
    return BaseRemoteAccessApi.subclasses[0]().get_computer(depth)


@router.get(
    "/api/json",
    responses={
        200: {"model": Hudson, "description": "Successfully retrieved Jenkins details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_jenkins(
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Hudson:
    """Retrieve Jenkins details"""
    return BaseRemoteAccessApi.subclasses[0]().get_jenkins()


@router.get(
    "/job/{name}/api/json",
    responses={
        200: {"model": FreeStyleProject, "description": "Successfully retrieved job details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_job(
    name: str = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> FreeStyleProject:
    """Retrieve job details"""
    return BaseRemoteAccessApi.subclasses[0]().get_job(name)


@router.get(
    "/job/{name}/config.xml",
    responses={
        200: {"model": str, "description": "Successfully retrieved job configuration in config.xml format"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_job_config(
    name: str = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Retrieve job configuration"""
    return BaseRemoteAccessApi.subclasses[0]().get_job_config(name)


@router.get(
    "/job/{name}/lastBuild/api/json",
    responses={
        200: {"model": FreeStyleBuild, "description": "Successfully retrieved job&#39;s last build details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_job_last_build(
    name: str = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> FreeStyleBuild:
    """Retrieve job&#39;s last build details"""
    return BaseRemoteAccessApi.subclasses[0]().get_job_last_build(name)


@router.get(
    "/job/{name}/{number}/logText/progressiveText",
    responses={
        200: {"description": "Successfully retrieved job&#39;s build progressive text output"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_job_progressive_text(
    name: str = Path(..., description="Name of the job"),
    number: str = Path(..., description="Build number"),
    start: str = Query(None, description="Starting point of progressive text output", alias="start"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Retrieve job&#39;s build progressive text output"""
    return BaseRemoteAccessApi.subclasses[0]().get_job_progressive_text(name, number, start)


@router.get(
    "/queue/api/json",
    responses={
        200: {"model": Queue, "description": "Successfully retrieved queue details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_queue(
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Queue:
    """Retrieve queue details"""
    return BaseRemoteAccessApi.subclasses[0]().get_queue()


@router.get(
    "/queue/item/{number}/api/json",
    responses={
        200: {"model": Queue, "description": "Successfully retrieved queued item details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_queue_item(
    number: str = Path(..., description="Queue number"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Queue:
    """Retrieve queued item details"""
    return BaseRemoteAccessApi.subclasses[0]().get_queue_item(number)


@router.get(
    "/view/{name}/api/json",
    responses={
        200: {"model": ListView, "description": "Successfully retrieved view details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "View cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_view(
    name: str = Path(..., description="Name of the view"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> ListView:
    """Retrieve view details"""
    return BaseRemoteAccessApi.subclasses[0]().get_view(name)


@router.get(
    "/view/{name}/config.xml",
    responses={
        200: {"model": str, "description": "Successfully retrieved view configuration in config.xml format"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "View cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def get_view_config(
    name: str = Path(..., description="Name of the view"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Retrieve view configuration"""
    return BaseRemoteAccessApi.subclasses[0]().get_view_config(name)


@router.head(
    "/api/json",
    responses={
        200: {"description": "Successfully retrieved Jenkins headers"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def head_jenkins(
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Retrieve Jenkins headers"""
    return BaseRemoteAccessApi.subclasses[0]().head_jenkins()


@router.post(
    "/createItem",
    responses={
        200: {"description": "Successfully created a new job"},
        400: {"model": str, "description": "An error has occurred - error message is embedded inside the HTML response"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_create_item(
    name: str = Query(None, description="Name of the new job", alias="name"),
    _from: str = Query(None, description="Existing job to copy from", alias="from"),
    mode: str = Query(None, description="Set to &#39;copy&#39; for copying an existing job", alias="mode"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    content_type: str = Header(None, description="Content type header application/xml"),
    body: str = Body(None, description="Job configuration in config.xml format"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Create a new job using job configuration, or copied from an existing job"""
    return BaseRemoteAccessApi.subclasses[0]().post_create_item(name, _from, mode, jenkins_crumb, content_type, body)


@router.post(
    "/createView",
    responses={
        200: {"description": "Successfully created the view"},
        400: {"model": str, "description": "An error has occurred - error message is embedded inside the HTML response"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_create_view(
    name: str = Query(None, description="Name of the new view", alias="name"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    content_type: str = Header(None, description="Content type header application/xml"),
    body: str = Body(None, description="View configuration in config.xml format"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Create a new view using view configuration"""
    return BaseRemoteAccessApi.subclasses[0]().post_create_view(name, jenkins_crumb, content_type, body)


@router.post(
    "/job/{name}/build",
    responses={
        200: {"description": "Successfully built the job (backward compatibility for older versions of Jenkins)"},
        201: {"description": "Successfully built the job"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_build(
    name: str = Path(..., description="Name of the job"),
    _json: str = Query(None, description="", alias="json"),
    token: str = Query(None, description="", alias="token"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Build a job"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_build(name, _json, token, jenkins_crumb)


@router.post(
    "/job/{name}/config.xml",
    responses={
        200: {"description": "Successfully retrieved job configuration in config.xml format"},
        400: {"model": str, "description": "An error has occurred - error message is embedded inside the HTML response"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_config(
    name: str = Path(..., description="Name of the job"),
    body: str = Body(None, description="Job configuration in config.xml format"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Update job configuration"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_config(name, body, jenkins_crumb)


@router.post(
    "/job/{name}/doDelete",
    responses={
        200: {"description": "Successfully deleted the job"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_delete(
    name: str = Path(..., description="Name of the job"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Delete a job"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_delete(name, jenkins_crumb)


@router.post(
    "/job/{name}/disable",
    responses={
        200: {"description": "Successfully disabled the job"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_disable(
    name: str = Path(..., description="Name of the job"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Disable a job"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_disable(name, jenkins_crumb)


@router.post(
    "/job/{name}/enable",
    responses={
        200: {"description": "Successfully enabled the job"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_enable(
    name: str = Path(..., description="Name of the job"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Enable a job"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_enable(name, jenkins_crumb)


@router.post(
    "/job/{name}/lastBuild/stop",
    responses={
        200: {"description": "Successfully stopped the job"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Job cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_job_last_build_stop(
    name: str = Path(..., description="Name of the job"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Stop a job"""
    return BaseRemoteAccessApi.subclasses[0]().post_job_last_build_stop(name, jenkins_crumb)


@router.post(
    "/view/{name}/config.xml",
    responses={
        200: {"description": "Successfully updated view configuration"},
        400: {"model": str, "description": "An error has occurred - error message is embedded inside the HTML response"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "View cannot be found on Jenkins instance"},
    },
    tags=["remoteAccess"],
    response_model_by_alias=True,
)
async def post_view_config(
    name: str = Path(..., description="Name of the view"),
    body: str = Body(None, description="View configuration in config.xml format"),
    jenkins_crumb: str = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Update view configuration"""
    return BaseRemoteAccessApi.subclasses[0]().post_view_config(name, body, jenkins_crumb)
