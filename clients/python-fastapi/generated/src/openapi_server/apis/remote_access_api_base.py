# coding: utf-8

from typing import ClassVar, Dict, List, Tuple  # noqa: F401

from openapi_server.models.computer_set import ComputerSet
from openapi_server.models.free_style_build import FreeStyleBuild
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server.models.hudson import Hudson
from openapi_server.models.list_view import ListView
from openapi_server.models.queue import Queue
from openapi_server.security_api import get_token_jenkins_auth

class BaseRemoteAccessApi:
    subclasses: ClassVar[Tuple] = ()

    def __init_subclass__(cls, **kwargs):
        super().__init_subclass__(**kwargs)
        BaseRemoteAccessApi.subclasses = BaseRemoteAccessApi.subclasses + (cls,)
    def get_computer(
        self,
        depth: int,
    ) -> ComputerSet:
        """Retrieve computer details"""
        ...


    def get_jenkins(
        self,
    ) -> Hudson:
        """Retrieve Jenkins details"""
        ...


    def get_job(
        self,
        name: str,
    ) -> FreeStyleProject:
        """Retrieve job details"""
        ...


    def get_job_config(
        self,
        name: str,
    ) -> str:
        """Retrieve job configuration"""
        ...


    def get_job_last_build(
        self,
        name: str,
    ) -> FreeStyleBuild:
        """Retrieve job&#39;s last build details"""
        ...


    def get_job_progressive_text(
        self,
        name: str,
        number: str,
        start: str,
    ) -> None:
        """Retrieve job&#39;s build progressive text output"""
        ...


    def get_queue(
        self,
    ) -> Queue:
        """Retrieve queue details"""
        ...


    def get_queue_item(
        self,
        number: str,
    ) -> Queue:
        """Retrieve queued item details"""
        ...


    def get_view(
        self,
        name: str,
    ) -> ListView:
        """Retrieve view details"""
        ...


    def get_view_config(
        self,
        name: str,
    ) -> str:
        """Retrieve view configuration"""
        ...


    def head_jenkins(
        self,
    ) -> None:
        """Retrieve Jenkins headers"""
        ...


    def post_create_item(
        self,
        name: str,
        _from: str,
        mode: str,
        jenkins_crumb: str,
        content_type: str,
        body: str,
    ) -> None:
        """Create a new job using job configuration, or copied from an existing job"""
        ...


    def post_create_view(
        self,
        name: str,
        jenkins_crumb: str,
        content_type: str,
        body: str,
    ) -> None:
        """Create a new view using view configuration"""
        ...


    def post_job_build(
        self,
        name: str,
        _json: str,
        token: str,
        jenkins_crumb: str,
    ) -> None:
        """Build a job"""
        ...


    def post_job_config(
        self,
        name: str,
        body: str,
        jenkins_crumb: str,
    ) -> None:
        """Update job configuration"""
        ...


    def post_job_delete(
        self,
        name: str,
        jenkins_crumb: str,
    ) -> None:
        """Delete a job"""
        ...


    def post_job_disable(
        self,
        name: str,
        jenkins_crumb: str,
    ) -> None:
        """Disable a job"""
        ...


    def post_job_enable(
        self,
        name: str,
        jenkins_crumb: str,
    ) -> None:
        """Enable a job"""
        ...


    def post_job_last_build_stop(
        self,
        name: str,
        jenkins_crumb: str,
    ) -> None:
        """Stop a job"""
        ...


    def post_view_config(
        self,
        name: str,
        body: str,
        jenkins_crumb: str,
    ) -> None:
        """Update view configuration"""
        ...
