# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from app.openapi_server.models.link import Link  # noqa: F401,E501
from openapi_server import util


class GithubScmlinks(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, _self: Link=None, _class: str=None):  # noqa: E501
        """GithubScmlinks - a model defined in Swagger

        :param _self: The _self of this GithubScmlinks.  # noqa: E501
        :type _self: Link
        :param _class: The _class of this GithubScmlinks.  # noqa: E501
        :type _class: str
        """
        self.swagger_types = {
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
    def from_dict(cls, dikt) -> 'GithubScmlinks':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GithubScmlinks of this GithubScmlinks.  # noqa: E501
        :rtype: GithubScmlinks
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _self(self) -> Link:
        """Gets the _self of this GithubScmlinks.


        :return: The _self of this GithubScmlinks.
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self: Link):
        """Sets the _self of this GithubScmlinks.


        :param _self: The _self of this GithubScmlinks.
        :type _self: Link
        """

        self.__self = _self

    @property
    def _class(self) -> str:
        """Gets the _class of this GithubScmlinks.


        :return: The _class of this GithubScmlinks.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this GithubScmlinks.


        :param _class: The _class of this GithubScmlinks.
        :type _class: str
        """

        self.__class = _class
