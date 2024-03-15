from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server.models.link import Link
from openapi_server import util

from openapi_server.models.link import Link  # noqa: E501

class GithubOrganizationlinks(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, repositories=None, _self=None, _class=None):  # noqa: E501
        """GithubOrganizationlinks - a model defined in OpenAPI

        :param repositories: The repositories of this GithubOrganizationlinks.  # noqa: E501
        :type repositories: Link
        :param _self: The _self of this GithubOrganizationlinks.  # noqa: E501
        :type _self: Link
        :param _class: The _class of this GithubOrganizationlinks.  # noqa: E501
        :type _class: str
        """
        self.openapi_types = {
            'repositories': Link,
            '_self': Link,
            '_class': str
        }

        self.attribute_map = {
            'repositories': 'repositories',
            '_self': 'self',
            '_class': '_class'
        }

        self._repositories = repositories
        self.__self = _self
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt) -> 'GithubOrganizationlinks':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GithubOrganizationlinks of this GithubOrganizationlinks.  # noqa: E501
        :rtype: GithubOrganizationlinks
        """
        return util.deserialize_model(dikt, cls)

    @property
    def repositories(self) -> Link:
        """Gets the repositories of this GithubOrganizationlinks.


        :return: The repositories of this GithubOrganizationlinks.
        :rtype: Link
        """
        return self._repositories

    @repositories.setter
    def repositories(self, repositories: Link):
        """Sets the repositories of this GithubOrganizationlinks.


        :param repositories: The repositories of this GithubOrganizationlinks.
        :type repositories: Link
        """

        self._repositories = repositories

    @property
    def _self(self) -> Link:
        """Gets the _self of this GithubOrganizationlinks.


        :return: The _self of this GithubOrganizationlinks.
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self: Link):
        """Sets the _self of this GithubOrganizationlinks.


        :param _self: The _self of this GithubOrganizationlinks.
        :type _self: Link
        """

        self.__self = _self

    @property
    def _class(self) -> str:
        """Gets the _class of this GithubOrganizationlinks.


        :return: The _class of this GithubOrganizationlinks.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this GithubOrganizationlinks.


        :param _class: The _class of this GithubOrganizationlinks.
        :type _class: str
        """

        self.__class = _class
