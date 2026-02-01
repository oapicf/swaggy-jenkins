# coding: utf-8

from typing import Dict, List  # noqa: F401
import importlib
import pkgutil

from openapi_server.apis.blue_ocean_api_base import BaseBlueOceanApi
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
from pydantic import Field, StrictBool, StrictInt, StrictStr
from typing import Any, List, Optional
from typing_extensions import Annotated
from openapi_server.models.branch_impl import BranchImpl
from openapi_server.models.favorite_impl import FavoriteImpl
from openapi_server.models.github_organization import GithubOrganization
from openapi_server.models.github_scm import GithubScm
from openapi_server.models.multibranch_pipeline import MultibranchPipeline
from openapi_server.models.organisation import Organisation
from openapi_server.models.pipeline import Pipeline
from openapi_server.models.pipeline_activity import PipelineActivity
from openapi_server.models.pipeline_folder_impl import PipelineFolderImpl
from openapi_server.models.pipeline_impl import PipelineImpl
from openapi_server.models.pipeline_run import PipelineRun
from openapi_server.models.pipeline_run_node import PipelineRunNode
from openapi_server.models.pipeline_step_impl import PipelineStepImpl
from openapi_server.models.queue_item_impl import QueueItemImpl
from openapi_server.models.user import User
from openapi_server.security_api import get_token_jenkins_auth

router = APIRouter()

ns_pkg = openapi_server.impl
for _, name, _ in pkgutil.iter_modules(ns_pkg.__path__, ns_pkg.__name__ + "."):
    importlib.import_module(name)


