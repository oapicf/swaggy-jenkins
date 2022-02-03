# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class PipelineFolderImpl(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, display_name=None, full_name=None, name=None, organization=None, number_of_folders=None, number_of_pipelines=None):  # noqa: E501
        """PipelineFolderImpl - a model defined in OpenAPI

        :param _class: The _class of this PipelineFolderImpl.  # noqa: E501
        :type _class: str
        :param display_name: The display_name of this PipelineFolderImpl.  # noqa: E501
        :type display_name: str
        :param full_name: The full_name of this PipelineFolderImpl.  # noqa: E501
        :type full_name: str
        :param name: The name of this PipelineFolderImpl.  # noqa: E501
        :type name: str
        :param organization: The organization of this PipelineFolderImpl.  # noqa: E501
        :type organization: str
        :param number_of_folders: The number_of_folders of this PipelineFolderImpl.  # noqa: E501
        :type number_of_folders: int
        :param number_of_pipelines: The number_of_pipelines of this PipelineFolderImpl.  # noqa: E501
        :type number_of_pipelines: int
        """
        self.openapi_types = {
            '_class': str,
            'display_name': str,
            'full_name': str,
            'name': str,
            'organization': str,
            'number_of_folders': int,
            'number_of_pipelines': int
        }

        self.attribute_map = {
            '_class': '_class',
            'display_name': 'displayName',
            'full_name': 'fullName',
            'name': 'name',
            'organization': 'organization',
            'number_of_folders': 'numberOfFolders',
            'number_of_pipelines': 'numberOfPipelines'
        }

        self.__class = _class
        self._display_name = display_name
        self._full_name = full_name
        self._name = name
        self._organization = organization
        self._number_of_folders = number_of_folders
        self._number_of_pipelines = number_of_pipelines

    @classmethod
    def from_dict(cls, dikt) -> 'PipelineFolderImpl':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The PipelineFolderImpl of this PipelineFolderImpl.  # noqa: E501
        :rtype: PipelineFolderImpl
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this PipelineFolderImpl.


        :return: The _class of this PipelineFolderImpl.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this PipelineFolderImpl.


        :param _class: The _class of this PipelineFolderImpl.
        :type _class: str
        """

        self.__class = _class

    @property
    def display_name(self):
        """Gets the display_name of this PipelineFolderImpl.


        :return: The display_name of this PipelineFolderImpl.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this PipelineFolderImpl.


        :param display_name: The display_name of this PipelineFolderImpl.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def full_name(self):
        """Gets the full_name of this PipelineFolderImpl.


        :return: The full_name of this PipelineFolderImpl.
        :rtype: str
        """
        return self._full_name

    @full_name.setter
    def full_name(self, full_name):
        """Sets the full_name of this PipelineFolderImpl.


        :param full_name: The full_name of this PipelineFolderImpl.
        :type full_name: str
        """

        self._full_name = full_name

    @property
    def name(self):
        """Gets the name of this PipelineFolderImpl.


        :return: The name of this PipelineFolderImpl.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this PipelineFolderImpl.


        :param name: The name of this PipelineFolderImpl.
        :type name: str
        """

        self._name = name

    @property
    def organization(self):
        """Gets the organization of this PipelineFolderImpl.


        :return: The organization of this PipelineFolderImpl.
        :rtype: str
        """
        return self._organization

    @organization.setter
    def organization(self, organization):
        """Sets the organization of this PipelineFolderImpl.


        :param organization: The organization of this PipelineFolderImpl.
        :type organization: str
        """

        self._organization = organization

    @property
    def number_of_folders(self):
        """Gets the number_of_folders of this PipelineFolderImpl.


        :return: The number_of_folders of this PipelineFolderImpl.
        :rtype: int
        """
        return self._number_of_folders

    @number_of_folders.setter
    def number_of_folders(self, number_of_folders):
        """Sets the number_of_folders of this PipelineFolderImpl.


        :param number_of_folders: The number_of_folders of this PipelineFolderImpl.
        :type number_of_folders: int
        """

        self._number_of_folders = number_of_folders

    @property
    def number_of_pipelines(self):
        """Gets the number_of_pipelines of this PipelineFolderImpl.


        :return: The number_of_pipelines of this PipelineFolderImpl.
        :rtype: int
        """
        return self._number_of_pipelines

    @number_of_pipelines.setter
    def number_of_pipelines(self, number_of_pipelines):
        """Sets the number_of_pipelines of this PipelineFolderImpl.


        :param number_of_pipelines: The number_of_pipelines of this PipelineFolderImpl.
        :type number_of_pipelines: int
        """

        self._number_of_pipelines = number_of_pipelines
