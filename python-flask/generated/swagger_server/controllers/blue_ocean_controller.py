import connexion
from swagger_server.models.get_multibranch_pipeline import GetMultibranchPipeline
from swagger_server.models.get_organisations import GetOrganisations
from swagger_server.models.get_pipelines import GetPipelines
from swagger_server.models.iojenkinsblueoceanrestimplpipeline_branch_impl import IojenkinsblueoceanrestimplpipelineBranchImpl
from swagger_server.models.iojenkinsblueoceanserviceembeddedrest_pipeline_folder_impl import IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
from swagger_server.models.iojenkinsblueoceanserviceembeddedrest_pipeline_impl import IojenkinsblueoceanserviceembeddedrestPipelineImpl
from swagger_server.models.swaggyjenkins_organisation import SwaggyjenkinsOrganisation
from swagger_server.models.swaggyjenkins_pipeline import SwaggyjenkinsPipeline
from swagger_server.models.swaggyjenkins_user import SwaggyjenkinsUser
from datetime import date, datetime
from typing import List, Dict
from six import iteritems
from ..util import deserialize_date, deserialize_datetime


def get_authenticated_user(organisation):
    """
    get_authenticated_user
    Retrieve authenticated user details for an organisation
    :param organisation: Name of the organisation
    :type organisation: str

    :rtype: SwaggyjenkinsUser
    """
    return 'do some magic!'


def get_classes(class):
    """
    get_classes
    Get a list of class names supported by a given class
    :param class: Name of the class
    :type class: str

    :rtype: str
    """
    return 'do some magic!'


def get_organisation(organisation):
    """
    get_organisation
    Retrieve organisation details
    :param organisation: Name of the organisation
    :type organisation: str

    :rtype: SwaggyjenkinsOrganisation
    """
    return 'do some magic!'


def get_organisations():
    """
    get_organisations
    Retrieve all organisations details

    :rtype: GetOrganisations
    """
    return 'do some magic!'


def get_pipeline_branch_by_org(organisation, pipeline, branch):
    """
    get_pipeline_branch_by_org
    Retrieve branch details for an organisation pipeline
    :param organisation: Name of the organisation
    :type organisation: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param branch: Name of the branch
    :type branch: str

    :rtype: IojenkinsblueoceanrestimplpipelineBranchImpl
    """
    return 'do some magic!'


def get_pipeline_branches_by_org(organisation, pipeline):
    """
    get_pipeline_branches_by_org
    Retrieve all branches details for an organisation pipeline
    :param organisation: Name of the organisation
    :type organisation: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: GetMultibranchPipeline
    """
    return 'do some magic!'


def get_pipeline_by_org(organisation, pipeline):
    """
    get_pipeline_by_org
    Retrieve pipeline details for an organisation
    :param organisation: Name of the organisation
    :type organisation: str
    :param pipeline: Name of the pipeline
    :type pipeline: str

    :rtype: SwaggyjenkinsPipeline
    """
    return 'do some magic!'


def get_pipeline_folder_by_org(organisation, folder):
    """
    get_pipeline_folder_by_org
    Retrieve pipeline folder for an organisation
    :param organisation: Name of the organisation
    :type organisation: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
    """
    return 'do some magic!'


def get_pipeline_folder_by_org_0(organisation, pipeline, folder):
    """
    get_pipeline_folder_by_org_0
    Retrieve pipeline details for an organisation folder
    :param organisation: Name of the organisation
    :type organisation: str
    :param pipeline: Name of the pipeline
    :type pipeline: str
    :param folder: Name of the folder
    :type folder: str

    :rtype: IojenkinsblueoceanserviceembeddedrestPipelineImpl
    """
    return 'do some magic!'


def get_pipelines_by_org(organisation):
    """
    get_pipelines_by_org
    Retrieve all pipelines details for an organisation
    :param organisation: Name of the organisation
    :type organisation: str

    :rtype: GetPipelines
    """
    return 'do some magic!'


def get_user(organisation, user):
    """
    get_user
    Retrieve user details for an organisation
    :param organisation: Name of the organisation
    :type organisation: str
    :param user: Name of the user
    :type user: str

    :rtype: SwaggyjenkinsUser
    """
    return 'do some magic!'


def get_users(organisation):
    """
    get_users
    Retrieve users details for an organisation
    :param organisation: Name of the organisation
    :type organisation: str

    :rtype: SwaggyjenkinsUser
    """
    return 'do some magic!'


def search(q):
    """
    search
    Get classes details
    :param q: Query string containing an array of class names
    :type q: str

    :rtype: str
    """
    return 'do some magic!'


def search_0(q):
    """
    search_0
    Search for any resource details
    :param q: Query string
    :type q: str

    :rtype: str
    """
    return 'do some magic!'
