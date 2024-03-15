# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server.models.link import Link
from openapi_server import util


class BranchImpllinks(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _self: Link=None, actions: Link=None, runs: Link=None, queue: Link=None, _class: str=None):
        """BranchImpllinks - a model defined in OpenAPI

        :param _self: The _self of this BranchImpllinks.
        :param actions: The actions of this BranchImpllinks.
        :param runs: The runs of this BranchImpllinks.
        :param queue: The queue of this BranchImpllinks.
        :param _class: The _class of this BranchImpllinks.
        """
        self.openapi_types = {
            '_self': Link,
            'actions': Link,
            'runs': Link,
            'queue': Link,
            '_class': str
        }

        self.attribute_map = {
            '_self': 'self',
            'actions': 'actions',
            'runs': 'runs',
            'queue': 'queue',
            '_class': '_class'
        }

        self.__self = _self
        self._actions = actions
        self._runs = runs
        self._queue = queue
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt: dict) -> 'BranchImpllinks':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The BranchImpllinks of this BranchImpllinks.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _self(self):
        """Gets the _self of this BranchImpllinks.


        :return: The _self of this BranchImpllinks.
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self):
        """Sets the _self of this BranchImpllinks.


        :param _self: The _self of this BranchImpllinks.
        :type _self: Link
        """

        self.__self = _self

    @property
    def actions(self):
        """Gets the actions of this BranchImpllinks.


        :return: The actions of this BranchImpllinks.
        :rtype: Link
        """
        return self._actions

    @actions.setter
    def actions(self, actions):
        """Sets the actions of this BranchImpllinks.


        :param actions: The actions of this BranchImpllinks.
        :type actions: Link
        """

        self._actions = actions

    @property
    def runs(self):
        """Gets the runs of this BranchImpllinks.


        :return: The runs of this BranchImpllinks.
        :rtype: Link
        """
        return self._runs

    @runs.setter
    def runs(self, runs):
        """Sets the runs of this BranchImpllinks.


        :param runs: The runs of this BranchImpllinks.
        :type runs: Link
        """

        self._runs = runs

    @property
    def queue(self):
        """Gets the queue of this BranchImpllinks.


        :return: The queue of this BranchImpllinks.
        :rtype: Link
        """
        return self._queue

    @queue.setter
    def queue(self, queue):
        """Sets the queue of this BranchImpllinks.


        :param queue: The queue of this BranchImpllinks.
        :type queue: Link
        """

        self._queue = queue

    @property
    def _class(self):
        """Gets the _class of this BranchImpllinks.


        :return: The _class of this BranchImpllinks.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this BranchImpllinks.


        :param _class: The _class of this BranchImpllinks.
        :type _class: str
        """

        self.__class = _class
