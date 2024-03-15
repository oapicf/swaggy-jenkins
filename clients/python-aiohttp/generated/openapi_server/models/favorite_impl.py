# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server.models.favorite_impllinks import FavoriteImpllinks
from openapi_server.models.pipeline_impl import PipelineImpl
from openapi_server import util


class FavoriteImpl(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class: str=None, links: FavoriteImpllinks=None, item: PipelineImpl=None):
        """FavoriteImpl - a model defined in OpenAPI

        :param _class: The _class of this FavoriteImpl.
        :param links: The links of this FavoriteImpl.
        :param item: The item of this FavoriteImpl.
        """
        self.openapi_types = {
            '_class': str,
            'links': FavoriteImpllinks,
            'item': PipelineImpl
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'item': 'item'
        }

        self.__class = _class
        self._links = links
        self._item = item

    @classmethod
    def from_dict(cls, dikt: dict) -> 'FavoriteImpl':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The FavoriteImpl of this FavoriteImpl.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this FavoriteImpl.


        :return: The _class of this FavoriteImpl.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this FavoriteImpl.


        :param _class: The _class of this FavoriteImpl.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self):
        """Gets the links of this FavoriteImpl.


        :return: The links of this FavoriteImpl.
        :rtype: FavoriteImpllinks
        """
        return self._links

    @links.setter
    def links(self, links):
        """Sets the links of this FavoriteImpl.


        :param links: The links of this FavoriteImpl.
        :type links: FavoriteImpllinks
        """

        self._links = links

    @property
    def item(self):
        """Gets the item of this FavoriteImpl.


        :return: The item of this FavoriteImpl.
        :rtype: PipelineImpl
        """
        return self._item

    @item.setter
    def item(self, item):
        """Sets the item of this FavoriteImpl.


        :param item: The item of this FavoriteImpl.
        :type item: PipelineImpl
        """

        self._item = item
