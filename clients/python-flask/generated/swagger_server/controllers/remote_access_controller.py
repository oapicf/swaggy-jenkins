import connexion
from swagger_server.models.hudsonmodel_computer_set import HudsonmodelComputerSet
from swagger_server.models.hudsonmodel_free_style_build import HudsonmodelFreeStyleBuild
from swagger_server.models.hudsonmodel_free_style_project import HudsonmodelFreeStyleProject
from swagger_server.models.hudsonmodel_hudson import HudsonmodelHudson
from swagger_server.models.hudsonmodel_list_view import HudsonmodelListView
from swagger_server.models.hudsonmodel_queue import HudsonmodelQueue
from swagger_server.models.hudsonsecuritycsrf_default_crumb_issuer import HudsonsecuritycsrfDefaultCrumbIssuer
from datetime import date, datetime
from typing import List, Dict
from six import iteritems
from ..util import deserialize_date, deserialize_datetime


def get_computer():
    """
    get_computer
    Retrieve computer details

    :rtype: HudsonmodelComputerSet
    """
    return 'do some magic!'


def get_crumb():
    """
    get_crumb
    Retrieve CSRF protection token

    :rtype: HudsonsecuritycsrfDefaultCrumbIssuer
    """
    return 'do some magic!'


def get_jenkins():
    """
    get_jenkins
    Retrieve Jenkins details

    :rtype: HudsonmodelHudson
    """
    return 'do some magic!'


def get_job(name):
    """
    get_job
    Retrieve job details
    :param name: Name of the job
    :type name: str

    :rtype: HudsonmodelFreeStyleProject
    """
    return 'do some magic!'


def get_job_config(name):
    """
    get_job_config
    Retrieve job configuration
    :param name: Name of the job
    :type name: str

    :rtype: str
    """
    return 'do some magic!'


def get_job_last_build(name):
    """
    get_job_last_build
    Retrieve job&#39;s last build details
    :param name: Name of the job
    :type name: str

    :rtype: HudsonmodelFreeStyleBuild
    """
    return 'do some magic!'


def get_job_progressive_text(name, number, start):
    """
    get_job_progressive_text
    Retrieve job&#39;s build progressive text output
    :param name: Name of the job
    :type name: str
    :param number: Build number
    :type number: str
    :param start: Starting point of progressive text output
    :type start: str

    :rtype: None
    """
    return 'do some magic!'


def get_queue():
    """
    get_queue
    Retrieve queue details

    :rtype: HudsonmodelQueue
    """
    return 'do some magic!'


def get_queue_item(number):
    """
    get_queue_item
    Retrieve queued item details
    :param number: Queue number
    :type number: str

    :rtype: HudsonmodelQueue
    """
    return 'do some magic!'


def get_view(name):
    """
    get_view
    Retrieve view details
    :param name: Name of the view
    :type name: str

    :rtype: HudsonmodelListView
    """
    return 'do some magic!'


def get_view_config(name):
    """
    get_view_config
    Retrieve view configuration
    :param name: Name of the view
    :type name: str

    :rtype: str
    """
    return 'do some magic!'


def head_jenkins():
    """
    head_jenkins
    Retrieve Jenkins headers

    :rtype: None
    """
    return 'do some magic!'


def post_create_item(name, from=None, mode=None, body=None, Jenkins_Crumb=None, Content_Type=None):
    """
    post_create_item
    Create a new job using job configuration, or copied from an existing job
    :param name: Name of the new job
    :type name: str
    :param from: Existing job to copy from
    :type from: str
    :param mode: Set to &#39;copy&#39; for copying an existing job
    :type mode: str
    :param body: Job configuration in config.xml format
    :type body: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str
    :param Content_Type: Content type header application/xml
    :type Content_Type: str

    :rtype: None
    """
    return 'do some magic!'


def post_create_view(name, body=None, Jenkins_Crumb=None, Content_Type=None):
    """
    post_create_view
    Create a new view using view configuration
    :param name: Name of the new view
    :type name: str
    :param body: View configuration in config.xml format
    :type body: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str
    :param Content_Type: Content type header application/xml
    :type Content_Type: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_build(name, json, token=None, Jenkins_Crumb=None):
    """
    post_job_build
    Build a job
    :param name: Name of the job
    :type name: str
    :param json: 
    :type json: str
    :param token: 
    :type token: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_config(name, body, Jenkins_Crumb=None):
    """
    post_job_config
    Update job configuration
    :param name: Name of the job
    :type name: str
    :param body: Job configuration in config.xml format
    :type body: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_delete(name, Jenkins_Crumb=None):
    """
    post_job_delete
    Delete a job
    :param name: Name of the job
    :type name: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_disable(name, Jenkins_Crumb=None):
    """
    post_job_disable
    Disable a job
    :param name: Name of the job
    :type name: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_enable(name, Jenkins_Crumb=None):
    """
    post_job_enable
    Enable a job
    :param name: Name of the job
    :type name: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_job_last_build_stop(name, Jenkins_Crumb=None):
    """
    post_job_last_build_stop
    Stop a job
    :param name: Name of the job
    :type name: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'


def post_view_config(name, body, Jenkins_Crumb=None):
    """
    post_view_config
    Update view configuration
    :param name: Name of the view
    :type name: str
    :param body: View configuration in config.xml format
    :type body: str
    :param Jenkins_Crumb: CSRF protection token
    :type Jenkins_Crumb: str

    :rtype: None
    """
    return 'do some magic!'
