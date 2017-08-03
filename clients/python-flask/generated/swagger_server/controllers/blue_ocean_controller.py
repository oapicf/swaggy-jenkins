import connexion
from swagger_server.models.body import Body
from swagger_server.models.branch_impl import BranchImpl
from swagger_server.models.favorite_impl import FavoriteImpl
from swagger_server.models.github_scm import GithubScm
from swagger_server.models.multibranch_pipeline import MultibranchPipeline
from swagger_server.models.organisation import Organisation
from swagger_server.models.organisations import Organisations
from swagger_server.models.pipeline import Pipeline
from swagger_server.models.pipeline_activities import PipelineActivities
from swagger_server.models.pipeline_folder_impl import PipelineFolderImpl
from swagger_server.models.pipeline_impl import PipelineImpl
from swagger_server.models.pipeline_queue import PipelineQueue
from swagger_server.models.pipeline_run import PipelineRun
from swagger_server.models.pipeline_run_node import PipelineRunNode
from swagger_server.models.pipeline_run_node_steps import PipelineRunNodeSteps
from swagger_server.models.pipeline_run_nodes import PipelineRunNodes
from swagger_server.models.pipeline_runs import PipelineRuns
from swagger_server.models.pipeline_step_impl import PipelineStepImpl
from swagger_server.models.pipelines import Pipelines
from swagger_server.models.queue_item_impl import QueueItemImpl
from swagger_server.models.scm_organisations import ScmOrganisations
from swagger_server.models.user import User
from swagger_server.models.user_favorites import UserFavorites
from datetime import date, datetime
from typing import List, Dict
from six import iteritems
from ..util import deserialize_date, deserialize_datetime


def delete_pipeline_queue_item(organization, pipeline, queue):
    """
    delete_pipeline_queue_item
    Delete queue item from an organization pipeline queue
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param queue: Name of the queue item
    :type queue: str

    :rtype: None
    """
    return 'do some magic!'


def get_authenticated_user(organization):
    """
    get_authenticated_user
    Retrieve authenticated user details for an organization
    :param organization: Name of the organization
    :type organization: str

    :rtype: User
    """
    return 'do some magic!'


def get_classes(_class):
    """
    get_classes
    Get a list of class names supported by a given class
    :param _class: Name of the class
    :type _class: str

    :rtype: str
    """
    return 'do some magic!'


def get_organisation(organization):
    """
    get_organisation
    Retrieve organization details
    :param organization: Name of the organization
    :type organization: str

    :rtype: Organisation
    """
    return 'do some magic!'


def get_organisations():
    """
    get_organisations
    Retrieve all organizations details

    :rtype: Organisations
    """
    return 'do some magic!'


def get_pipeline(organization, pipeline):
    """
    get_pipeline
    Retrieve pipeline details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: Pipeline
    """
    return 'do some magic!'


def get_pipeline_activities(organization, pipeline):
    """
    get_pipeline_activities
    Retrieve all activities details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: PipelineActivities
    """
    return 'do some magic!'


def get_pipeline_branch(organization, pipeline, branch):
    """
    get_pipeline_branch
    Retrieve branch details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str

    :rtype: BranchImpl
    """
    return 'do some magic!'


def get_pipeline_branch_run(organization, pipeline, branch, run):
    """
    get_pipeline_branch_run
    Retrieve branch run details for an organization pipeline
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


def get_pipeline_branches(organization, pipeline):
    """
    get_pipeline_branches
    Retrieve all branches details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: MultibranchPipeline
    """
    return 'do some magic!'


def get_pipeline_folder(organization, folder):
    """
    get_pipeline_folder
    Retrieve pipeline folder for an organization
    :param organization: Name of the organization
    :type organization: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: PipelineFolderImpl
    """
    return 'do some magic!'


def get_pipeline_folder_pipeline(organization, pipeline, folder):
    """
    get_pipeline_folder_pipeline
    Retrieve pipeline details for an organization folder
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: PipelineImpl
    """
    return 'do some magic!'


def get_pipeline_queue(organization, pipeline):
    """
    get_pipeline_queue
    Retrieve queue details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: PipelineQueue
    """
    return 'do some magic!'


def get_pipeline_run(organization, pipeline, run):
    """
    get_pipeline_run
    Retrieve run details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: PipelineRun
    """
    return 'do some magic!'


def get_pipeline_run_log(organization, pipeline, run, start=None, download=None):
    """
    get_pipeline_run_log
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

    :rtype: str
    """
    return 'do some magic!'


def get_pipeline_run_node(organization, pipeline, run, node):
    """
    get_pipeline_run_node
    Retrieve run node details for an organization pipeline
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


def get_pipeline_run_node_step(organization, pipeline, run, node, step):
    """
    get_pipeline_run_node_step
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

    :rtype: PipelineStepImpl
    """
    return 'do some magic!'


