# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server.models.extension_class_container_impl1links import ExtensionClassContainerImpl1links
from openapi_server.models.extension_class_container_impl1map import ExtensionClassContainerImpl1map
from openapi_server import util


class ExtensionClassContainerImpl1(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class: str=None, links: ExtensionClassContainerImpl1links=None, map: ExtensionClassContainerImpl1map=None):
        """ExtensionClassContainerImpl1 - a model defined in OpenAPI

        :param _class: The _class of this ExtensionClassContainerImpl1.
        :param links: The links of this ExtensionClassContainerImpl1.
        :param map: The map of this ExtensionClassContainerImpl1.
        """
        self.openapi_types = {
            '_class': str,
            'links': ExtensionClassContainerImpl1links,
            'map': ExtensionClassContainerImpl1map
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'map': 'map'
        }

        self.__class = _class
        self._links = links
        self._map = map

    @classmethod
    def from_dict(cls, dikt: dict) -> 'ExtensionClassContainerImpl1':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The ExtensionClassContainerImpl1 of this ExtensionClassContainerImpl1.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this ExtensionClassContainerImpl1.


        :return: The _class of this ExtensionClassContainerImpl1.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this ExtensionClassContainerImpl1.


        :param _class: The _class of this ExtensionClassContainerImpl1.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self):
        """Gets the links of this ExtensionClassContainerImpl1.


        :return: The links of this ExtensionClassContainerImpl1.
        :rtype: ExtensionClassContainerImpl1links
        """
        return self._links

    @links.setter
    def links(self, links):
        """Sets the links of this ExtensionClassContainerImpl1.


        :param links: The links of this ExtensionClassContainerImpl1.
        :type links: ExtensionClassContainerImpl1links
        """

        self._links = links

    @property
    def map(self):
        """Gets the map of this ExtensionClassContainerImpl1.


        :return: The map of this ExtensionClassContainerImpl1.
        :rtype: ExtensionClassContainerImpl1map
        """
        return self._map

    @map.setter
    def map(self, map):
        """Sets the map of this ExtensionClassContainerImpl1.


        :param map: The map of this ExtensionClassContainerImpl1.
        :type map: ExtensionClassContainerImpl1map
        """

        self._map = map
