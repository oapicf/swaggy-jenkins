# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class Link(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, href=None):  # noqa: E501
        """Link - a model defined in OpenAPI

        :param _class: The _class of this Link.  # noqa: E501
        :type _class: str
        :param href: The href of this Link.  # noqa: E501
        :type href: str
        """
        self.openapi_types = {
            '_class': str,
            'href': str
        }

        self.attribute_map = {
            '_class': '_class',
            'href': 'href'
        }

        self.__class = _class
        self._href = href

    @classmethod
    def from_dict(cls, dikt) -> 'Link':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The Link of this Link.  # noqa: E501
        :rtype: Link
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this Link.


        :return: The _class of this Link.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this Link.


        :param _class: The _class of this Link.
        :type _class: str
        """

        self.__class = _class

    @property
    def href(self):
        """Gets the href of this Link.


        :return: The href of this Link.
        :rtype: str
        """
        return self._href

    @href.setter
    def href(self, href):
        """Sets the href of this Link.


        :param href: The href of this Link.
        :type href: str
        """

        self._href = href
