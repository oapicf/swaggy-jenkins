# coding: utf-8

from typing import ClassVar, Dict, List, Tuple  # noqa: F401

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
    def delete_pipeline_queue_item(
        self,
        organization: str,
        pipeline: str,
        queue: str,
    ) -> None:
        """Delete queue item from an organization pipeline queue"""
        ...


    def get_authenticated_user(
        self,
        organization: str,
    ) -> User:
        """Retrieve authenticated user details for an organization"""
        ...


    def get_classes(
        self,
        class: str,
    ) -> str:
        """Get a list of class names supported by a given class"""
        ...


    def get_json_web_key(
        self,
        key: int,
    ) -> str:
        """Retrieve JSON Web Key"""
        ...


    def get_json_web_token(
        self,
        expiry_time_in_mins: int,
        max_expiry_time_in_mins: int,
    ) -> str:
        """Retrieve JSON Web Token"""
        ...


    def get_organisation(
        self,
        organization: str,
    ) -> Organisation:
        """Retrieve organization details"""
        ...


    def get_organisations(
        self,
    ) -> List[Organisation]:
        """Retrieve all organizations details"""
        ...


    def get_pipeline(
        self,
        organization: str,
        pipeline: str,
    ) -> Pipeline:
        """Retrieve pipeline details for an organization"""
        ...


    def get_pipeline_activities(
        self,
        organization: str,
        pipeline: str,
    ) -> List[PipelineActivity]:
        """Retrieve all activities details for an organization pipeline"""
        ...


    def get_pipeline_branch(
        self,
        organization: str,
        pipeline: str,
        branch: str,
    ) -> BranchImpl:
        """Retrieve branch details for an organization pipeline"""
        ...


    def get_pipeline_branch_run(
        self,
        organization: str,
        pipeline: str,
        branch: str,
        run: str,
    ) -> PipelineRun:
        """Retrieve branch run details for an organization pipeline"""
        ...


    def get_pipeline_branches(
        self,
        organization: str,
        pipeline: str,
    ) -> MultibranchPipeline:
        """Retrieve all branches details for an organization pipeline"""
        ...


    def get_pipeline_folder(
        self,
        organization: str,
        folder: str,
    ) -> PipelineFolderImpl:
        """Retrieve pipeline folder for an organization"""
        ...


    def get_pipeline_folder_pipeline(
        self,
        organization: str,
        pipeline: str,
        folder: str,
    ) -> PipelineImpl:
        """Retrieve pipeline details for an organization folder"""
        ...


    def get_pipeline_queue(
        self,
        organization: str,
        pipeline: str,
    ) -> List[QueueItemImpl]:
        """Retrieve queue details for an organization pipeline"""
        ...


    def get_pipeline_run(
        self,
        organization: str,
        pipeline: str,
        run: str,
    ) -> PipelineRun:
        """Retrieve run details for an organization pipeline"""
        ...


    def get_pipeline_run_log(
        self,
        organization: str,
        pipeline: str,
        run: str,
        start: int,
        download: bool,
    ) -> str:
        """Get log for a pipeline run"""
        ...


    def get_pipeline_run_node(
        self,
        organization: str,
        pipeline: str,
        run: str,
        node: str,
    ) -> PipelineRunNode:
        """Retrieve run node details for an organization pipeline"""
        ...


    def get_pipeline_run_node_step(
        self,
        organization: str,
        pipeline: str,
        run: str,
        node: str,
        step: str,
    ) -> PipelineStepImpl:
        """Retrieve run node details for an organization pipeline"""
        ...


    def get_pipeline_run_node_step_log(
        self,
        organization: str,
        pipeline: str,
        run: str,
        node: str,
        step: str,
    ) -> str:
        """Get log for a pipeline run node step"""
        ...


    def get_pipeline_run_node_steps(
        self,
        organization: str,
        pipeline: str,
        run: str,
        node: str,
    ) -> List[PipelineStepImpl]:
        """Retrieve run node steps details for an organization pipeline"""
        ...


    def get_pipeline_run_nodes(
        self,
        organization: str,
        pipeline: str,
        run: str,
    ) -> List[PipelineRunNode]:
        """Retrieve run nodes details for an organization pipeline"""
        ...


    def get_pipeline_runs(
        self,
        organization: str,
        pipeline: str,
    ) -> List[PipelineRun]:
        """Retrieve all runs details for an organization pipeline"""
        ...


    def get_pipelines(
        self,
        organization: str,
    ) -> List[Pipeline]:
        """Retrieve all pipelines details for an organization"""
        ...


    def get_scm(
        self,
        organization: str,
        scm: str,
    ) -> GithubScm:
        """Retrieve SCM details for an organization"""
        ...


    def get_scm_organisation_repositories(
        self,
        organization: str,
        scm: str,
        scmOrganisation: str,
        credential_id: str,
        page_size: int,
        page_number: int,
    ) -> List[GithubOrganization]:
        """Retrieve SCM organization repositories details for an organization"""
        ...


    def get_scm_organisation_repository(
        self,
        organization: str,
        scm: str,
        scmOrganisation: str,
        repository: str,
        credential_id: str,
    ) -> List[GithubOrganization]:
        """Retrieve SCM organization repository details for an organization"""
        ...


    def get_scm_organisations(
        self,
        organization: str,
        scm: str,
        credential_id: str,
    ) -> List[GithubOrganization]:
        """Retrieve SCM organizations details for an organization"""
        ...


    def get_user(
        self,
        organization: str,
        user: str,
    ) -> User:
        """Retrieve user details for an organization"""
        ...


    def get_user_favorites(
        self,
        user: str,
    ) -> List[FavoriteImpl]:
        """Retrieve user favorites details for an organization"""
        ...


    def get_users(
        self,
        organization: str,
    ) -> User:
        """Retrieve users details for an organization"""
        ...


    def post_pipeline_run(
        self,
        organization: str,
        pipeline: str,
        run: str,
    ) -> QueueItemImpl:
        """Replay an organization pipeline run"""
        ...


    def post_pipeline_runs(
        self,
        organization: str,
        pipeline: str,
    ) -> QueueItemImpl:
        """Start a build for an organization pipeline"""
        ...


    def put_pipeline_favorite(
        self,
        organization: str,
        pipeline: str,
        body: bool,
    ) -> FavoriteImpl:
        """Favorite/unfavorite a pipeline"""
        ...


    def put_pipeline_run(
        self,
        organization: str,
        pipeline: str,
        run: str,
        blocking: str,
        time_out_in_secs: int,
    ) -> PipelineRun:
        """Stop a build of an organization pipeline"""
        ...


    def search(
        self,
        q: str,
    ) -> str:
        """Search for any resource details"""
        ...


    def search_classes(
        self,
        q: str,
    ) -> str:
        """Get classes details"""
        ...
