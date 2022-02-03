# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class PipelineRunartifacts(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, name=None, size=None, url=None, _class=None):  # noqa: E501
        """PipelineRunartifacts - a model defined in OpenAPI

        :param name: The name of this PipelineRunartifacts.  # noqa: E501
        :type name: str
        :param size: The size of this PipelineRunartifacts.  # noqa: E501
        :type size: int
        :param url: The url of this PipelineRunartifacts.  # noqa: E501
        :type url: str
        :param _class: The _class of this PipelineRunartifacts.  # noqa: E501
        :type _class: str
        """
        self.openapi_types = {
            'name': str,
            'size': int,
            'url': str,
            '_class': str
        }

        self.attribute_map = {
            'name': 'name',
            'size': 'size',
            'url': 'url',
            '_class': '_class'
        }

        self._name = name
        self._size = size
        self._url = url
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt) -> 'PipelineRunartifacts':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The PipelineRunartifacts of this PipelineRunartifacts.  # noqa: E501
        :rtype: PipelineRunartifacts
        """
        return util.deserialize_model(dikt, cls)

    @property
    def name(self):
        """Gets the name of this PipelineRunartifacts.


        :return: The name of this PipelineRunartifacts.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this PipelineRunartifacts.


        :param name: The name of this PipelineRunartifacts.
        :type name: str
        """

        self._name = name

    @property
    def size(self):
        """Gets the size of this PipelineRunartifacts.


        :return: The size of this PipelineRunartifacts.
        :rtype: int
        """
        return self._size

    @size.setter
    def size(self, size):
        """Sets the size of this PipelineRunartifacts.


        :param size: The size of this PipelineRunartifacts.
        :type size: int
        """

        self._size = size

    @property
    def url(self):
        """Gets the url of this PipelineRunartifacts.


        :return: The url of this PipelineRunartifacts.
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this PipelineRunartifacts.


        :param url: The url of this PipelineRunartifacts.
        :type url: str
        """

        self._url = url

    @property
    def _class(self):
        """Gets the _class of this PipelineRunartifacts.


        :return: The _class of this PipelineRunartifacts.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this PipelineRunartifacts.


        :param _class: The _class of this PipelineRunartifacts.
        :type _class: str
        """

        self.__class = _class
