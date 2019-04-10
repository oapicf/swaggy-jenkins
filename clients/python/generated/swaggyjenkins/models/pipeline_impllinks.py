# coding: utf-8

"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification  # noqa: E501

    OpenAPI spec version: 1.1.1
    Contact: blah@cliffano.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class PipelineImpllinks(object):
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
        'runs': 'Link',
        '_self': 'Link',
        'queue': 'Link',
        'actions': 'Link',
        '_class': 'str'
    }

    attribute_map = {
        'runs': 'runs',
        '_self': 'self',
        'queue': 'queue',
        'actions': 'actions',
        '_class': '_class'
    }

    def __init__(self, runs=None, _self=None, queue=None, actions=None, _class=None):  # noqa: E501
        """PipelineImpllinks - a model defined in OpenAPI"""  # noqa: E501

        self._runs = None
        self.__self = None
        self._queue = None
        self._actions = None
        self.__class = None
        self.discriminator = None

        if runs is not None:
            self.runs = runs
        if _self is not None:
            self._self = _self
        if queue is not None:
            self.queue = queue
        if actions is not None:
            self.actions = actions
        if _class is not None:
            self._class = _class

    @property
    def runs(self):
        """Gets the runs of this PipelineImpllinks.  # noqa: E501


        :return: The runs of this PipelineImpllinks.  # noqa: E501
        :rtype: Link
        """
        return self._runs

    @runs.setter
    def runs(self, runs):
        """Sets the runs of this PipelineImpllinks.


        :param runs: The runs of this PipelineImpllinks.  # noqa: E501
        :type: Link
        """

        self._runs = runs

    @property
    def _self(self):
        """Gets the _self of this PipelineImpllinks.  # noqa: E501


        :return: The _self of this PipelineImpllinks.  # noqa: E501
        :rtype: Link
        """
        return self.__self

    @_self.setter
    def _self(self, _self):
        """Sets the _self of this PipelineImpllinks.


        :param _self: The _self of this PipelineImpllinks.  # noqa: E501
        :type: Link
        """

        self.__self = _self

    @property
    def queue(self):
        """Gets the queue of this PipelineImpllinks.  # noqa: E501


        :return: The queue of this PipelineImpllinks.  # noqa: E501
        :rtype: Link
        """
        return self._queue

    @queue.setter
    def queue(self, queue):
        """Sets the queue of this PipelineImpllinks.


        :param queue: The queue of this PipelineImpllinks.  # noqa: E501
        :type: Link
        """

        self._queue = queue

    @property
    def actions(self):
        """Gets the actions of this PipelineImpllinks.  # noqa: E501


        :return: The actions of this PipelineImpllinks.  # noqa: E501
        :rtype: Link
        """
        return self._actions

    @actions.setter
    def actions(self, actions):
        """Sets the actions of this PipelineImpllinks.


        :param actions: The actions of this PipelineImpllinks.  # noqa: E501
        :type: Link
        """

        self._actions = actions

    @property
    def _class(self):
        """Gets the _class of this PipelineImpllinks.  # noqa: E501


        :return: The _class of this PipelineImpllinks.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this PipelineImpllinks.


        :param _class: The _class of this PipelineImpllinks.  # noqa: E501
        :type: str
        """

        self.__class = _class

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, PipelineImpllinks):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
