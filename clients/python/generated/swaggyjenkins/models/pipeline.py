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


class Pipeline(object):
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
        'organization': 'str',
        'name': 'str',
        'display_name': 'str',
        'full_name': 'str',
        'weather_score': 'int',
        'estimated_duration_in_millis': 'int',
        'latest_run': 'PipelinelatestRun'
    }

    attribute_map = {
        '_class': '_class',
        'organization': 'organization',
        'name': 'name',
        'display_name': 'displayName',
        'full_name': 'fullName',
        'weather_score': 'weatherScore',
        'estimated_duration_in_millis': 'estimatedDurationInMillis',
        'latest_run': 'latestRun'
    }

    def __init__(self, _class=None, organization=None, name=None, display_name=None, full_name=None, weather_score=None, estimated_duration_in_millis=None, latest_run=None):  # noqa: E501
        """Pipeline - a model defined in OpenAPI"""  # noqa: E501

        self.__class = None
        self._organization = None
        self._name = None
        self._display_name = None
        self._full_name = None
        self._weather_score = None
        self._estimated_duration_in_millis = None
        self._latest_run = None
        self.discriminator = None

        if _class is not None:
            self._class = _class
        if organization is not None:
            self.organization = organization
        if name is not None:
            self.name = name
        if display_name is not None:
            self.display_name = display_name
        if full_name is not None:
            self.full_name = full_name
        if weather_score is not None:
            self.weather_score = weather_score
        if estimated_duration_in_millis is not None:
            self.estimated_duration_in_millis = estimated_duration_in_millis
        if latest_run is not None:
            self.latest_run = latest_run

    @property
    def _class(self):
        """Gets the _class of this Pipeline.  # noqa: E501


        :return: The _class of this Pipeline.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this Pipeline.


        :param _class: The _class of this Pipeline.  # noqa: E501
        :type: str
        """

        self.__class = _class

    @property
    def organization(self):
        """Gets the organization of this Pipeline.  # noqa: E501


        :return: The organization of this Pipeline.  # noqa: E501
        :rtype: str
        """
        return self._organization

    @organization.setter
    def organization(self, organization):
        """Sets the organization of this Pipeline.


        :param organization: The organization of this Pipeline.  # noqa: E501
        :type: str
        """

        self._organization = organization

    @property
    def name(self):
        """Gets the name of this Pipeline.  # noqa: E501


        :return: The name of this Pipeline.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this Pipeline.


        :param name: The name of this Pipeline.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def display_name(self):
        """Gets the display_name of this Pipeline.  # noqa: E501


        :return: The display_name of this Pipeline.  # noqa: E501
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this Pipeline.


        :param display_name: The display_name of this Pipeline.  # noqa: E501
        :type: str
        """

        self._display_name = display_name

    @property
    def full_name(self):
        """Gets the full_name of this Pipeline.  # noqa: E501


        :return: The full_name of this Pipeline.  # noqa: E501
        :rtype: str
        """
        return self._full_name

    @full_name.setter
    def full_name(self, full_name):
        """Sets the full_name of this Pipeline.


        :param full_name: The full_name of this Pipeline.  # noqa: E501
        :type: str
        """

        self._full_name = full_name

    @property
    def weather_score(self):
        """Gets the weather_score of this Pipeline.  # noqa: E501


        :return: The weather_score of this Pipeline.  # noqa: E501
        :rtype: int
        """
        return self._weather_score

    @weather_score.setter
    def weather_score(self, weather_score):
        """Sets the weather_score of this Pipeline.


        :param weather_score: The weather_score of this Pipeline.  # noqa: E501
        :type: int
        """

        self._weather_score = weather_score

    @property
    def estimated_duration_in_millis(self):
        """Gets the estimated_duration_in_millis of this Pipeline.  # noqa: E501


        :return: The estimated_duration_in_millis of this Pipeline.  # noqa: E501
        :rtype: int
        """
        return self._estimated_duration_in_millis

    @estimated_duration_in_millis.setter
    def estimated_duration_in_millis(self, estimated_duration_in_millis):
        """Sets the estimated_duration_in_millis of this Pipeline.


        :param estimated_duration_in_millis: The estimated_duration_in_millis of this Pipeline.  # noqa: E501
        :type: int
        """

        self._estimated_duration_in_millis = estimated_duration_in_millis

    @property
    def latest_run(self):
        """Gets the latest_run of this Pipeline.  # noqa: E501


        :return: The latest_run of this Pipeline.  # noqa: E501
        :rtype: PipelinelatestRun
        """
        return self._latest_run

    @latest_run.setter
    def latest_run(self, latest_run):
        """Sets the latest_run of this Pipeline.


        :param latest_run: The latest_run of this Pipeline.  # noqa: E501
        :type: PipelinelatestRun
        """

        self._latest_run = latest_run

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
        if not isinstance(other, Pipeline):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