@router.get(
    "/jwt-auth/token",
    responses={
        200: {"model": str, "description": "Successfully retrieved JWT token"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_json_web_token(
    expiry_time_in_mins: Annotated[Optional[StrictInt], Field(description="Token expiry time in minutes, default: 30 minutes")] = Query(None, description="Token expiry time in minutes, default: 30 minutes", alias="expiryTimeInMins"),
    max_expiry_time_in_mins: Annotated[Optional[StrictInt], Field(description="Maximum token expiry time in minutes, default: 480 minutes")] = Query(None, description="Maximum token expiry time in minutes, default: 480 minutes", alias="maxExpiryTimeInMins"),
) -> str:
    """Retrieve JSON Web Token"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_json_web_token(expiry_time_in_mins, max_expiry_time_in_mins)


@router.get(
    "/jwt-auth/jwks/{key}",
    responses={
        200: {"model": str, "description": "Successfully retrieved JWT token"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_json_web_key(
    key: Annotated[StrictInt, Field(description="Key ID received as part of JWT header field kid")] = Path(..., description="Key ID received as part of JWT header field kid"),
) -> str:
    """Retrieve JSON Web Key"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_json_web_key(key)


@router.get(
    "/blue/rest/classes/",
    responses={
        200: {"model": str, "description": "Successfully retrieved search result"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def search_classes(
    q: Annotated[StrictStr, Field(description="Query string containing an array of class names")] = Query(None, description="Query string containing an array of class names", alias="q"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Get classes details"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().search_classes(q)


@router.get(
    "/blue/rest/classes/{class}",
    responses={
        200: {"model": str, "description": "Successfully retrieved class names"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_classes(
    class: Annotated[StrictStr, Field(description="Name of the class")] = Path(..., description="Name of the class"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Get a list of class names supported by a given class"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_classes(class)


@router.get(
    "/blue/rest/search/",
    responses={
        200: {"model": str, "description": "Successfully retrieved search result"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def search(
    q: Annotated[StrictStr, Field(description="Query string")] = Query(None, description="Query string", alias="q"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Search for any resource details"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().search(q)


@router.get(
    "/blue/rest/organizations/",
    responses={
        200: {"model": List[Organisation], "description": "Successfully retrieved pipelines details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_organisations(
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[Organisation]:
    """Retrieve all organizations details"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_organisations()


@router.get(
    "/blue/rest/organizations/{organization}",
    responses={
        200: {"model": Organisation, "description": "Successfully retrieved pipeline details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Pipeline cannot be found on Jenkins instance"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_organisation(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Organisation:
    """Retrieve organization details"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_organisation(organization)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/",
    responses={
        200: {"model": List[Pipeline], "description": "Successfully retrieved pipelines details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipelines(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[Pipeline]:
    """Retrieve all pipelines details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipelines(organization)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}",
    responses={
        200: {"model": Pipeline, "description": "Successfully retrieved pipeline details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
        404: {"description": "Pipeline cannot be found on Jenkins instance"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> Pipeline:
    """Retrieve pipeline details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline(organization, pipeline)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities",
    responses={
        200: {"model": List[PipelineActivity], "description": "Successfully retrieved all activities details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_activities(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[PipelineActivity]:
    """Retrieve all activities details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_activities(organization, pipeline)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches",
    responses={
        200: {"model": MultibranchPipeline, "description": "Successfully retrieved all branches details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_branches(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> MultibranchPipeline:
    """Retrieve all branches details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_branches(organization, pipeline)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/",
    responses={
        200: {"model": BranchImpl, "description": "Successfully retrieved branch details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_branch(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    branch: Annotated[StrictStr, Field(description="Name of the branch")] = Path(..., description="Name of the branch"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> BranchImpl:
    """Retrieve branch details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_branch(organization, pipeline, branch)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}",
    responses={
        200: {"model": PipelineRun, "description": "Successfully retrieved run details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_branch_run(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    branch: Annotated[StrictStr, Field(description="Name of the branch")] = Path(..., description="Name of the branch"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineRun:
    """Retrieve branch run details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_branch_run(organization, pipeline, branch, run)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{folder}/",
    responses={
        200: {"model": PipelineFolderImpl, "description": "Successfully retrieved folder details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_folder(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    folder: Annotated[StrictStr, Field(description="Name of the folder")] = Path(..., description="Name of the folder"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineFolderImpl:
    """Retrieve pipeline folder for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_folder(organization, folder)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}",
    responses={
        200: {"model": PipelineImpl, "description": "Successfully retrieved pipeline details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_folder_pipeline(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    folder: Annotated[StrictStr, Field(description="Name of the folder")] = Path(..., description="Name of the folder"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineImpl:
    """Retrieve pipeline details for an organization folder"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_folder_pipeline(organization, pipeline, folder)


@router.put(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite",
    responses={
        200: {"model": FavoriteImpl, "description": "Successfully favorited/unfavorited a pipeline"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def put_pipeline_favorite(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    body: Annotated[StrictBool, Field(description="Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite")] = Body(None, description="Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> FavoriteImpl:
    """Favorite/unfavorite a pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().put_pipeline_favorite(organization, pipeline, body)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue",
    responses={
        200: {"model": List[QueueItemImpl], "description": "Successfully retrieved queue details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_queue(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[QueueItemImpl]:
    """Retrieve queue details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_queue(organization, pipeline)


@router.delete(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}",
    responses={
        200: {"description": "Successfully deleted queue item"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def delete_pipeline_queue_item(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    queue: Annotated[StrictStr, Field(description="Name of the queue item")] = Path(..., description="Name of the queue item"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> None:
    """Delete queue item from an organization pipeline queue"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().delete_pipeline_queue_item(organization, pipeline, queue)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
    responses={
        200: {"model": List[PipelineRun], "description": "Successfully retrieved runs details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_runs(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[PipelineRun]:
    """Retrieve all runs details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_runs(organization, pipeline)


@router.post(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
    responses={
        200: {"model": QueueItemImpl, "description": "Successfully started a build"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def post_pipeline_runs(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> QueueItemImpl:
    """Start a build for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().post_pipeline_runs(organization, pipeline)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}",
    responses={
        200: {"model": PipelineRun, "description": "Successfully retrieved run details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineRun:
    """Retrieve run details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run(organization, pipeline, run)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes",
    responses={
        200: {"model": List[PipelineRunNode], "description": "Successfully retrieved run nodes details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_nodes(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[PipelineRunNode]:
    """Retrieve run nodes details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_nodes(organization, pipeline, run)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}",
    responses={
        200: {"model": PipelineRunNode, "description": "Successfully retrieved run node details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_node(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    node: Annotated[StrictStr, Field(description="Name of the node")] = Path(..., description="Name of the node"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineRunNode:
    """Retrieve run node details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_node(organization, pipeline, run, node)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps",
    responses={
        200: {"model": List[PipelineStepImpl], "description": "Successfully retrieved run node steps details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_node_steps(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    node: Annotated[StrictStr, Field(description="Name of the node")] = Path(..., description="Name of the node"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[PipelineStepImpl]:
    """Retrieve run node steps details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_node_steps(organization, pipeline, run, node)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}",
    responses={
        200: {"model": PipelineStepImpl, "description": "Successfully retrieved run node step details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_node_step(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    node: Annotated[StrictStr, Field(description="Name of the node")] = Path(..., description="Name of the node"),
    step: Annotated[StrictStr, Field(description="Name of the step")] = Path(..., description="Name of the step"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineStepImpl:
    """Retrieve run node details for an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_node_step(organization, pipeline, run, node, step)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log",
    responses={
        200: {"model": str, "description": "Successfully retrieved pipeline run node step log"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_node_step_log(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    node: Annotated[StrictStr, Field(description="Name of the node")] = Path(..., description="Name of the node"),
    step: Annotated[StrictStr, Field(description="Name of the step")] = Path(..., description="Name of the step"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Get log for a pipeline run node step"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_node_step_log(organization, pipeline, run, node, step)


@router.get(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log",
    responses={
        200: {"model": str, "description": "Successfully retrieved pipeline run log"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_pipeline_run_log(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    start: Annotated[Optional[StrictInt], Field(description="Start position of the log")] = Query(None, description="Start position of the log", alias="start"),
    download: Annotated[Optional[StrictBool], Field(description="Set to true in order to download the file, otherwise it's passed as a response body")] = Query(None, description="Set to true in order to download the file, otherwise it&#39;s passed as a response body", alias="download"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> str:
    """Get log for a pipeline run"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_pipeline_run_log(organization, pipeline, run, start, download)


@router.post(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay",
    responses={
        200: {"model": QueueItemImpl, "description": "Successfully replayed a pipeline run"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def post_pipeline_run(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> QueueItemImpl:
    """Replay an organization pipeline run"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().post_pipeline_run(organization, pipeline, run)


@router.put(
    "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop",
    responses={
        200: {"model": PipelineRun, "description": "Successfully stopped a build"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def put_pipeline_run(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")] = Path(..., description="Name of the pipeline"),
    run: Annotated[StrictStr, Field(description="Name of the run")] = Path(..., description="Name of the run"),
    blocking: Annotated[Optional[StrictStr], Field(description="Set to true to make blocking stop, default: false")] = Query(None, description="Set to true to make blocking stop, default: false", alias="blocking"),
    time_out_in_secs: Annotated[Optional[StrictInt], Field(description="Timeout in seconds, default: 10 seconds")] = Query(None, description="Timeout in seconds, default: 10 seconds", alias="timeOutInSecs"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> PipelineRun:
    """Stop a build of an organization pipeline"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().put_pipeline_run(organization, pipeline, run, blocking, time_out_in_secs)


@router.get(
    "/blue/rest/organizations/{organization}/scm/{scm}",
    responses={
        200: {"model": GithubScm, "description": "Successfully retrieved SCM details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_scm(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    scm: Annotated[StrictStr, Field(description="Name of SCM")] = Path(..., description="Name of SCM"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> GithubScm:
    """Retrieve SCM details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_scm(organization, scm)


@router.get(
    "/blue/rest/organizations/{organization}/scm/{scm}/organizations",
    responses={
        200: {"model": List[GithubOrganization], "description": "Successfully retrieved SCM organizations details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_scm_organisations(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    scm: Annotated[StrictStr, Field(description="Name of SCM")] = Path(..., description="Name of SCM"),
    credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")] = Query(None, description="Credential ID", alias="credentialId"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[GithubOrganization]:
    """Retrieve SCM organizations details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_scm_organisations(organization, scm, credential_id)


@router.get(
    "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories",
    responses={
        200: {"model": List[GithubOrganization], "description": "Successfully retrieved SCM organization repositories details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_scm_organisation_repositories(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    scm: Annotated[StrictStr, Field(description="Name of SCM")] = Path(..., description="Name of SCM"),
    scmOrganisation: Annotated[StrictStr, Field(description="Name of the SCM organization")] = Path(..., description="Name of the SCM organization"),
    credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")] = Query(None, description="Credential ID", alias="credentialId"),
    page_size: Annotated[Optional[StrictInt], Field(description="Number of items in a page")] = Query(None, description="Number of items in a page", alias="pageSize"),
    page_number: Annotated[Optional[StrictInt], Field(description="Page number")] = Query(None, description="Page number", alias="pageNumber"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[GithubOrganization]:
    """Retrieve SCM organization repositories details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_scm_organisation_repositories(organization, scm, scmOrganisation, credential_id, page_size, page_number)


@router.get(
    "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}",
    responses={
        200: {"model": List[GithubOrganization], "description": "Successfully retrieved SCM organizations details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_scm_organisation_repository(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    scm: Annotated[StrictStr, Field(description="Name of SCM")] = Path(..., description="Name of SCM"),
    scmOrganisation: Annotated[StrictStr, Field(description="Name of the SCM organization")] = Path(..., description="Name of the SCM organization"),
    repository: Annotated[StrictStr, Field(description="Name of the SCM repository")] = Path(..., description="Name of the SCM repository"),
    credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")] = Query(None, description="Credential ID", alias="credentialId"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[GithubOrganization]:
    """Retrieve SCM organization repository details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_scm_organisation_repository(organization, scm, scmOrganisation, repository, credential_id)


@router.get(
    "/blue/rest/organizations/{organization}/user/",
    responses={
        200: {"model": User, "description": "Successfully retrieved authenticated user details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_authenticated_user(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> User:
    """Retrieve authenticated user details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_authenticated_user(organization)


@router.get(
    "/blue/rest/organizations/{organization}/users/",
    responses={
        200: {"model": User, "description": "Successfully retrieved users details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_users(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> User:
    """Retrieve users details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_users(organization)


@router.get(
    "/blue/rest/organizations/{organization}/users/{user}",
    responses={
        200: {"model": User, "description": "Successfully retrieved users details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_user(
    organization: Annotated[StrictStr, Field(description="Name of the organization")] = Path(..., description="Name of the organization"),
    user: Annotated[StrictStr, Field(description="Name of the user")] = Path(..., description="Name of the user"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> User:
    """Retrieve user details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_user(organization, user)


@router.get(
    "/blue/rest/users/{user}/favorites",
    responses={
        200: {"model": List[FavoriteImpl], "description": "Successfully retrieved users favorites details"},
        401: {"description": "Authentication failed - incorrect username and/or password"},
        403: {"description": "Jenkins requires authentication - please set username and password"},
    },
    tags=["blueOcean"],
    response_model_by_alias=True,
)
async def get_user_favorites(
    user: Annotated[StrictStr, Field(description="Name of the user")] = Path(..., description="Name of the user"),
    token_jenkins_auth: TokenModel = Security(
        get_token_jenkins_auth
    ),
) -> List[FavoriteImpl]:
    """Retrieve user favorites details for an organization"""
    if not BaseBlueOceanApi.subclasses:
        raise HTTPException(status_code=500, detail="Not implemented")
    return await BaseBlueOceanApi.subclasses[0]().get_user_favorites(user)
