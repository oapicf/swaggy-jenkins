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
    HTTPException,
    Path,
    Query,
    Response,
    Security,
    status,
)

from openapi_server.models.extra_models import TokenModel  # noqa: F401
from pydantic import Field, StrictInt, StrictStr
from typing import Any, Optional
from typing_extensions import Annotated
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
    depth: Annotated[StrictInt, Field(description="Recursion depth in response model")] = Query(None, description="Recursion depth in response model", alias="depth"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> ComputerSet:
    """Retrieve computer details"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_computer(depth)


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
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_jenkins()


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> FreeStyleProject:
    """Retrieve job details"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_job(name)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Retrieve job configuration"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_job_config(name)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> FreeStyleBuild:
    """Retrieve job&#39;s last build details"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_job_last_build(name)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    number: Annotated[StrictStr, Field(description="Build number")] = Path(..., description="Build number"),
    start: Annotated[StrictStr, Field(description="Starting point of progressive text output")] = Query(None, description="Starting point of progressive text output", alias="start"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Retrieve job&#39;s build progressive text output"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_job_progressive_text(name, number, start)


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
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_queue()


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
    number: Annotated[StrictStr, Field(description="Queue number")] = Path(..., description="Queue number"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Queue:
    """Retrieve queued item details"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_queue_item(number)


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
    name: Annotated[StrictStr, Field(description="Name of the view")] = Path(..., description="Name of the view"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> ListView:
    """Retrieve view details"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_view(name)


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
    name: Annotated[StrictStr, Field(description="Name of the view")] = Path(..., description="Name of the view"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Retrieve view configuration"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().get_view_config(name)


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
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().head_jenkins()


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
    name: Annotated[StrictStr, Field(description="Name of the new job")] = Query(None, description="Name of the new job", alias="name"),
    var_from: Annotated[Optional[StrictStr], Field(description="Existing job to copy from")] = Query(None, description="Existing job to copy from", alias="from"),
    mode: Annotated[Optional[StrictStr], Field(description="Set to 'copy' for copying an existing job")] = Query(None, description="Set to &#39;copy&#39; for copying an existing job", alias="mode"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    content_type: Annotated[Optional[StrictStr], Field(description="Content type header application/xml")] = Header(None, description="Content type header application/xml"),
    body: Annotated[Optional[StrictStr], Field(description="Job configuration in config.xml format")] = Body(None, description="Job configuration in config.xml format"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Create a new job using job configuration, or copied from an existing job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_create_item(name, var_from, mode, jenkins_crumb, content_type, body)


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
    name: Annotated[StrictStr, Field(description="Name of the new view")] = Query(None, description="Name of the new view", alias="name"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    content_type: Annotated[Optional[StrictStr], Field(description="Content type header application/xml")] = Header(None, description="Content type header application/xml"),
    body: Annotated[Optional[StrictStr], Field(description="View configuration in config.xml format")] = Body(None, description="View configuration in config.xml format"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Create a new view using view configuration"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_create_view(name, jenkins_crumb, content_type, body)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    var_json: StrictStr = Query(None, description="", alias="json"),
    token: Optional[StrictStr] = Query(None, description="", alias="token"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Build a job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_build(name, var_json, token, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    body: Annotated[StrictStr, Field(description="Job configuration in config.xml format")] = Body(None, description="Job configuration in config.xml format"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Update job configuration"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_config(name, body, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Delete a job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_delete(name, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Disable a job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_disable(name, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Enable a job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_enable(name, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the job")] = Path(..., description="Name of the job"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Stop a job"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_job_last_build_stop(name, jenkins_crumb)


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
    name: Annotated[StrictStr, Field(description="Name of the view")] = Path(..., description="Name of the view"),
    body: Annotated[StrictStr, Field(description="View configuration in config.xml format")] = Body(None, description="View configuration in config.xml format"),
    jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")] = Header(None, description="CSRF protection token"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Update view configuration"""
    if not BaseRemoteAccessApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseRemoteAccessApi.subclasses[0]().post_view_config(name, body, jenkins_crumb)
