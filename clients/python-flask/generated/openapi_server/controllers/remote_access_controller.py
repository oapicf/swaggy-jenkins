import connexion
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.computer_set import ComputerSet  # noqa: E501
from openapi_server.models.free_style_build import FreeStyleBuild  # noqa: E501
from openapi_server.models.free_style_project import FreeStyleProject  # noqa: E501
from openapi_server.models.hudson import Hudson  # noqa: E501
from openapi_server.models.list_view import ListView  # noqa: E501
from openapi_server.models.queue import Queue  # noqa: E501
from openapi_server import util


def get_computer(depth):  # noqa: E501
    """get_computer

    Retrieve computer details # noqa: E501

    :param depth: Recursion depth in response model
    :type depth: int

    :rtype: Union[ComputerSet, Tuple[ComputerSet, int], Tuple[ComputerSet, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_jenkins():  # noqa: E501
    """get_jenkins

    Retrieve Jenkins details # noqa: E501


    :rtype: Union[Hudson, Tuple[Hudson, int], Tuple[Hudson, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_job(name):  # noqa: E501
    """get_job

    Retrieve job details # noqa: E501

    :param name: Name of the job
    :type name: str

    :rtype: Union[FreeStyleProject, Tuple[FreeStyleProject, int], Tuple[FreeStyleProject, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_job_config(name):  # noqa: E501
    """get_job_config

    Retrieve job configuration # noqa: E501

    :param name: Name of the job
    :type name: str

    :rtype: Union[str, Tuple[str, int], Tuple[str, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_job_last_build(name):  # noqa: E501
    """get_job_last_build

    Retrieve job&#39;s last build details # noqa: E501

    :param name: Name of the job
    :type name: str

    :rtype: Union[FreeStyleBuild, Tuple[FreeStyleBuild, int], Tuple[FreeStyleBuild, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_job_progressive_text(name, number, start):  # noqa: E501
    """get_job_progressive_text

    Retrieve job&#39;s build progressive text output # noqa: E501

    :param name: Name of the job
    :type name: str
    :param number: Build number
    :type number: str
    :param start: Starting point of progressive text output
    :type start: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_queue():  # noqa: E501
    """get_queue

    Retrieve queue details # noqa: E501


    :rtype: Union[Queue, Tuple[Queue, int], Tuple[Queue, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_queue_item(number):  # noqa: E501
    """get_queue_item

    Retrieve queued item details # noqa: E501

    :param number: Queue number
    :type number: str

    :rtype: Union[Queue, Tuple[Queue, int], Tuple[Queue, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_view(name):  # noqa: E501
    """get_view

    Retrieve view details # noqa: E501

    :param name: Name of the view
    :type name: str

    :rtype: Union[ListView, Tuple[ListView, int], Tuple[ListView, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_view_config(name):  # noqa: E501
    """get_view_config

    Retrieve view configuration # noqa: E501

    :param name: Name of the view
    :type name: str

    :rtype: Union[str, Tuple[str, int], Tuple[str, int, Dict[str, str]]
    """
    return 'do some magic!'


def head_jenkins():  # noqa: E501
    """head_jenkins

    Retrieve Jenkins headers # noqa: E501


    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_create_item(name, _from=None, mode=None, jenkins_crumb=None, content_type=None, body=None):  # noqa: E501
    """post_create_item

    Create a new job using job configuration, or copied from an existing job # noqa: E501

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

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_create_view(name, jenkins_crumb=None, content_type=None, body=None):  # noqa: E501
    """post_create_view

    Create a new view using view configuration # noqa: E501

    :param name: Name of the new view
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str
    :param content_type: Content type header application/xml
    :type content_type: str
    :param body: View configuration in config.xml format
    :type body: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_build(name, _json, token=None, jenkins_crumb=None):  # noqa: E501
    """post_job_build

    Build a job # noqa: E501

    :param name: Name of the job
    :type name: str
    :param _json: 
    :type _json: str
    :param token: 
    :type token: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_config(name, body, jenkins_crumb=None):  # noqa: E501
    """post_job_config

    Update job configuration # noqa: E501

    :param name: Name of the job
    :type name: str
    :param body: Job configuration in config.xml format
    :type body: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_delete(name, jenkins_crumb=None):  # noqa: E501
    """post_job_delete

    Delete a job # noqa: E501

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_disable(name, jenkins_crumb=None):  # noqa: E501
    """post_job_disable

    Disable a job # noqa: E501

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_enable(name, jenkins_crumb=None):  # noqa: E501
    """post_job_enable

    Enable a job # noqa: E501

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_job_last_build_stop(name, jenkins_crumb=None):  # noqa: E501
    """post_job_last_build_stop

    Stop a job # noqa: E501

    :param name: Name of the job
    :type name: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def post_view_config(name, body, jenkins_crumb=None):  # noqa: E501
    """post_view_config

    Update view configuration # noqa: E501

    :param name: Name of the view
    :type name: str
    :param body: View configuration in config.xml format
    :type body: str
    :param jenkins_crumb: CSRF protection token
    :type jenkins_crumb: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'
