# coding: utf-8

from typing import ClassVar, Dict, List, Tuple  # noqa: F401

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

class BaseRemoteAccessApi:
    subclasses: ClassVar[Tuple] = ()

    def __init_subclass__(cls, **kwargs):
        super().__init_subclass__(**kwargs)
        BaseRemoteAccessApi.subclasses = BaseRemoteAccessApi.subclasses + (cls,)
    async def get_jenkins(
        self,
    ) -> Hudson:
        """Retrieve Jenkins details"""
        ...


    async def head_jenkins(
        self,
    ) -> None:
        """Retrieve Jenkins headers"""
        ...


    async def get_computer(
        self,
        depth: Annotated[StrictInt, Field(description="Recursion depth in response model")],
    ) -> ComputerSet:
        """Retrieve computer details"""
        ...


    async def post_create_item(
        self,
        name: Annotated[StrictStr, Field(description="Name of the new job")],
        var_from: Annotated[Optional[StrictStr], Field(description="Existing job to copy from")],
        mode: Annotated[Optional[StrictStr], Field(description="Set to 'copy' for copying an existing job")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
        content_type: Annotated[Optional[StrictStr], Field(description="Content type header application/xml")],
        body: Annotated[Optional[StrictStr], Field(description="Job configuration in config.xml format")],
    ) -> None:
        """Create a new job using job configuration, or copied from an existing job"""
        ...


    async def post_create_view(
        self,
        name: Annotated[StrictStr, Field(description="Name of the new view")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
        content_type: Annotated[Optional[StrictStr], Field(description="Content type header application/xml")],
        body: Annotated[Optional[StrictStr], Field(description="View configuration in config.xml format")],
    ) -> None:
        """Create a new view using view configuration"""
        ...


    async def get_job(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
    ) -> FreeStyleProject:
        """Retrieve job details"""
        ...


    async def post_job_build(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        var_json: StrictStr,
        token: Optional[StrictStr],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Build a job"""
        ...


    async def get_job_config(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
    ) -> str:
        """Retrieve job configuration"""
        ...


    async def post_job_config(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        body: Annotated[StrictStr, Field(description="Job configuration in config.xml format")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Update job configuration"""
        ...


    async def post_job_delete(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Delete a job"""
        ...


    async def post_job_disable(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Disable a job"""
        ...


    async def post_job_enable(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Enable a job"""
        ...


    async def get_job_last_build(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
    ) -> FreeStyleBuild:
        """Retrieve job&#39;s last build details"""
        ...


    async def post_job_last_build_stop(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Stop a job"""
        ...


    async def get_job_progressive_text(
        self,
        name: Annotated[StrictStr, Field(description="Name of the job")],
        number: Annotated[StrictStr, Field(description="Build number")],
        start: Annotated[StrictStr, Field(description="Starting point of progressive text output")],
    ) -> None:
        """Retrieve job&#39;s build progressive text output"""
        ...


    async def get_queue(
        self,
    ) -> Queue:
        """Retrieve queue details"""
        ...


    async def get_queue_item(
        self,
        number: Annotated[StrictStr, Field(description="Queue number")],
    ) -> Queue:
        """Retrieve queued item details"""
        ...


    async def get_view(
        self,
        name: Annotated[StrictStr, Field(description="Name of the view")],
    ) -> ListView:
        """Retrieve view details"""
        ...


    async def get_view_config(
        self,
        name: Annotated[StrictStr, Field(description="Name of the view")],
    ) -> str:
        """Retrieve view configuration"""
        ...


    async def post_view_config(
        self,
        name: Annotated[StrictStr, Field(description="Name of the view")],
        body: Annotated[StrictStr, Field(description="View configuration in config.xml format")],
        jenkins_crumb: Annotated[Optional[StrictStr], Field(description="CSRF protection token")],
    ) -> None:
        """Update view configuration"""
        ...
