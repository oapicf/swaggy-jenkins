from typing import List, Dict
from aiohttp import web

from openapi_server.models.computer_set import ComputerSet
from openapi_server.models.free_style_build import FreeStyleBuild
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server.models.hudson import Hudson
from openapi_server.models.list_view import ListView
from openapi_server.models.queue import Queue
from openapi_server import util


async def get_computer(request: web.Request, depth) -> web.Response:
    """get_computer

    Retrieve computer details

    :param depth: Recursion depth in response model
    :type depth: int

    """
    return web.Response(status=200)


async def get_jenkins(request: web.Request, ) -> web.Response:
    """get_jenkins

    Retrieve Jenkins details


    """
    return web.Response(status=200)


async def get_job(request: web.Request, name) -> web.Response:
    """get_job

    Retrieve job details

    :param name: Name of the job
    :type name: str

    """
    return web.Response(status=200)


async def get_job_config(request: web.Request, name) -> web.Response:
    """get_job_config

    Retrieve job configuration

    :param name: Name of the job
    :type name: str

    """
    return web.Response(status=200)


async def get_job_last_build(request: web.Request, name) -> web.Response:
    """get_job_last_build

    Retrieve job&#39;s last build details

    :param name: Name of the job
    :type name: str

    """
    return web.Response(status=200)


async def get_job_progressive_text(request: web.Request, name, number, start) -> web.Response:
    """get_job_progressive_text

    Retrieve job&#39;s build progressive text output

    :param name: Name of the job
    :type name: str
    :param number: Build number
    :type number: str
    :param start: Starting point of progressive text output
    :type start: str

    """
    return web.Response(status=200)


async def get_queue(request: web.Request, ) -> web.Response:
    """get_queue

    Retrieve queue details


    """
    return web.Response(status=200)


async def get_queue_item(request: web.Request, number) -> web.Response:
    """get_queue_item

    Retrieve queued item details

    :param number: Queue number
    :type number: str

    """
    return web.Response(status=200)


async def get_view(request: web.Request, name) -> web.Response:
    """get_view

    Retrieve view details

    :param name: Name of the view
    :type name: str

    """
    return web.Response(status=200)


async def get_view_config(request: web.Request, name) -> web.Response:
    """get_view_config

    Retrieve view configuration

    :param name: Name of the view
    :type name: str

    """
    return web.Response(status=200)


async def head_jenkins(request: web.Request, ) -> web.Response:
    """head_jenkins

    Retrieve Jenkins headers


    """
    return web.Response(status=200)


async def post_create_item(request: web.Request, name, _from=None, mode=None, jenkins_crumb=None, content_type=None, body=None) -> web.Response:
    """post_create_item

    Create a new job using job configuration, or copied from an existing job

    :param name: Name of the new job
    :type name: str
    :param _from: Existing job to copy from
    :type _from: str
    :param mode: Set to &#39;copy&#39; for copying an existing job
    :type mode: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str
    :param content_type: Content type header application/xml
    :type content_type: str
    :param body: Job configuration in config.xml format
    :type body: str

    """
    return web.Response(status=200)


async def post_create_view(request: web.Request, name, jenkins_crumb=None, content_type=None, body=None) -> web.Response:
    """post_create_view

    Create a new view using view configuration

    :param name: Name of the new view
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str
    :param content_type: Content type header application/xml
    :type content_type: str
    :param body: View configuration in config.xml format
    :type body: str

    """
    return web.Response(status=200)


async def post_job_build(request: web.Request, name, json, token=None, jenkins_crumb=None) -> web.Response:
    """post_job_build

    Build a job

    :param name: Name of the job
    :type name: str
    :param json: 
    :type json: str
    :param token: 
    :type token: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_job_config(request: web.Request, name, body, jenkins_crumb=None) -> web.Response:
    """post_job_config

    Update job configuration

    :param name: Name of the job
    :type name: str
    :param body: Job configuration in config.xml format
    :type body: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_job_delete(request: web.Request, name, jenkins_crumb=None) -> web.Response:
    """post_job_delete

    Delete a job

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_job_disable(request: web.Request, name, jenkins_crumb=None) -> web.Response:
    """post_job_disable

    Disable a job

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_job_enable(request: web.Request, name, jenkins_crumb=None) -> web.Response:
    """post_job_enable

    Enable a job

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_job_last_build_stop(request: web.Request, name, jenkins_crumb=None) -> web.Response:
    """post_job_last_build_stop

    Stop a job

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)


async def post_view_config(request: web.Request, name, body, jenkins_crumb=None) -> web.Response:
    """post_view_config

    Update view configuration

    :param name: Name of the view
    :type name: str
    :param body: View configuration in config.xml format
    :type body: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    """
    return web.Response(status=200)
