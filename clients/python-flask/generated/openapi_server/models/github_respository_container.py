# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.github_repositories import GithubRepositories
from openapi_server.models.github_respository_containerlinks import GithubRespositoryContainerlinks
from openapi_server import util

from openapi_server.models.github_repositories import GithubRepositories  # noqa: E501
from openapi_server.models.github_respository_containerlinks import GithubRespositoryContainerlinks  # noqa: E501

class GithubRespositoryContainer(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, links=None, repositories=None):  # noqa: E501
        """GithubRespositoryContainer - a model defined in OpenAPI

        :param _class: The _class of this GithubRespositoryContainer.  # noqa: E501
        :type _class: str
        :param links: The links of this GithubRespositoryContainer.  # noqa: E501
        :type links: GithubRespositoryContainerlinks
        :param repositories: The repositories of this GithubRespositoryContainer.  # noqa: E501
        :type repositories: GithubRepositories
        """
        self.openapi_types = {
            '_class': str,
            'links': GithubRespositoryContainerlinks,
            'repositories': GithubRepositories
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'repositories': 'repositories'
        }

        self.__class = _class
        self._links = links
        self._repositories = repositories

    @classmethod
    def from_dict(cls, dikt) -> 'GithubRespositoryContainer':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GithubRespositoryContainer of this GithubRespositoryContainer.  # noqa: E501
        :rtype: GithubRespositoryContainer
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this GithubRespositoryContainer.


        :return: The _class of this GithubRespositoryContainer.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this GithubRespositoryContainer.


        :param _class: The _class of this GithubRespositoryContainer.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self):
        """Gets the links of this GithubRespositoryContainer.


        :return: The links of this GithubRespositoryContainer.
        :rtype: GithubRespositoryContainerlinks
        """
        return self._links

    @links.setter
    def links(self, links):
        """Sets the links of this GithubRespositoryContainer.


        :param links: The links of this GithubRespositoryContainer.
        :type links: GithubRespositoryContainerlinks
        """

        self._links = links

    @property
    def repositories(self):
        """Gets the repositories of this GithubRespositoryContainer.


        :return: The repositories of this GithubRespositoryContainer.
        :rtype: GithubRepositories
        """
        return self._repositories

    @repositories.setter
    def repositories(self, repositories):
        """Sets the repositories of this GithubRespositoryContainer.


        :param repositories: The repositories of this GithubRespositoryContainer.
        :type repositories: GithubRepositories
        """

        self._repositories = repositories
