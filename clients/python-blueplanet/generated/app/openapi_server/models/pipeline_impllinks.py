# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from app.openapi_server.models.link import Link  # noqa: F401,E501
from openapi_server import util


class PipelineImpllinks(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, runs: Link=None, _self: Link=None, queue: Link=None, actions: Link=None, _class: str=None):  # noqa: E501
        """PipelineImpllinks - a model defined in Swagger

        :param runs: The runs of this PipelineImpllinks.  # noqa: E501
        :type runs: Link
        :param _self: The _self of this PipelineImpllinks.  # noqa: E501
        :type _self: Link
        :param queue: The queue of this PipelineImpllinks.  # noqa: E501
        :type queue: Link
        :param actions: The actions of this PipelineImpllinks.  # noqa: E501
        :type actions: Link
        :param _class: The _class of this PipelineImpllinks.  # noqa: E501
        :type _class: str
        """
        self.swagger_types = {
            'runs': Link,
            '_self': Link,
            'queue': Link,
            'actions': Link,
            '_class': str
        }

        self.attribute_map = {
            'runs': 'runs',
            '_self': 'self',
            'queue': 'queue',
            'actions': 'actions',
            '_class': '_class'
        }

        self._runs = runs
        self.__self = _self
        self._queue = queue
        self._actions = actions
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt) -> 'PipelineImpllinks':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The PipelineImpllinks of this PipelineImpllinks.  # noqa: E501
        :rtype: PipelineImpllinks
        """
        return util.deserialize_model(dikt, cls)

    @property
    def runs(self) -> Link:
        """Gets the runs of this PipelineImpllinks.


        :return: The runs of this PipelineImpllinks.
        :rtype: Link
        """
        return self._runs

    @runs.setter
    def runs(self, runs: Link):
        """Sets the runs of this PipelineImpllinks.


        :param runs: The runs of this PipelineImpllinks.
        :type runs: Link
        """

        self._runs = runs

    @property
    def _self(self) -> Link:
        """Gets the _self of this PipelineImpllinks.


        :return: The _self of this PipelineImpllinks.
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self: Link):
        """Sets the _self of this PipelineImpllinks.


        :param _self: The _self of this PipelineImpllinks.
        :type _self: Link
        """

        self.__self = _self

    @property
    def queue(self) -> Link:
        """Gets the queue of this PipelineImpllinks.


        :return: The queue of this PipelineImpllinks.
        :rtype: Link
        """
        return self._queue

    @queue.setter
    def queue(self, queue: Link):
        """Sets the queue of this PipelineImpllinks.


        :param queue: The queue of this PipelineImpllinks.
        :type queue: Link
        """

        self._queue = queue

    @property
    def actions(self) -> Link:
        """Gets the actions of this PipelineImpllinks.


        :return: The actions of this PipelineImpllinks.
        :rtype: Link
        """
        return self._actions

    @actions.setter
    def actions(self, actions: Link):
        """Sets the actions of this PipelineImpllinks.


        :param actions: The actions of this PipelineImpllinks.
        :type actions: Link
        """

        self._actions = actions

    @property
    def _class(self) -> str:
        """Gets the _class of this PipelineImpllinks.


        :return: The _class of this PipelineImpllinks.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this PipelineImpllinks.


        :param _class: The _class of this PipelineImpllinks.
        :type _class: str
        """

        self.__class = _class
