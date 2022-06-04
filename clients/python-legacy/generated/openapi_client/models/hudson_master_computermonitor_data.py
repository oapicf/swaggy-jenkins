# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification  # noqa: E501

    The version of the OpenAPI document: 1.5.1-pre.0
    Contact: blah@cliffano.com
    Generated by: https://openapi-generator.tech
"""


try:
    from inspect import getfullargspec
except ImportError:
    from inspect import getargspec as getfullargspec
import pprint
import re  # noqa: F401
import six

from openapi_client.configuration import Configuration


class HudsonMasterComputermonitorData(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'hudson_node_monitors_swap_space_monitor': 'SwapSpaceMonitorMemoryUsage2',
        'hudson_node_monitors_temporary_space_monitor': 'DiskSpaceMonitorDescriptorDiskSpace',
        'hudson_node_monitors_disk_space_monitor': 'DiskSpaceMonitorDescriptorDiskSpace',
        'hudson_node_monitors_architecture_monitor': 'str',
        'hudson_node_monitors_response_time_monitor': 'ResponseTimeMonitorData',
        'hudson_node_monitors_clock_monitor': 'ClockDifference',
        '_class': 'str'
    }

    attribute_map = {
        'hudson_node_monitors_swap_space_monitor': 'hudson.node_monitors.SwapSpaceMonitor',
        'hudson_node_monitors_temporary_space_monitor': 'hudson.node_monitors.TemporarySpaceMonitor',
        'hudson_node_monitors_disk_space_monitor': 'hudson.node_monitors.DiskSpaceMonitor',
        'hudson_node_monitors_architecture_monitor': 'hudson.node_monitors.ArchitectureMonitor',
        'hudson_node_monitors_response_time_monitor': 'hudson.node_monitors.ResponseTimeMonitor',
        'hudson_node_monitors_clock_monitor': 'hudson.node_monitors.ClockMonitor',
        '_class': '_class'
    }

    def __init__(self, hudson_node_monitors_swap_space_monitor=None, hudson_node_monitors_temporary_space_monitor=None, hudson_node_monitors_disk_space_monitor=None, hudson_node_monitors_architecture_monitor=None, hudson_node_monitors_response_time_monitor=None, hudson_node_monitors_clock_monitor=None, _class=None, local_vars_configuration=None):  # noqa: E501
        """HudsonMasterComputermonitorData - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self._hudson_node_monitors_swap_space_monitor = None
        self._hudson_node_monitors_temporary_space_monitor = None
        self._hudson_node_monitors_disk_space_monitor = None
        self._hudson_node_monitors_architecture_monitor = None
        self._hudson_node_monitors_response_time_monitor = None
        self._hudson_node_monitors_clock_monitor = None
        self.__class = None
        self.discriminator = None

        if hudson_node_monitors_swap_space_monitor is not None:
            self.hudson_node_monitors_swap_space_monitor = hudson_node_monitors_swap_space_monitor
        if hudson_node_monitors_temporary_space_monitor is not None:
            self.hudson_node_monitors_temporary_space_monitor = hudson_node_monitors_temporary_space_monitor
        if hudson_node_monitors_disk_space_monitor is not None:
            self.hudson_node_monitors_disk_space_monitor = hudson_node_monitors_disk_space_monitor
        if hudson_node_monitors_architecture_monitor is not None:
            self.hudson_node_monitors_architecture_monitor = hudson_node_monitors_architecture_monitor
        if hudson_node_monitors_response_time_monitor is not None:
            self.hudson_node_monitors_response_time_monitor = hudson_node_monitors_response_time_monitor
        if hudson_node_monitors_clock_monitor is not None:
            self.hudson_node_monitors_clock_monitor = hudson_node_monitors_clock_monitor
        if _class is not None:
            self._class = _class

    @property
    def hudson_node_monitors_swap_space_monitor(self):
        """Gets the hudson_node_monitors_swap_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_swap_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: SwapSpaceMonitorMemoryUsage2
        """
        return self._hudson_node_monitors_swap_space_monitor

    @hudson_node_monitors_swap_space_monitor.setter
    def hudson_node_monitors_swap_space_monitor(self, hudson_node_monitors_swap_space_monitor):
        """Sets the hudson_node_monitors_swap_space_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_swap_space_monitor: The hudson_node_monitors_swap_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_swap_space_monitor: SwapSpaceMonitorMemoryUsage2
        """

        self._hudson_node_monitors_swap_space_monitor = hudson_node_monitors_swap_space_monitor

    @property
    def hudson_node_monitors_temporary_space_monitor(self):
        """Gets the hudson_node_monitors_temporary_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_temporary_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: DiskSpaceMonitorDescriptorDiskSpace
        """
        return self._hudson_node_monitors_temporary_space_monitor

    @hudson_node_monitors_temporary_space_monitor.setter
    def hudson_node_monitors_temporary_space_monitor(self, hudson_node_monitors_temporary_space_monitor):
        """Sets the hudson_node_monitors_temporary_space_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_temporary_space_monitor: The hudson_node_monitors_temporary_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_temporary_space_monitor: DiskSpaceMonitorDescriptorDiskSpace
        """

        self._hudson_node_monitors_temporary_space_monitor = hudson_node_monitors_temporary_space_monitor

    @property
    def hudson_node_monitors_disk_space_monitor(self):
        """Gets the hudson_node_monitors_disk_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_disk_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: DiskSpaceMonitorDescriptorDiskSpace
        """
        return self._hudson_node_monitors_disk_space_monitor

    @hudson_node_monitors_disk_space_monitor.setter
    def hudson_node_monitors_disk_space_monitor(self, hudson_node_monitors_disk_space_monitor):
        """Sets the hudson_node_monitors_disk_space_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_disk_space_monitor: The hudson_node_monitors_disk_space_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_disk_space_monitor: DiskSpaceMonitorDescriptorDiskSpace
        """

        self._hudson_node_monitors_disk_space_monitor = hudson_node_monitors_disk_space_monitor

    @property
    def hudson_node_monitors_architecture_monitor(self):
        """Gets the hudson_node_monitors_architecture_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_architecture_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: str
        """
        return self._hudson_node_monitors_architecture_monitor

    @hudson_node_monitors_architecture_monitor.setter
    def hudson_node_monitors_architecture_monitor(self, hudson_node_monitors_architecture_monitor):
        """Sets the hudson_node_monitors_architecture_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_architecture_monitor: The hudson_node_monitors_architecture_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_architecture_monitor: str
        """

        self._hudson_node_monitors_architecture_monitor = hudson_node_monitors_architecture_monitor

    @property
    def hudson_node_monitors_response_time_monitor(self):
        """Gets the hudson_node_monitors_response_time_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_response_time_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: ResponseTimeMonitorData
        """
        return self._hudson_node_monitors_response_time_monitor

    @hudson_node_monitors_response_time_monitor.setter
    def hudson_node_monitors_response_time_monitor(self, hudson_node_monitors_response_time_monitor):
        """Sets the hudson_node_monitors_response_time_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_response_time_monitor: The hudson_node_monitors_response_time_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_response_time_monitor: ResponseTimeMonitorData
        """

        self._hudson_node_monitors_response_time_monitor = hudson_node_monitors_response_time_monitor

    @property
    def hudson_node_monitors_clock_monitor(self):
        """Gets the hudson_node_monitors_clock_monitor of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The hudson_node_monitors_clock_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: ClockDifference
        """
        return self._hudson_node_monitors_clock_monitor

    @hudson_node_monitors_clock_monitor.setter
    def hudson_node_monitors_clock_monitor(self, hudson_node_monitors_clock_monitor):
        """Sets the hudson_node_monitors_clock_monitor of this HudsonMasterComputermonitorData.


        :param hudson_node_monitors_clock_monitor: The hudson_node_monitors_clock_monitor of this HudsonMasterComputermonitorData.  # noqa: E501
        :type hudson_node_monitors_clock_monitor: ClockDifference
        """

        self._hudson_node_monitors_clock_monitor = hudson_node_monitors_clock_monitor

    @property
    def _class(self):
        """Gets the _class of this HudsonMasterComputermonitorData.  # noqa: E501


        :return: The _class of this HudsonMasterComputermonitorData.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this HudsonMasterComputermonitorData.


        :param _class: The _class of this HudsonMasterComputermonitorData.  # noqa: E501
        :type _class: str
        """

        self.__class = _class

    def to_dict(self, serialize=False):
        """Returns the model properties as a dict"""
        result = {}

        def convert(x):
            if hasattr(x, "to_dict"):
                args = getfullargspec(x.to_dict).args
                if len(args) == 1:
                    return x.to_dict()
                else:
                    return x.to_dict(serialize)
            else:
                return x

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            attr = self.attribute_map.get(attr, attr) if serialize else attr
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: convert(x),
                    value
                ))
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], convert(item[1])),
                    value.items()
                ))
            else:
                result[attr] = convert(value)

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, HudsonMasterComputermonitorData):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, HudsonMasterComputermonitorData):
            return True

        return self.to_dict() != other.to_dict()
