# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server import util


class GenericResource(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, display_name=None, duration_in_millis=None, id=None, result=None, start_time=None):  # noqa: E501
        """GenericResource - a model defined in OpenAPI

        :param _class: The _class of this GenericResource.  # noqa: E501
        :type _class: str
        :param display_name: The display_name of this GenericResource.  # noqa: E501
        :type display_name: str
        :param duration_in_millis: The duration_in_millis of this GenericResource.  # noqa: E501
        :type duration_in_millis: int
        :param id: The id of this GenericResource.  # noqa: E501
        :type id: str
        :param result: The result of this GenericResource.  # noqa: E501
        :type result: str
        :param start_time: The start_time of this GenericResource.  # noqa: E501
        :type start_time: str
        """
        self.openapi_types = {
            '_class': str,
            'display_name': str,
            'duration_in_millis': int,
            'id': str,
            'result': str,
            'start_time': str
        }

        self.attribute_map = {
            '_class': '_class',
            'display_name': 'displayName',
            'duration_in_millis': 'durationInMillis',
            'id': 'id',
            'result': 'result',
            'start_time': 'startTime'
        }

        self.__class = _class
        self._display_name = display_name
        self._duration_in_millis = duration_in_millis
        self._id = id
        self._result = result
        self._start_time = start_time

    @classmethod
    def from_dict(cls, dikt) -> 'GenericResource':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GenericResource of this GenericResource.  # noqa: E501
        :rtype: GenericResource
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this GenericResource.


        :return: The _class of this GenericResource.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this GenericResource.


        :param _class: The _class of this GenericResource.
        :type _class: str
        """

        self.__class = _class

    @property
    def display_name(self):
        """Gets the display_name of this GenericResource.


        :return: The display_name of this GenericResource.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this GenericResource.


        :param display_name: The display_name of this GenericResource.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def duration_in_millis(self):
        """Gets the duration_in_millis of this GenericResource.


        :return: The duration_in_millis of this GenericResource.
        :rtype: int
        """
        return self._duration_in_millis

    @duration_in_millis.setter
    def duration_in_millis(self, duration_in_millis):
        """Sets the duration_in_millis of this GenericResource.


        :param duration_in_millis: The duration_in_millis of this GenericResource.
        :type duration_in_millis: int
        """

        self._duration_in_millis = duration_in_millis

    @property
    def id(self):
        """Gets the id of this GenericResource.


        :return: The id of this GenericResource.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this GenericResource.


        :param id: The id of this GenericResource.
        :type id: str
        """

        self._id = id

    @property
    def result(self):
        """Gets the result of this GenericResource.


        :return: The result of this GenericResource.
        :rtype: str
        """
        return self._result

    @result.setter
    def result(self, result):
        """Sets the result of this GenericResource.


        :param result: The result of this GenericResource.
        :type result: str
        """

        self._result = result

    @property
    def start_time(self):
        """Gets the start_time of this GenericResource.


        :return: The start_time of this GenericResource.
        :rtype: str
        """
        return self._start_time

    @start_time.setter
    def start_time(self, start_time):
        """Sets the start_time of this GenericResource.


        :param start_time: The start_time of this GenericResource.
        :type start_time: str
        """

        self._start_time = start_time
