import connexion

from app.openapi_server.models.branch_impl import BranchImpl  # noqa: E501
from app.openapi_server.models.favorite_impl import FavoriteImpl  # noqa: E501
from app.openapi_server.models.github_organization import GithubOrganization  # noqa: E501
from app.openapi_server.models.github_scm import GithubScm  # noqa: E501
from app.openapi_server.models.multibranch_pipeline import MultibranchPipeline  # noqa: E501
from app.openapi_server.models.organisation import Organisation  # noqa: E501
from app.openapi_server.models.pipeline import Pipeline  # noqa: E501
from app.openapi_server.models.pipeline_activity import PipelineActivity  # noqa: E501
from app.openapi_server.models.pipeline_folder_impl import PipelineFolderImpl  # noqa: E501
from app.openapi_server.models.pipeline_impl import PipelineImpl  # noqa: E501
from app.openapi_server.models.pipeline_run import PipelineRun  # noqa: E501
from app.openapi_server.models.pipeline_run_node import PipelineRunNode  # noqa: E501
from app.openapi_server.models.pipeline_step_impl import PipelineStepImpl  # noqa: E501
from app.openapi_server.models.queue_item_impl import QueueItemImpl  # noqa: E501
from app.openapi_server.models.user import User  # noqa: E501
from openapi_server import util


def delete_pipeline_queue_item(organization, pipeline, queue):  # noqa: E501
    """delete_pipeline_queue_item

    Delete queue item from an organization pipeline queue # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param queue: Name of the queue item
    :type queue: str

    :rtype: None
    """
    return 'do some magic!'


def get_authenticated_user(organization):  # noqa: E501
    """get_authenticated_user

    Retrieve authenticated user details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str

    :rtype: User
    """
    return 'do some magic!'


def get_classes(_class):  # noqa: E501
    """get_classes

    Get a list of class names supported by a given class # noqa: E501

    :param _class: Name of the class
    :type _class: str

    :rtype: str
    """
    return 'do some magic!'


def get_json_web_key(key):  # noqa: E501
    """get_json_web_key

    Retrieve JSON Web Key # noqa: E501

    :param key: Key ID received as part of JWT header field kid
    :type key: int

    :rtype: str
    """
    return 'do some magic!'


def get_json_web_token(expiry_time_in_mins=None, max_expiry_time_in_mins=None):  # noqa: E501
    """get_json_web_token

    Retrieve JSON Web Token # noqa: E501

    :param expiry_time_in_mins: Token expiry time in minutes, default: 30 minutes
    :type expiry_time_in_mins: int
    :param max_expiry_time_in_mins: Maximum token expiry time in minutes, default: 480 minutes
    :type max_expiry_time_in_mins: int

    :rtype: str
    """
    return 'do some magic!'


def get_organisation(organization):  # noqa: E501
    """get_organisation

    Retrieve organization details # noqa: E501

    :param organization: Name of the organization
    :type organization: str

    :rtype: Organisation
    """
    return 'do some magic!'


def get_organisations():  # noqa: E501
    """get_organisations

    Retrieve all organizations details # noqa: E501


    :rtype: List[Organisation]
    """
    return 'do some magic!'


def get_pipeline(organization, pipeline):  # noqa: E501
    """get_pipeline

    Retrieve pipeline details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: Pipeline
    """
    return 'do some magic!'


def get_pipeline_activities(organization, pipeline):  # noqa: E501
    """get_pipeline_activities

    Retrieve all activities details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: List[PipelineActivity]
    """
    return 'do some magic!'


def get_pipeline_branch(organization, pipeline, branch):  # noqa: E501
    """get_pipeline_branch

    Retrieve branch details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str

    :rtype: BranchImpl
    """
    return 'do some magic!'


def get_pipeline_branch_run(organization, pipeline, branch, run):  # noqa: E501
    """get_pipeline_branch_run

    Retrieve branch run details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str
    :param run: Name of the run
    :type run: str

    :rtype: PipelineRun
    """
    return 'do some magic!'


def get_pipeline_branches(organization, pipeline):  # noqa: E501
    """get_pipeline_branches

    Retrieve all branches details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: MultibranchPipeline
    """
    return 'do some magic!'


def get_pipeline_folder(organization, folder):  # noqa: E501
    """get_pipeline_folder

    Retrieve pipeline folder for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: PipelineFolderImpl
    """
    return 'do some magic!'


def get_pipeline_folder_pipeline(organization, pipeline, folder):  # noqa: E501
    """get_pipeline_folder_pipeline

    Retrieve pipeline details for an organization folder # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: PipelineImpl
    """
    return 'do some magic!'


def get_pipeline_queue(organization, pipeline):  # noqa: E501
    """get_pipeline_queue

    Retrieve queue details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: List[QueueItemImpl]
    """
    return 'do some magic!'


