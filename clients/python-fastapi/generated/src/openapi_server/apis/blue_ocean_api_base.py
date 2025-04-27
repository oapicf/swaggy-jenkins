# coding: utf-8

from typing import ClassVar, Dict, List, Tuple  # noqa: F401

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

class BaseBlueOceanApi:
    subclasses: ClassVar[Tuple] = ()

    def __init_subclass__(cls, **kwargs):
        super().__init_subclass__(**kwargs)
        BaseBlueOceanApi.subclasses = BaseBlueOceanApi.subclasses + (cls,)
    async def delete_pipeline_queue_item(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        queue: Annotated[StrictStr, Field(description="Name of the queue item")],
    ) -> None:
        """Delete queue item from an organization pipeline queue"""
        ...


    async def get_authenticated_user(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
    ) -> User:
        """Retrieve authenticated user details for an organization"""
        ...


    async def get_classes(
        self,
        class: Annotated[StrictStr, Field(description="Name of the class")],
    ) -> str:
        """Get a list of class names supported by a given class"""
        ...


    async def get_json_web_key(
        self,
        key: Annotated[StrictInt, Field(description="Key ID received as part of JWT header field kid")],
    ) -> str:
        """Retrieve JSON Web Key"""
        ...


    async def get_json_web_token(
        self,
        expiry_time_in_mins: Annotated[Optional[StrictInt], Field(description="Token expiry time in minutes, default: 30 minutes")],
        max_expiry_time_in_mins: Annotated[Optional[StrictInt], Field(description="Maximum token expiry time in minutes, default: 480 minutes")],
    ) -> str:
        """Retrieve JSON Web Token"""
        ...


    async def get_organisation(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
    ) -> Organisation:
        """Retrieve organization details"""
        ...


    async def get_organisations(
        self,
    ) -> List[Organisation]:
        """Retrieve all organizations details"""
        ...


    async def get_pipeline(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> Pipeline:
        """Retrieve pipeline details for an organization"""
        ...


    async def get_pipeline_activities(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> List[PipelineActivity]:
        """Retrieve all activities details for an organization pipeline"""
        ...


    async def get_pipeline_branch(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        branch: Annotated[StrictStr, Field(description="Name of the branch")],
    ) -> BranchImpl:
        """Retrieve branch details for an organization pipeline"""
        ...


    async def get_pipeline_branch_run(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        branch: Annotated[StrictStr, Field(description="Name of the branch")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
    ) -> PipelineRun:
        """Retrieve branch run details for an organization pipeline"""
        ...


    async def get_pipeline_branches(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> MultibranchPipeline:
        """Retrieve all branches details for an organization pipeline"""
        ...


    async def get_pipeline_folder(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        folder: Annotated[StrictStr, Field(description="Name of the folder")],
    ) -> PipelineFolderImpl:
        """Retrieve pipeline folder for an organization"""
        ...


    async def get_pipeline_folder_pipeline(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        folder: Annotated[StrictStr, Field(description="Name of the folder")],
    ) -> PipelineImpl:
        """Retrieve pipeline details for an organization folder"""
        ...


    async def get_pipeline_queue(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> List[QueueItemImpl]:
        """Retrieve queue details for an organization pipeline"""
        ...


    async def get_pipeline_run(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
    ) -> PipelineRun:
        """Retrieve run details for an organization pipeline"""
        ...


    async def get_pipeline_run_log(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        start: Annotated[Optional[StrictInt], Field(description="Start position of the log")],
        download: Annotated[Optional[StrictBool], Field(description="Set to true in order to download the file, otherwise it's passed as a response body")],
    ) -> str:
        """Get log for a pipeline run"""
        ...


    async def get_pipeline_run_node(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        node: Annotated[StrictStr, Field(description="Name of the node")],
    ) -> PipelineRunNode:
        """Retrieve run node details for an organization pipeline"""
        ...


    async def get_pipeline_run_node_step(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        node: Annotated[StrictStr, Field(description="Name of the node")],
        step: Annotated[StrictStr, Field(description="Name of the step")],
    ) -> PipelineStepImpl:
        """Retrieve run node details for an organization pipeline"""
        ...


    async def get_pipeline_run_node_step_log(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        node: Annotated[StrictStr, Field(description="Name of the node")],
        step: Annotated[StrictStr, Field(description="Name of the step")],
    ) -> str:
        """Get log for a pipeline run node step"""
        ...


    async def get_pipeline_run_node_steps(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        node: Annotated[StrictStr, Field(description="Name of the node")],
    ) -> List[PipelineStepImpl]:
        """Retrieve run node steps details for an organization pipeline"""
        ...


    async def get_pipeline_run_nodes(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
    ) -> List[PipelineRunNode]:
        """Retrieve run nodes details for an organization pipeline"""
        ...


    async def get_pipeline_runs(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> List[PipelineRun]:
        """Retrieve all runs details for an organization pipeline"""
        ...


    async def get_pipelines(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
    ) -> List[Pipeline]:
        """Retrieve all pipelines details for an organization"""
        ...


    async def get_scm(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        scm: Annotated[StrictStr, Field(description="Name of SCM")],
    ) -> GithubScm:
        """Retrieve SCM details for an organization"""
        ...


    async def get_scm_organisation_repositories(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        scm: Annotated[StrictStr, Field(description="Name of SCM")],
        scmOrganisation: Annotated[StrictStr, Field(description="Name of the SCM organization")],
        credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")],
        page_size: Annotated[Optional[StrictInt], Field(description="Number of items in a page")],
        page_number: Annotated[Optional[StrictInt], Field(description="Page number")],
    ) -> List[GithubOrganization]:
        """Retrieve SCM organization repositories details for an organization"""
        ...


    async def get_scm_organisation_repository(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        scm: Annotated[StrictStr, Field(description="Name of SCM")],
        scmOrganisation: Annotated[StrictStr, Field(description="Name of the SCM organization")],
        repository: Annotated[StrictStr, Field(description="Name of the SCM repository")],
        credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")],
    ) -> List[GithubOrganization]:
        """Retrieve SCM organization repository details for an organization"""
        ...


    async def get_scm_organisations(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        scm: Annotated[StrictStr, Field(description="Name of SCM")],
        credential_id: Annotated[Optional[StrictStr], Field(description="Credential ID")],
    ) -> List[GithubOrganization]:
        """Retrieve SCM organizations details for an organization"""
        ...


    async def get_user(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        user: Annotated[StrictStr, Field(description="Name of the user")],
    ) -> User:
        """Retrieve user details for an organization"""
        ...


    async def get_user_favorites(
        self,
        user: Annotated[StrictStr, Field(description="Name of the user")],
    ) -> List[FavoriteImpl]:
        """Retrieve user favorites details for an organization"""
        ...


    async def get_users(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
    ) -> User:
        """Retrieve users details for an organization"""
        ...


    async def post_pipeline_run(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
    ) -> QueueItemImpl:
        """Replay an organization pipeline run"""
        ...


    async def post_pipeline_runs(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
    ) -> QueueItemImpl:
        """Start a build for an organization pipeline"""
        ...


    async def put_pipeline_favorite(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        body: Annotated[StrictBool, Field(description="Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite")],
    ) -> FavoriteImpl:
        """Favorite/unfavorite a pipeline"""
        ...


    async def put_pipeline_run(
        self,
        organization: Annotated[StrictStr, Field(description="Name of the organization")],
        pipeline: Annotated[StrictStr, Field(description="Name of the pipeline")],
        run: Annotated[StrictStr, Field(description="Name of the run")],
        blocking: Annotated[Optional[StrictStr], Field(description="Set to true to make blocking stop, default: false")],
        time_out_in_secs: Annotated[Optional[StrictInt], Field(description="Timeout in seconds, default: 10 seconds")],
    ) -> PipelineRun:
        """Stop a build of an organization pipeline"""
        ...


    async def search(
        self,
        q: Annotated[StrictStr, Field(description="Query string")],
    ) -> str:
        """Search for any resource details"""
        ...


    async def search_classes(
        self,
        q: Annotated[StrictStr, Field(description="Query string containing an array of class names")],
    ) -> str:
        """Get classes details"""
        ...
