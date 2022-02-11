from typing import List, Dict
from aiohttp import web

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
from openapi_server import util


async def delete_pipeline_queue_item(request: web.Request, organization, pipeline, queue) -> web.Response:
    """delete_pipeline_queue_item

    Delete queue item from an organization pipeline queue

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param queue: Name of the queue item
    :type queue: str

    """
    return web.Response(status=200)


async def get_authenticated_user(request: web.Request, organization) -> web.Response:
    """get_authenticated_user

    Retrieve authenticated user details for an organization

    :param organization: Name of the organization
    :type organization: str

    """
    return web.Response(status=200)


async def get_classes(request: web.Request, _class) -> web.Response:
    """get_classes

    Get a list of class names supported by a given class

    :param _class: Name of the class
    :type _class: str

    """
    return web.Response(status=200)


async def get_json_web_key(request: web.Request, key) -> web.Response:
    """get_json_web_key

    Retrieve JSON Web Key

    :param key: Key ID received as part of JWT header field kid
    :type key: int

    """
    return web.Response(status=200)


async def get_json_web_token(request: web.Request, expiry_time_in_mins=None, max_expiry_time_in_mins=None) -> web.Response:
    """get_json_web_token

    Retrieve JSON Web Token

    :param expiry_time_in_mins: Token expiry time in minutes, default: 30 minutes
    :type expiry_time_in_mins: int
    :param max_expiry_time_in_mins: Maximum token expiry time in minutes, default: 480 minutes
    :type max_expiry_time_in_mins: int

    """
    return web.Response(status=200)


async def get_organisation(request: web.Request, organization) -> web.Response:
    """get_organisation

    Retrieve organization details

    :param organization: Name of the organization
    :type organization: str

    """
    return web.Response(status=200)


async def get_organisations(request: web.Request, ) -> web.Response:
    """get_organisations

    Retrieve all organizations details


    """
    return web.Response(status=200)


async def get_pipeline(request: web.Request, organization, pipeline) -> web.Response:
    """get_pipeline

    Retrieve pipeline details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def get_pipeline_activities(request: web.Request, organization, pipeline) -> web.Response:
    """get_pipeline_activities

    Retrieve all activities details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def get_pipeline_branch(request: web.Request, organization, pipeline, branch) -> web.Response:
    """get_pipeline_branch

    Retrieve branch details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str

    """
    return web.Response(status=200)


async def get_pipeline_branch_run(request: web.Request, organization, pipeline, branch, run) -> web.Response:
    """get_pipeline_branch_run

    Retrieve branch run details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str
    :param run: Name of the run
    :type run: str

    """
    return web.Response(status=200)


async def get_pipeline_branches(request: web.Request, organization, pipeline) -> web.Response:
    """get_pipeline_branches

    Retrieve all branches details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def get_pipeline_folder(request: web.Request, organization, folder) -> web.Response:
    """get_pipeline_folder

    Retrieve pipeline folder for an organization

    :param organization: Name of the organization
    :type organization: str
    :param folder: Name of the folder
    :type folder: str

    """
    return web.Response(status=200)


async def get_pipeline_folder_pipeline(request: web.Request, organization, pipeline, folder) -> web.Response:
    """get_pipeline_folder_pipeline

    Retrieve pipeline details for an organization folder

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param folder: Name of the folder
    :type folder: str

    """
    return web.Response(status=200)


async def get_pipeline_queue(request: web.Request, organization, pipeline) -> web.Response:
    """get_pipeline_queue

    Retrieve queue details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def get_pipeline_run(request: web.Request, organization, pipeline, run) -> web.Response:
    """get_pipeline_run

    Retrieve run details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    """
    return web.Response(status=200)


async def get_pipeline_run_log(request: web.Request, organization, pipeline, run, start=None, download=None) -> web.Response:
    """get_pipeline_run_log

    Get log for a pipeline run

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param start: Start position of the log
    :type start: int
    :param download: Set to true in order to download the file, otherwise it&#39;s passed as a response body
    :type download: bool

    """
    return web.Response(status=200)


async def get_pipeline_run_node(request: web.Request, organization, pipeline, run, node) -> web.Response:
    """get_pipeline_run_node

    Retrieve run node details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str

    """
    return web.Response(status=200)


async def get_pipeline_run_node_step(request: web.Request, organization, pipeline, run, node, step) -> web.Response:
    """get_pipeline_run_node_step

    Retrieve run node details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str
    :param step: Name of the step
    :type step: str

    """
    return web.Response(status=200)