def get_pipeline_run_node_step_log(organization, pipeline, run, node, step):
    """
    get_pipeline_run_node_step_log
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

    :rtype: str
    """
    return 'do some magic!'


def get_pipeline_run_node_steps(organization, pipeline, run, node):
    """
    get_pipeline_run_node_steps
    Retrieve run node steps details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param node: Name of the node
    :type node: str

    :rtype: PipelineRunNodeSteps
    """
    return 'do some magic!'


def get_pipeline_run_nodes(organization, pipeline, run):
    """
    get_pipeline_run_nodes
    Retrieve run nodes details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: PipelineRunNodes
    """
    return 'do some magic!'


def get_pipeline_runs(organization, pipeline):
    """
    get_pipeline_runs
    Retrieve all runs details for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: PipelineRuns
    """
    return 'do some magic!'


def get_pipelines(organization):
    """
    get_pipelines
    Retrieve all pipelines details for an organization
    :param organization: Name of the organization
    :type organization: str

    :rtype: Pipelines
    """
    return 'do some magic!'


def get_scm(organization, scm):
    """
    get_scm
    Retrieve SCM details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str

    :rtype: GithubScm
    """
    return 'do some magic!'


def get_scm_organisation_repositories(organization, scm, scmOrganisation, credentialId=None, pageSize=None, pageNumber=None):
    """
    get_scm_organisation_repositories
    Retrieve SCM organization repositories details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param scmOrganisation: Name of the SCM organization
    :type scmOrganisation: str
    :param credentialId: Credential ID
    :type credentialId: str
    :param pageSize: Number of items in a page
    :type pageSize: int
    :param pageNumber: Page number
    :type pageNumber: int

    :rtype: ScmOrganisations
    """
    return 'do some magic!'


def get_scm_organisation_repository(organization, scm, scmOrganisation, repository, credentialId=None):
    """
    get_scm_organisation_repository
    Retrieve SCM organization repository details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param scmOrganisation: Name of the SCM organization
    :type scmOrganisation: str
    :param repository: Name of the SCM repository
    :type repository: str
    :param credentialId: Credential ID
    :type credentialId: str

    :rtype: ScmOrganisations
    """
    return 'do some magic!'


def get_scm_organisations(organization, scm, credentialId=None):
    """
    get_scm_organisations
    Retrieve SCM organizations details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param scm: Name of SCM
    :type scm: str
    :param credentialId: Credential ID
    :type credentialId: str

    :rtype: ScmOrganisations
    """
    return 'do some magic!'


def get_user(organization, user):
    """
    get_user
    Retrieve user details for an organization
    :param organization: Name of the organization
    :type organization: str
    :param user: Name of the user
    :type user: str

    :rtype: User
    """
    return 'do some magic!'


def get_user_favorites(user):
    """
    get_user_favorites
    Retrieve user favorites details for an organization
    :param user: Name of the user
    :type user: str

    :rtype: UserFavorites
    """
    return 'do some magic!'


def get_users(organization):
    """
    get_users
    Retrieve users details for an organization
    :param organization: Name of the organization
    :type organization: str

    :rtype: User
    """
    return 'do some magic!'


def post_pipeline_run(organization, pipeline, run):
    """
    post_pipeline_run
    Replay an organization pipeline run
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str

    :rtype: QueueItemImpl
    """
    return 'do some magic!'


def post_pipeline_runs(organization, pipeline):
    """
    post_pipeline_runs
    Start a build for an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: QueueItemImpl
    """
    return 'do some magic!'


def put_pipeline_favorite(organization, pipeline, body):
    """
    put_pipeline_favorite
    Favorite/unfavorite a pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param body: Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
    :type body: dict | bytes

    :rtype: FavoriteImpl
    """
    if connexion.request.is_json:
        body = Body.from_dict(connexion.request.get_json())
    return 'do some magic!'


def put_pipeline_run(organization, pipeline, run, blocking=None, timeOutInSecs=None):
    """
    put_pipeline_run
    Stop a build of an organization pipeline
    :param organization: Name of the organization
    :type organization: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param run: Name of the run
    :type run: str
    :param blocking: Set to true to make blocking stop, default: false
    :type blocking: str
    :param timeOutInSecs: Timeout in seconds, default: 10 seconds
    :type timeOutInSecs: int

    :rtype: PipelineRun
    """
    return 'do some magic!'


def search(q):
    """
    search
    Search for any resource details
    :param q: Query string
    :type q: str

    :rtype: str
    """
    return 'do some magic!'


def search_classes(q):
    """
    search_classes
    Get classes details
    :param q: Query string containing an array of class names
    :type q: str

    :rtype: str
    """
    return 'do some magic!'
