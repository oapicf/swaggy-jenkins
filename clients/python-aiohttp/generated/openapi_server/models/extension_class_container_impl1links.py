# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server.models.link import Link
from openapi_server import util


class ExtensionClassContainerImpl1links(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _self: Link=None, _class: str=None):
        """ExtensionClassContainerImpl1links - a model defined in OpenAPI

        :param _self: The _self of this ExtensionClassContainerImpl1links.
        :param _class: The _class of this ExtensionClassContainerImpl1links.
        """
        self.openapi_types = {
            '_self': Link,
            '_class': str
        }

        self.attribute_map = {
            '_self': 'self',
            '_class': '_class'
        }

        self.__self = _self
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt: dict) -> 'ExtensionClassContainerImpl1links':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The ExtensionClassContainerImpl1links of this ExtensionClassContainerImpl1links.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _self(self):
        """Gets the _self of this ExtensionClassContainerImpl1links.


        :return: The _self of this ExtensionClassContainerImpl1links.
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self):
        """Sets the _self of this ExtensionClassContainerImpl1links.


        :param _self: The _self of this ExtensionClassContainerImpl1links.
        :type _self: Link
        """

        self.__self = _self

    @property
    def _class(self):
        """Gets the _class of this ExtensionClassContainerImpl1links.


        :return: The _class of this ExtensionClassContainerImpl1links.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this ExtensionClassContainerImpl1links.


        :param _class: The _class of this ExtensionClassContainerImpl1links.
        :type _class: str
        """

        self.__class = _class