async def get_pipeline_run_node_step_log(request: web.Request, organization, pipeline, run, node, step) -> web.Response:
    """get_pipeline_run_node_step_log

    Get log for a pipeline run node step

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str
    :param step: Name of the step
    :type step: str

    """
    return web.Response(status=200)


async def get_pipeline_run_node_steps(request: web.Request, organization, pipeline, run, node) -> web.Response:
    """get_pipeline_run_node_steps

    Retrieve run node steps details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str

    """
    return web.Response(status=200)


async def get_pipeline_run_nodes(request: web.Request, organization, pipeline, run) -> web.Response:
    """get_pipeline_run_nodes

    Retrieve run nodes details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    """
    return web.Response(status=200)


async def get_pipeline_runs(request: web.Request, organization, pipeline) -> web.Response:
    """get_pipeline_runs

    Retrieve all runs details for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def get_pipelines(request: web.Request, organization) -> web.Response:
    """get_pipelines

    Retrieve all pipelines details for an organization

    :param organization: Name of the organization
    :type organization: str

    """
    return web.Response(status=200)


async def get_scm(request: web.Request, organization, scm) -> web.Response:
    """get_scm

    Retrieve SCM details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str

    """
    return web.Response(status=200)


async def get_scm_organisation_repositories(request: web.Request, organization, scm, scm_organisation, credential_id=None, page_size=None, page_number=None) -> web.Response:
    """get_scm_organisation_repositories

    Retrieve SCM organization repositories details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param scm_organisation: Name of the SCM organization
    :type scm_organisation: str
    :param credential_id: Credential ID
    :type credential_id: str
    :param page_size: Number of items in a page
    :type page_size: int
    :param page_number: Page number
    :type page_number: int

    """
    return web.Response(status=200)


async def get_scm_organisation_repository(request: web.Request, organization, scm, scm_organisation, repository, credential_id=None) -> web.Response:
    """get_scm_organisation_repository

    Retrieve SCM organization repository details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param scm_organisation: Name of the SCM organization
    :type scm_organisation: str
    :param repository: Name of the SCM repository
    :type repository: str
    :param credential_id: Credential ID
    :type credential_id: str

    """
    return web.Response(status=200)


async def get_scm_organisations(request: web.Request, organization, scm, credential_id=None) -> web.Response:
    """get_scm_organisations

    Retrieve SCM organizations details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param credential_id: Credential ID
    :type credential_id: str

    """
    return web.Response(status=200)


async def get_user(request: web.Request, organization, user) -> web.Response:
    """get_user

    Retrieve user details for an organization

    :param organization: Name of the organization
    :type organization: str
    :param user: Name of the user
    :type user: str

    """
    return web.Response(status=200)


async def get_user_favorites(request: web.Request, user) -> web.Response:
    """get_user_favorites

    Retrieve user favorites details for an organization

    :param user: Name of the user
    :type user: str

    """
    return web.Response(status=200)


async def get_users(request: web.Request, organization) -> web.Response:
    """get_users

    Retrieve users details for an organization

    :param organization: Name of the organization
    :type organization: str

    """
    return web.Response(status=200)


async def post_pipeline_run(request: web.Request, organization, pipeline, run) -> web.Response:
    """post_pipeline_run

    Replay an organization pipeline run

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    """
    return web.Response(status=200)


async def post_pipeline_runs(request: web.Request, organization, pipeline) -> web.Response:
    """post_pipeline_runs

    Start a build for an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    """
    return web.Response(status=200)


async def put_pipeline_favorite(request: web.Request, organization, pipeline, body) -> web.Response:
    """put_pipeline_favorite

    Favorite/unfavorite a pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param body: Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
    :type body: bool

    """
    return web.Response(status=200)


async def put_pipeline_run(request: web.Request, organization, pipeline, run, blocking=None, time_out_in_secs=None) -> web.Response:
    """put_pipeline_run

    Stop a build of an organization pipeline

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param blocking: Set to true to make blocking stop, default: false
    :type blocking: str
    :param time_out_in_secs: Timeout in seconds, default: 10 seconds
    :type time_out_in_secs: int

    """
    return web.Response(status=200)


async def search(request: web.Request, q) -> web.Response:
    """search

    Search for any resource details

    :param q: Query string
    :type q: str

    """
    return web.Response(status=200)


async def search_classes(request: web.Request, q) -> web.Response:
    """search_classes

    Get classes details

    :param q: Query string containing an array of class names
    :type q: str

    """
    return web.Response(status=200)
