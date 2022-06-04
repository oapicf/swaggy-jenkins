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


class DefaultCrumbIssuer(object):
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
        'crumb': 'str',
        'crumb_request_field': 'str'
    }

    attribute_map = {
        '_class': '_class',
        'crumb': 'crumb',
        'crumb_request_field': 'crumbRequestField'
    }

    def __init__(self, _class=None, crumb=None, crumb_request_field=None, local_vars_configuration=None):  # noqa: E501
        """DefaultCrumbIssuer - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self.__class = None
        self._crumb = None
        self._crumb_request_field = None
        self.discriminator = None

        if _class is not None:
            self._class = _class
        if crumb is not None:
            self.crumb = crumb
        if crumb_request_field is not None:
            self.crumb_request_field = crumb_request_field

    @property
    def _class(self):
        """Gets the _class of this DefaultCrumbIssuer.  # noqa: E501


        :return: The _class of this DefaultCrumbIssuer.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this DefaultCrumbIssuer.


        :param _class: The _class of this DefaultCrumbIssuer.  # noqa: E501
        :type _class: str
        """

        self.__class = _class

    @property
    def crumb(self):
        """Gets the crumb of this DefaultCrumbIssuer.  # noqa: E501


        :return: The crumb of this DefaultCrumbIssuer.  # noqa: E501
        :rtype: str
        """
        return self._crumb

    @crumb.setter
    def crumb(self, crumb):
        """Sets the crumb of this DefaultCrumbIssuer.


        :param crumb: The crumb of this DefaultCrumbIssuer.  # noqa: E501
        :type crumb: str
        """

        self._crumb = crumb

    @property
    def crumb_request_field(self):
        """Gets the crumb_request_field of this DefaultCrumbIssuer.  # noqa: E501


        :return: The crumb_request_field of this DefaultCrumbIssuer.  # noqa: E501
        :rtype: str
        """
        return self._crumb_request_field

    @crumb_request_field.setter
    def crumb_request_field(self, crumb_request_field):
        """Sets the crumb_request_field of this DefaultCrumbIssuer.


        :param crumb_request_field: The crumb_request_field of this DefaultCrumbIssuer.  # noqa: E501
        :type crumb_request_field: str
        """

        self._crumb_request_field = crumb_request_field

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
        if not isinstance(other, DefaultCrumbIssuer):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, DefaultCrumbIssuer):
            return True

        return self.to_dict() != other.to_dict()
