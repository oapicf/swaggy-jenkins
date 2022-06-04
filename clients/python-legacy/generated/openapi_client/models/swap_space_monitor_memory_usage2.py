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


class SwapSpaceMonitorMemoryUsage2(object):
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
        '_class': 'str',
        'available_physical_memory': 'int',
        'available_swap_space': 'int',
        'total_physical_memory': 'int',
        'total_swap_space': 'int'
    }

    attribute_map = {
        '_class': '_class',
        'available_physical_memory': 'availablePhysicalMemory',
        'available_swap_space': 'availableSwapSpace',
        'total_physical_memory': 'totalPhysicalMemory',
        'total_swap_space': 'totalSwapSpace'
    }

    def __init__(self, _class=None, available_physical_memory=None, available_swap_space=None, total_physical_memory=None, total_swap_space=None, local_vars_configuration=None):  # noqa: E501
        """SwapSpaceMonitorMemoryUsage2 - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self.__class = None
        self._available_physical_memory = None
        self._available_swap_space = None
        self._total_physical_memory = None
        self._total_swap_space = None
        self.discriminator = None

        if _class is not None:
            self._class = _class
        if available_physical_memory is not None:
            self.available_physical_memory = available_physical_memory
        if available_swap_space is not None:
            self.available_swap_space = available_swap_space
        if total_physical_memory is not None:
            self.total_physical_memory = total_physical_memory
        if total_swap_space is not None:
            self.total_swap_space = total_swap_space

    @property
    def _class(self):
        """Gets the _class of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501


        :return: The _class of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this SwapSpaceMonitorMemoryUsage2.


        :param _class: The _class of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :type _class: str
        """

        self.__class = _class

    @property
    def available_physical_memory(self):
        """Gets the available_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501


        :return: The available_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :rtype: int
        """
        return self._available_physical_memory

    @available_physical_memory.setter
    def available_physical_memory(self, available_physical_memory):
        """Sets the available_physical_memory of this SwapSpaceMonitorMemoryUsage2.


        :param available_physical_memory: The available_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :type available_physical_memory: int
        """

        self._available_physical_memory = available_physical_memory

    @property
    def available_swap_space(self):
        """Gets the available_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501


        :return: The available_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :rtype: int
        """
        return self._available_swap_space

    @available_swap_space.setter
    def available_swap_space(self, available_swap_space):
        """Sets the available_swap_space of this SwapSpaceMonitorMemoryUsage2.


        :param available_swap_space: The available_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :type available_swap_space: int
        """

        self._available_swap_space = available_swap_space

    @property
    def total_physical_memory(self):
        """Gets the total_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501


        :return: The total_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :rtype: int
        """
        return self._total_physical_memory

    @total_physical_memory.setter
    def total_physical_memory(self, total_physical_memory):
        """Sets the total_physical_memory of this SwapSpaceMonitorMemoryUsage2.


        :param total_physical_memory: The total_physical_memory of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :type total_physical_memory: int
        """

        self._total_physical_memory = total_physical_memory

    @property
    def total_swap_space(self):
        """Gets the total_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501


        :return: The total_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :rtype: int
        """
        return self._total_swap_space

    @total_swap_space.setter
    def total_swap_space(self, total_swap_space):
        """Sets the total_swap_space of this SwapSpaceMonitorMemoryUsage2.


        :param total_swap_space: The total_swap_space of this SwapSpaceMonitorMemoryUsage2.  # noqa: E501
        :type total_swap_space: int
        """

        self._total_swap_space = total_swap_space

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
        if not isinstance(other, SwapSpaceMonitorMemoryUsage2):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, SwapSpaceMonitorMemoryUsage2):
            return True

        return self.to_dict() != other.to_dict()
