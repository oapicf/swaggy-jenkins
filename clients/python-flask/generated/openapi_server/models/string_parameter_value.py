# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class StringParameterValue(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, name=None, value=None):  # noqa: E501
        """StringParameterValue - a model defined in OpenAPI

        :param _class: The _class of this StringParameterValue.  # noqa: E501
        :type _class: str
        :param name: The name of this StringParameterValue.  # noqa: E501
        :type name: str
        :param value: The value of this StringParameterValue.  # noqa: E501
        :type value: str
        """
        self.openapi_types = {
            '_class': str,
            'name': str,
            'value': str
        }

        self.attribute_map = {
            '_class': '_class',
            'name': 'name',
            'value': 'value'
        }

        self.__class = _class
        self._name = name
        self._value = value

    @classmethod
    def from_dict(cls, dikt) -> 'StringParameterValue':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The StringParameterValue of this StringParameterValue.  # noqa: E501
        :rtype: StringParameterValue
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this StringParameterValue.


        :return: The _class of this StringParameterValue.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this StringParameterValue.


        :param _class: The _class of this StringParameterValue.
        :type _class: str
        """

        self.__class = _class

    @property
    def name(self):
        """Gets the name of this StringParameterValue.


        :return: The name of this StringParameterValue.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this StringParameterValue.


        :param name: The name of this StringParameterValue.
        :type name: str
        """

        self._name = name

    @property
    def value(self):
        """Gets the value of this StringParameterValue.


        :return: The value of this StringParameterValue.
        :rtype: str
        """
        return self._value

    @value.setter
    def value(self, value):
        """Sets the value of this StringParameterValue.


        :param value: The value of this StringParameterValue.
        :type value: str
        """

        self._value = value
