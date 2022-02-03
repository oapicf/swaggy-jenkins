# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.hudson_master_computerexecutors import HudsonMasterComputerexecutors
from openapi_server.models.hudson_master_computermonitor_data import HudsonMasterComputermonitorData
from openapi_server.models.label1 import Label1
from openapi_server import util

from openapi_server.models.hudson_master_computerexecutors import HudsonMasterComputerexecutors  # noqa: E501
from openapi_server.models.hudson_master_computermonitor_data import HudsonMasterComputermonitorData  # noqa: E501
from openapi_server.models.label1 import Label1  # noqa: E501

class HudsonMasterComputer(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, display_name=None, executors=None, icon=None, icon_class_name=None, idle=None, jnlp_agent=None, launch_supported=None, load_statistics=None, manual_launch_allowed=None, monitor_data=None, num_executors=None, offline=None, offline_cause=None, offline_cause_reason=None, temporarily_offline=None):  # noqa: E501
        """HudsonMasterComputer - a model defined in OpenAPI

        :param _class: The _class of this HudsonMasterComputer.  # noqa: E501
        :type _class: str
        :param display_name: The display_name of this HudsonMasterComputer.  # noqa: E501
        :type display_name: str
        :param executors: The executors of this HudsonMasterComputer.  # noqa: E501
        :type executors: List[HudsonMasterComputerexecutors]
        :param icon: The icon of this HudsonMasterComputer.  # noqa: E501
        :type icon: str
        :param icon_class_name: The icon_class_name of this HudsonMasterComputer.  # noqa: E501
        :type icon_class_name: str
        :param idle: The idle of this HudsonMasterComputer.  # noqa: E501
        :type idle: bool
        :param jnlp_agent: The jnlp_agent of this HudsonMasterComputer.  # noqa: E501
        :type jnlp_agent: bool
        :param launch_supported: The launch_supported of this HudsonMasterComputer.  # noqa: E501
        :type launch_supported: bool
        :param load_statistics: The load_statistics of this HudsonMasterComputer.  # noqa: E501
        :type load_statistics: Label1
        :param manual_launch_allowed: The manual_launch_allowed of this HudsonMasterComputer.  # noqa: E501
        :type manual_launch_allowed: bool
        :param monitor_data: The monitor_data of this HudsonMasterComputer.  # noqa: E501
        :type monitor_data: HudsonMasterComputermonitorData
        :param num_executors: The num_executors of this HudsonMasterComputer.  # noqa: E501
        :type num_executors: int
        :param offline: The offline of this HudsonMasterComputer.  # noqa: E501
        :type offline: bool
        :param offline_cause: The offline_cause of this HudsonMasterComputer.  # noqa: E501
        :type offline_cause: str
        :param offline_cause_reason: The offline_cause_reason of this HudsonMasterComputer.  # noqa: E501
        :type offline_cause_reason: str
        :param temporarily_offline: The temporarily_offline of this HudsonMasterComputer.  # noqa: E501
        :type temporarily_offline: bool
        """
        self.openapi_types = {
            '_class': str,
            'display_name': str,
            'executors': List[HudsonMasterComputerexecutors],
            'icon': str,
            'icon_class_name': str,
            'idle': bool,
            'jnlp_agent': bool,
            'launch_supported': bool,
            'load_statistics': Label1,
            'manual_launch_allowed': bool,
            'monitor_data': HudsonMasterComputermonitorData,
            'num_executors': int,
            'offline': bool,
            'offline_cause': str,
            'offline_cause_reason': str,
            'temporarily_offline': bool
        }

        self.attribute_map = {
            '_class': '_class',
            'display_name': 'displayName',
            'executors': 'executors',
            'icon': 'icon',
            'icon_class_name': 'iconClassName',
            'idle': 'idle',
            'jnlp_agent': 'jnlpAgent',
            'launch_supported': 'launchSupported',
            'load_statistics': 'loadStatistics',
            'manual_launch_allowed': 'manualLaunchAllowed',
            'monitor_data': 'monitorData',
            'num_executors': 'numExecutors',
            'offline': 'offline',
            'offline_cause': 'offlineCause',
            'offline_cause_reason': 'offlineCauseReason',
            'temporarily_offline': 'temporarilyOffline'
        }

        self.__class = _class
        self._display_name = display_name
        self._executors = executors
        self._icon = icon
        self._icon_class_name = icon_class_name
        self._idle = idle
        self._jnlp_agent = jnlp_agent
        self._launch_supported = launch_supported
        self._load_statistics = load_statistics
        self._manual_launch_allowed = manual_launch_allowed
        self._monitor_data = monitor_data
        self._num_executors = num_executors
        self._offline = offline
        self._offline_cause = offline_cause
        self._offline_cause_reason = offline_cause_reason
        self._temporarily_offline = temporarily_offline

    @classmethod
    def from_dict(cls, dikt) -> 'HudsonMasterComputer':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The HudsonMasterComputer of this HudsonMasterComputer.  # noqa: E501
        :rtype: HudsonMasterComputer
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this HudsonMasterComputer.


        :return: The _class of this HudsonMasterComputer.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this HudsonMasterComputer.


        :param _class: The _class of this HudsonMasterComputer.
        :type _class: str
        """

        self.__class = _class

    @property
    def display_name(self):
        """Gets the display_name of this HudsonMasterComputer.


        :return: The display_name of this HudsonMasterComputer.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this HudsonMasterComputer.


        :param display_name: The display_name of this HudsonMasterComputer.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def executors(self):
        """Gets the executors of this HudsonMasterComputer.


        :return: The executors of this HudsonMasterComputer.
        :rtype: List[HudsonMasterComputerexecutors]
        """
        return self._executors

    @executors.setter
    def executors(self, executors):
        """Sets the executors of this HudsonMasterComputer.


        :param executors: The executors of this HudsonMasterComputer.
        :type executors: List[HudsonMasterComputerexecutors]
        """

        self._executors = executors

    @property
    def icon(self):
        """Gets the icon of this HudsonMasterComputer.


        :return: The icon of this HudsonMasterComputer.
        :rtype: str
        """
        return self._icon

    @icon.setter
    def icon(self, icon):
        """Sets the icon of this HudsonMasterComputer.


        :param icon: The icon of this HudsonMasterComputer.
        :type icon: str
        """

        self._icon = icon

    @property
    def icon_class_name(self):
        """Gets the icon_class_name of this HudsonMasterComputer.


        :return: The icon_class_name of this HudsonMasterComputer.
        :rtype: str
        """
        return self._icon_class_name

    @icon_class_name.setter
    def icon_class_name(self, icon_class_name):
        """Sets the icon_class_name of this HudsonMasterComputer.


        :param icon_class_name: The icon_class_name of this HudsonMasterComputer.
        :type icon_class_name: str
        """

        self._icon_class_name = icon_class_name

    @property
    def idle(self):
        """Gets the idle of this HudsonMasterComputer.


        :return: The idle of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._idle

    @idle.setter
    def idle(self, idle):
        """Sets the idle of this HudsonMasterComputer.


        :param idle: The idle of this HudsonMasterComputer.
        :type idle: bool
        """

        self._idle = idle

    @property
    def jnlp_agent(self):
        """Gets the jnlp_agent of this HudsonMasterComputer.


        :return: The jnlp_agent of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._jnlp_agent

    @jnlp_agent.setter
    def jnlp_agent(self, jnlp_agent):
        """Sets the jnlp_agent of this HudsonMasterComputer.


        :param jnlp_agent: The jnlp_agent of this HudsonMasterComputer.
        :type jnlp_agent: bool
        """

        self._jnlp_agent = jnlp_agent

    @property
    def launch_supported(self):
        """Gets the launch_supported of this HudsonMasterComputer.


        :return: The launch_supported of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._launch_supported

    @launch_supported.setter
    def launch_supported(self, launch_supported):
        """Sets the launch_supported of this HudsonMasterComputer.


        :param launch_supported: The launch_supported of this HudsonMasterComputer.
        :type launch_supported: bool
        """

        self._launch_supported = launch_supported

    @property
    def load_statistics(self):
        """Gets the load_statistics of this HudsonMasterComputer.


        :return: The load_statistics of this HudsonMasterComputer.
        :rtype: Label1
        """
        return self._load_statistics

    @load_statistics.setter
    def load_statistics(self, load_statistics):
        """Sets the load_statistics of this HudsonMasterComputer.


        :param load_statistics: The load_statistics of this HudsonMasterComputer.
        :type load_statistics: Label1
        """

        self._load_statistics = load_statistics

    @property
    def manual_launch_allowed(self):
        """Gets the manual_launch_allowed of this HudsonMasterComputer.


        :return: The manual_launch_allowed of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._manual_launch_allowed

    @manual_launch_allowed.setter
    def manual_launch_allowed(self, manual_launch_allowed):
        """Sets the manual_launch_allowed of this HudsonMasterComputer.


        :param manual_launch_allowed: The manual_launch_allowed of this HudsonMasterComputer.
        :type manual_launch_allowed: bool
        """

        self._manual_launch_allowed = manual_launch_allowed

    @property
    def monitor_data(self):
        """Gets the monitor_data of this HudsonMasterComputer.


        :return: The monitor_data of this HudsonMasterComputer.
        :rtype: HudsonMasterComputermonitorData
        """
        return self._monitor_data

    @monitor_data.setter
    def monitor_data(self, monitor_data):
        """Sets the monitor_data of this HudsonMasterComputer.


        :param monitor_data: The monitor_data of this HudsonMasterComputer.
        :type monitor_data: HudsonMasterComputermonitorData
        """

        self._monitor_data = monitor_data

    @property
    def num_executors(self):
        """Gets the num_executors of this HudsonMasterComputer.


        :return: The num_executors of this HudsonMasterComputer.
        :rtype: int
        """
        return self._num_executors

    @num_executors.setter
    def num_executors(self, num_executors):
        """Sets the num_executors of this HudsonMasterComputer.


        :param num_executors: The num_executors of this HudsonMasterComputer.
        :type num_executors: int
        """

        self._num_executors = num_executors

    @property
    def offline(self):
        """Gets the offline of this HudsonMasterComputer.


        :return: The offline of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._offline

    @offline.setter
    def offline(self, offline):
        """Sets the offline of this HudsonMasterComputer.


        :param offline: The offline of this HudsonMasterComputer.
        :type offline: bool
        """

        self._offline = offline

    @property
    def offline_cause(self):
        """Gets the offline_cause of this HudsonMasterComputer.


        :return: The offline_cause of this HudsonMasterComputer.
        :rtype: str
        """
        return self._offline_cause

    @offline_cause.setter
    def offline_cause(self, offline_cause):
        """Sets the offline_cause of this HudsonMasterComputer.


        :param offline_cause: The offline_cause of this HudsonMasterComputer.
        :type offline_cause: str
        """

        self._offline_cause = offline_cause

    @property
    def offline_cause_reason(self):
        """Gets the offline_cause_reason of this HudsonMasterComputer.


        :return: The offline_cause_reason of this HudsonMasterComputer.
        :rtype: str
        """
        return self._offline_cause_reason

    @offline_cause_reason.setter
    def offline_cause_reason(self, offline_cause_reason):
        """Sets the offline_cause_reason of this HudsonMasterComputer.


        :param offline_cause_reason: The offline_cause_reason of this HudsonMasterComputer.
        :type offline_cause_reason: str
        """

        self._offline_cause_reason = offline_cause_reason

    @property
    def temporarily_offline(self):
        """Gets the temporarily_offline of this HudsonMasterComputer.


        :return: The temporarily_offline of this HudsonMasterComputer.
        :rtype: bool
        """
        return self._temporarily_offline

    @temporarily_offline.setter
    def temporarily_offline(self, temporarily_offline):
        """Sets the temporarily_offline of this HudsonMasterComputer.


        :param temporarily_offline: The temporarily_offline of this HudsonMasterComputer.
        :type temporarily_offline: bool
        """

        self._temporarily_offline = temporarily_offline
