# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.cause_action import CauseAction
from openapi_server.models.free_style_build import FreeStyleBuild
from openapi_server.models.free_style_project import FreeStyleProject
from openapi_server import util

from openapi_server.models.cause_action import CauseAction  # noqa: E501
from openapi_server.models.free_style_build import FreeStyleBuild  # noqa: E501
from openapi_server.models.free_style_project import FreeStyleProject  # noqa: E501

class QueueLeftItem(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, actions=None, blocked=None, buildable=None, id=None, in_queue_since=None, params=None, stuck=None, task=None, url=None, why=None, cancelled=None, executable=None):  # noqa: E501
        """QueueLeftItem - a model defined in OpenAPI

        :param _class: The _class of this QueueLeftItem.  # noqa: E501
        :type _class: str
        :param actions: The actions of this QueueLeftItem.  # noqa: E501
        :type actions: List[CauseAction]
        :param blocked: The blocked of this QueueLeftItem.  # noqa: E501
        :type blocked: bool
        :param buildable: The buildable of this QueueLeftItem.  # noqa: E501
        :type buildable: bool
        :param id: The id of this QueueLeftItem.  # noqa: E501
        :type id: int
        :param in_queue_since: The in_queue_since of this QueueLeftItem.  # noqa: E501
        :type in_queue_since: int
        :param params: The params of this QueueLeftItem.  # noqa: E501
        :type params: str
        :param stuck: The stuck of this QueueLeftItem.  # noqa: E501
        :type stuck: bool
        :param task: The task of this QueueLeftItem.  # noqa: E501
        :type task: FreeStyleProject
        :param url: The url of this QueueLeftItem.  # noqa: E501
        :type url: str
        :param why: The why of this QueueLeftItem.  # noqa: E501
        :type why: str
        :param cancelled: The cancelled of this QueueLeftItem.  # noqa: E501
        :type cancelled: bool
        :param executable: The executable of this QueueLeftItem.  # noqa: E501
        :type executable: FreeStyleBuild
        """
        self.openapi_types = {
            '_class': str,
            'actions': List[CauseAction],
            'blocked': bool,
            'buildable': bool,
            'id': int,
            'in_queue_since': int,
            'params': str,
            'stuck': bool,
            'task': FreeStyleProject,
            'url': str,
            'why': str,
            'cancelled': bool,
            'executable': FreeStyleBuild
        }

        self.attribute_map = {
            '_class': '_class',
            'actions': 'actions',
            'blocked': 'blocked',
            'buildable': 'buildable',
            'id': 'id',
            'in_queue_since': 'inQueueSince',
            'params': 'params',
            'stuck': 'stuck',
            'task': 'task',
            'url': 'url',
            'why': 'why',
            'cancelled': 'cancelled',
            'executable': 'executable'
        }

        self.__class = _class
        self._actions = actions
        self._blocked = blocked
        self._buildable = buildable
        self._id = id
        self._in_queue_since = in_queue_since
        self._params = params
        self._stuck = stuck
        self._task = task
        self._url = url
        self._why = why
        self._cancelled = cancelled
        self._executable = executable

    @classmethod
    def from_dict(cls, dikt) -> 'QueueLeftItem':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The QueueLeftItem of this QueueLeftItem.  # noqa: E501
        :rtype: QueueLeftItem
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this QueueLeftItem.


        :return: The _class of this QueueLeftItem.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this QueueLeftItem.


        :param _class: The _class of this QueueLeftItem.
        :type _class: str
        """

        self.__class = _class

    @property
    def actions(self):
        """Gets the actions of this QueueLeftItem.


        :return: The actions of this QueueLeftItem.
        :rtype: List[CauseAction]
        """
        return self._actions

    @actions.setter
    def actions(self, actions):
        """Sets the actions of this QueueLeftItem.


        :param actions: The actions of this QueueLeftItem.
        :type actions: List[CauseAction]
        """

        self._actions = actions

    @property
    def blocked(self):
        """Gets the blocked of this QueueLeftItem.


        :return: The blocked of this QueueLeftItem.
        :rtype: bool
        """
        return self._blocked

    @blocked.setter
    def blocked(self, blocked):
        """Sets the blocked of this QueueLeftItem.


        :param blocked: The blocked of this QueueLeftItem.
        :type blocked: bool
        """

        self._blocked = blocked

    @property
    def buildable(self):
        """Gets the buildable of this QueueLeftItem.


        :return: The buildable of this QueueLeftItem.
        :rtype: bool
        """
        return self._buildable

    @buildable.setter
    def buildable(self, buildable):
        """Sets the buildable of this QueueLeftItem.


        :param buildable: The buildable of this QueueLeftItem.
        :type buildable: bool
        """

        self._buildable = buildable

    @property
    def id(self):
        """Gets the id of this QueueLeftItem.


        :return: The id of this QueueLeftItem.
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this QueueLeftItem.


        :param id: The id of this QueueLeftItem.
        :type id: int
        """

        self._id = id

    @property
    def in_queue_since(self):
        """Gets the in_queue_since of this QueueLeftItem.


        :return: The in_queue_since of this QueueLeftItem.
        :rtype: int
        """
        return self._in_queue_since

    @in_queue_since.setter
    def in_queue_since(self, in_queue_since):
        """Sets the in_queue_since of this QueueLeftItem.


        :param in_queue_since: The in_queue_since of this QueueLeftItem.
        :type in_queue_since: int
        """

        self._in_queue_since = in_queue_since

    @property
    def params(self):
        """Gets the params of this QueueLeftItem.


        :return: The params of this QueueLeftItem.
        :rtype: str
        """
        return self._params

    @params.setter
    def params(self, params):
        """Sets the params of this QueueLeftItem.


        :param params: The params of this QueueLeftItem.
        :type params: str
        """

        self._params = params

    @property
    def stuck(self):
        """Gets the stuck of this QueueLeftItem.


        :return: The stuck of this QueueLeftItem.
        :rtype: bool
        """
        return self._stuck

    @stuck.setter
    def stuck(self, stuck):
        """Sets the stuck of this QueueLeftItem.


        :param stuck: The stuck of this QueueLeftItem.
        :type stuck: bool
        """

        self._stuck = stuck

    @property
    def task(self):
        """Gets the task of this QueueLeftItem.


        :return: The task of this QueueLeftItem.
        :rtype: FreeStyleProject
        """
        return self._task

    @task.setter
    def task(self, task):
        """Sets the task of this QueueLeftItem.


        :param task: The task of this QueueLeftItem.
        :type task: FreeStyleProject
        """

        self._task = task

    @property
    def url(self):
        """Gets the url of this QueueLeftItem.


        :return: The url of this QueueLeftItem.
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this QueueLeftItem.


        :param url: The url of this QueueLeftItem.
        :type url: str
        """

        self._url = url

    @property
    def why(self):
        """Gets the why of this QueueLeftItem.


        :return: The why of this QueueLeftItem.
        :rtype: str
        """
        return self._why

    @why.setter
    def why(self, why):
        """Sets the why of this QueueLeftItem.


        :param why: The why of this QueueLeftItem.
        :type why: str
        """

        self._why = why

    @property
    def cancelled(self):
        """Gets the cancelled of this QueueLeftItem.


        :return: The cancelled of this QueueLeftItem.
        :rtype: bool
        """
        return self._cancelled

    @cancelled.setter
    def cancelled(self, cancelled):
        """Sets the cancelled of this QueueLeftItem.


        :param cancelled: The cancelled of this QueueLeftItem.
        :type cancelled: bool
        """

        self._cancelled = cancelled

    @property
    def executable(self):
        """Gets the executable of this QueueLeftItem.


        :return: The executable of this QueueLeftItem.
        :rtype: FreeStyleBuild
        """
        return self._executable

    @executable.setter
    def executable(self, executable):
        """Sets the executable of this QueueLeftItem.


        :param executable: The executable of this QueueLeftItem.
        :type executable: FreeStyleBuild
        """

        self._executable = executable
