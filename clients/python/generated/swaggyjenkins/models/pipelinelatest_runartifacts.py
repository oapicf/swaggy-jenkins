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


class PipelinelatestRunartifacts(object):
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
        'name': 'str',
        'size': 'int',
        'url': 'str',
        '_class': 'str'
    }

    attribute_map = {
        'name': 'name',
        'size': 'size',
        'url': 'url',
        '_class': '_class'
    }

    def __init__(self, name=None, size=None, url=None, _class=None):  # noqa: E501
        """PipelinelatestRunartifacts - a model defined in OpenAPI"""  # noqa: E501

        self._name = None
        self._size = None
        self._url = None
        self.__class = None
        self.discriminator = None

        if name is not None:
            self.name = name
        if size is not None:
            self.size = size
        if url is not None:
            self.url = url
        if _class is not None:
            self._class = _class

    @property
    def name(self):
        """Gets the name of this PipelinelatestRunartifacts.  # noqa: E501


        :return: The name of this PipelinelatestRunartifacts.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this PipelinelatestRunartifacts.


        :param name: The name of this PipelinelatestRunartifacts.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def size(self):
        """Gets the size of this PipelinelatestRunartifacts.  # noqa: E501


        :return: The size of this PipelinelatestRunartifacts.  # noqa: E501
        :rtype: int
        """
        return self._size

    @size.setter
    def size(self, size):
        """Sets the size of this PipelinelatestRunartifacts.


        :param size: The size of this PipelinelatestRunartifacts.  # noqa: E501
        :type: int
        """

        self._size = size

    @property
    def url(self):
        """Gets the url of this PipelinelatestRunartifacts.  # noqa: E501


        :return: The url of this PipelinelatestRunartifacts.  # noqa: E501
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this PipelinelatestRunartifacts.


        :param url: The url of this PipelinelatestRunartifacts.  # noqa: E501
        :type: str
        """

        self._url = url

    @property
    def _class(self):
        """Gets the _class of this PipelinelatestRunartifacts.  # noqa: E501


        :return: The _class of this PipelinelatestRunartifacts.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this PipelinelatestRunartifacts.


        :param _class: The _class of this PipelinelatestRunartifacts.  # noqa: E501
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
        if not isinstance(other, PipelinelatestRunartifacts):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