def get_pipeline_run(organization, pipeline, run):  # noqa: E501
    """get_pipeline_run

    Retrieve run details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: PipelineRun
    """
    return 'do some magic!'


def get_pipeline_run_log(organization, pipeline, run, start=None, download=None):  # noqa: E501
    """get_pipeline_run_log

    Get log for a pipeline run # noqa: E501

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

    :rtype: str
    """
    return 'do some magic!'


def get_pipeline_run_node(organization, pipeline, run, node):  # noqa: E501
    """get_pipeline_run_node

    Retrieve run node details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str

    :rtype: PipelineRunNode
    """
    return 'do some magic!'


def get_pipeline_run_node_step(organization, pipeline, run, node, step):  # noqa: E501
    """get_pipeline_run_node_step

    Retrieve run node details for an organization pipeline # noqa: E501

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

    :rtype: PipelineStepImpl
    """
    return 'do some magic!'


def get_pipeline_run_node_step_log(organization, pipeline, run, node, step):  # noqa: E501
    """get_pipeline_run_node_step_log

    Get log for a pipeline run node step # noqa: E501

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

    :rtype: str
    """
    return 'do some magic!'


def get_pipeline_run_node_steps(organization, pipeline, run, node):  # noqa: E501
    """get_pipeline_run_node_steps

    Retrieve run node steps details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str

    :rtype: List[PipelineStepImpl]
    """
    return 'do some magic!'


def get_pipeline_run_nodes(organization, pipeline, run):  # noqa: E501
    """get_pipeline_run_nodes

    Retrieve run nodes details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: List[PipelineRunNode]
    """
    return 'do some magic!'


def get_pipeline_runs(organization, pipeline):  # noqa: E501
    """get_pipeline_runs

    Retrieve all runs details for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: List[PipelineRun]
    """
    return 'do some magic!'


def get_pipelines(organization):  # noqa: E501
    """get_pipelines

    Retrieve all pipelines details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str

    :rtype: List[Pipeline]
    """
    return 'do some magic!'


def get_scm(organization, scm):  # noqa: E501
    """get_scm

    Retrieve SCM details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str

    :rtype: GithubScm
    """
    return 'do some magic!'


def get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=None, page_size=None, page_number=None):  # noqa: E501
    """get_scm_organisation_repositories

    Retrieve SCM organization repositories details for an organization # noqa: E501

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

    :rtype: List[GithubOrganization]
    """
    return 'do some magic!'


def get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=None):  # noqa: E501
    """get_scm_organisation_repository

    Retrieve SCM organization repository details for an organization # noqa: E501

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

    :rtype: List[GithubOrganization]
    """
    return 'do some magic!'


def get_scm_organisations(organization, scm, credential_id=None):  # noqa: E501
    """get_scm_organisations

    Retrieve SCM organizations details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param credential_id: Credential ID
    :type credential_id: str

    :rtype: List[GithubOrganization]
    """
    return 'do some magic!'


def get_user(organization, user):  # noqa: E501
    """get_user

    Retrieve user details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param user: Name of the user
    :type user: str

    :rtype: User
    """
    return 'do some magic!'


def get_user_favorites(user):  # noqa: E501
    """get_user_favorites

    Retrieve user favorites details for an organization # noqa: E501

    :param user: Name of the user
    :type user: str

    :rtype: List[FavoriteImpl]
    """
    return 'do some magic!'


def get_users(organization):  # noqa: E501
    """get_users

    Retrieve users details for an organization # noqa: E501

    :param organization: Name of the organization
    :type organization: str

    :rtype: User
    """
    return 'do some magic!'


def post_pipeline_run(organization, pipeline, run):  # noqa: E501
    """post_pipeline_run

    Replay an organization pipeline run # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: QueueItemImpl
    """
    return 'do some magic!'


def post_pipeline_runs(organization, pipeline):  # noqa: E501
    """post_pipeline_runs

    Start a build for an organization pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: QueueItemImpl
    """
    return 'do some magic!'


def put_pipeline_favorite(organization, pipeline, body):  # noqa: E501
    """put_pipeline_favorite

    Favorite/unfavorite a pipeline # noqa: E501

    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param body: Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
    :type body: bool

    :rtype: FavoriteImpl
    """
    return 'do some magic!'


def put_pipeline_run(organization, pipeline, run, blocking=None, time_out_in_secs=None):  # noqa: E501
    """put_pipeline_run

    Stop a build of an organization pipeline # noqa: E501

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

    :rtype: PipelineRun
    """
    return 'do some magic!'


def search(q):  # noqa: E501
    """search

    Search for any resource details # noqa: E501

    :param q: Query string
    :type q: str

    :rtype: str
    """
    return 'do some magic!'


def search_classes(q):  # noqa: E501
    """search_classes

    Get classes details # noqa: E501

    :param q: Query string containing an array of class names
    :type q: str

    :rtype: str
    """
    return 'do some magic!'
