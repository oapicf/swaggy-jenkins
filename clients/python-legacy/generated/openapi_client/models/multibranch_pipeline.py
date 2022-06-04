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


class MultibranchPipeline(object):
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
        'display_name': 'str',
        'estimated_duration_in_millis': 'int',
        'latest_run': 'str',
        'name': 'str',
        'organization': 'str',
        'weather_score': 'int',
        'branch_names': 'list[str]',
        'number_of_failing_branches': 'int',
        'number_of_failing_pull_requests': 'int',
        'number_of_successful_branches': 'int',
        'number_of_successful_pull_requests': 'int',
        'total_number_of_branches': 'int',
        'total_number_of_pull_requests': 'int',
        '_class': 'str'
    }

    attribute_map = {
        'display_name': 'displayName',
        'estimated_duration_in_millis': 'estimatedDurationInMillis',
        'latest_run': 'latestRun',
        'name': 'name',
        'organization': 'organization',
        'weather_score': 'weatherScore',
        'branch_names': 'branchNames',
        'number_of_failing_branches': 'numberOfFailingBranches',
        'number_of_failing_pull_requests': 'numberOfFailingPullRequests',
        'number_of_successful_branches': 'numberOfSuccessfulBranches',
        'number_of_successful_pull_requests': 'numberOfSuccessfulPullRequests',
        'total_number_of_branches': 'totalNumberOfBranches',
        'total_number_of_pull_requests': 'totalNumberOfPullRequests',
        '_class': '_class'
    }

    def __init__(self, display_name=None, estimated_duration_in_millis=None, latest_run=None, name=None, organization=None, weather_score=None, branch_names=None, number_of_failing_branches=None, number_of_failing_pull_requests=None, number_of_successful_branches=None, number_of_successful_pull_requests=None, total_number_of_branches=None, total_number_of_pull_requests=None, _class=None, local_vars_configuration=None):  # noqa: E501
        """MultibranchPipeline - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self._display_name = None
        self._estimated_duration_in_millis = None
        self._latest_run = None
        self._name = None
        self._organization = None
        self._weather_score = None
        self._branch_names = None
        self._number_of_failing_branches = None
        self._number_of_failing_pull_requests = None
        self._number_of_successful_branches = None
        self._number_of_successful_pull_requests = None
        self._total_number_of_branches = None
        self._total_number_of_pull_requests = None
        self.__class = None
        self.discriminator = None

        if display_name is not None:
            self.display_name = display_name
        if estimated_duration_in_millis is not None:
            self.estimated_duration_in_millis = estimated_duration_in_millis
        if latest_run is not None:
            self.latest_run = latest_run
        if name is not None:
            self.name = name
        if organization is not None:
            self.organization = organization
        if weather_score is not None:
            self.weather_score = weather_score
        if branch_names is not None:
            self.branch_names = branch_names
        if number_of_failing_branches is not None:
            self.number_of_failing_branches = number_of_failing_branches
        if number_of_failing_pull_requests is not None:
            self.number_of_failing_pull_requests = number_of_failing_pull_requests
        if number_of_successful_branches is not None:
            self.number_of_successful_branches = number_of_successful_branches
        if number_of_successful_pull_requests is not None:
            self.number_of_successful_pull_requests = number_of_successful_pull_requests
        if total_number_of_branches is not None:
            self.total_number_of_branches = total_number_of_branches
        if total_number_of_pull_requests is not None:
            self.total_number_of_pull_requests = total_number_of_pull_requests
        if _class is not None:
            self._class = _class

    @property
    def display_name(self):
        """Gets the display_name of this MultibranchPipeline.  # noqa: E501


        :return: The display_name of this MultibranchPipeline.  # noqa: E501
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this MultibranchPipeline.


        :param display_name: The display_name of this MultibranchPipeline.  # noqa: E501
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def estimated_duration_in_millis(self):
        """Gets the estimated_duration_in_millis of this MultibranchPipeline.  # noqa: E501


        :return: The estimated_duration_in_millis of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._estimated_duration_in_millis

    @estimated_duration_in_millis.setter
    def estimated_duration_in_millis(self, estimated_duration_in_millis):
        """Sets the estimated_duration_in_millis of this MultibranchPipeline.


        :param estimated_duration_in_millis: The estimated_duration_in_millis of this MultibranchPipeline.  # noqa: E501
        :type estimated_duration_in_millis: int
        """

        self._estimated_duration_in_millis = estimated_duration_in_millis

    @property
    def latest_run(self):
        """Gets the latest_run of this MultibranchPipeline.  # noqa: E501


        :return: The latest_run of this MultibranchPipeline.  # noqa: E501
        :rtype: str
        """
        return self._latest_run

    @latest_run.setter
    def latest_run(self, latest_run):
        """Sets the latest_run of this MultibranchPipeline.


        :param latest_run: The latest_run of this MultibranchPipeline.  # noqa: E501
        :type latest_run: str
        """

        self._latest_run = latest_run

    @property
    def name(self):
        """Gets the name of this MultibranchPipeline.  # noqa: E501


        :return: The name of this MultibranchPipeline.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this MultibranchPipeline.


        :param name: The name of this MultibranchPipeline.  # noqa: E501
        :type name: str
        """

        self._name = name

    @property
    def organization(self):
        """Gets the organization of this MultibranchPipeline.  # noqa: E501


        :return: The organization of this MultibranchPipeline.  # noqa: E501
        :rtype: str
        """
        return self._organization

    @organization.setter
    def organization(self, organization):
        """Sets the organization of this MultibranchPipeline.


        :param organization: The organization of this MultibranchPipeline.  # noqa: E501
        :type organization: str
        """

        self._organization = organization

    @property
    def weather_score(self):
        """Gets the weather_score of this MultibranchPipeline.  # noqa: E501


        :return: The weather_score of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._weather_score

    @weather_score.setter
    def weather_score(self, weather_score):
        """Sets the weather_score of this MultibranchPipeline.


        :param weather_score: The weather_score of this MultibranchPipeline.  # noqa: E501
        :type weather_score: int
        """

        self._weather_score = weather_score

    @property
    def branch_names(self):
        """Gets the branch_names of this MultibranchPipeline.  # noqa: E501


        :return: The branch_names of this MultibranchPipeline.  # noqa: E501
        :rtype: list[str]
        """
        return self._branch_names

    @branch_names.setter
    def branch_names(self, branch_names):
        """Sets the branch_names of this MultibranchPipeline.


        :param branch_names: The branch_names of this MultibranchPipeline.  # noqa: E501
        :type branch_names: list[str]
        """

        self._branch_names = branch_names

    @property
    def number_of_failing_branches(self):
        """Gets the number_of_failing_branches of this MultibranchPipeline.  # noqa: E501


        :return: The number_of_failing_branches of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._number_of_failing_branches

    @number_of_failing_branches.setter
    def number_of_failing_branches(self, number_of_failing_branches):
        """Sets the number_of_failing_branches of this MultibranchPipeline.


        :param number_of_failing_branches: The number_of_failing_branches of this MultibranchPipeline.  # noqa: E501
        :type number_of_failing_branches: int
        """

        self._number_of_failing_branches = number_of_failing_branches

    @property
    def number_of_failing_pull_requests(self):
        """Gets the number_of_failing_pull_requests of this MultibranchPipeline.  # noqa: E501


        :return: The number_of_failing_pull_requests of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._number_of_failing_pull_requests

    @number_of_failing_pull_requests.setter
    def number_of_failing_pull_requests(self, number_of_failing_pull_requests):
        """Sets the number_of_failing_pull_requests of this MultibranchPipeline.


        :param number_of_failing_pull_requests: The number_of_failing_pull_requests of this MultibranchPipeline.  # noqa: E501
        :type number_of_failing_pull_requests: int
        """

        self._number_of_failing_pull_requests = number_of_failing_pull_requests

    @property
    def number_of_successful_branches(self):
        """Gets the number_of_successful_branches of this MultibranchPipeline.  # noqa: E501


        :return: The number_of_successful_branches of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._number_of_successful_branches

    @number_of_successful_branches.setter
    def number_of_successful_branches(self, number_of_successful_branches):
        """Sets the number_of_successful_branches of this MultibranchPipeline.


        :param number_of_successful_branches: The number_of_successful_branches of this MultibranchPipeline.  # noqa: E501
        :type number_of_successful_branches: int
        """

        self._number_of_successful_branches = number_of_successful_branches

    @property
    def number_of_successful_pull_requests(self):
        """Gets the number_of_successful_pull_requests of this MultibranchPipeline.  # noqa: E501


        :return: The number_of_successful_pull_requests of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._number_of_successful_pull_requests

    @number_of_successful_pull_requests.setter
    def number_of_successful_pull_requests(self, number_of_successful_pull_requests):
        """Sets the number_of_successful_pull_requests of this MultibranchPipeline.


        :param number_of_successful_pull_requests: The number_of_successful_pull_requests of this MultibranchPipeline.  # noqa: E501
        :type number_of_successful_pull_requests: int
        """

        self._number_of_successful_pull_requests = number_of_successful_pull_requests

    @property
    def total_number_of_branches(self):
        """Gets the total_number_of_branches of this MultibranchPipeline.  # noqa: E501


        :return: The total_number_of_branches of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._total_number_of_branches

    @total_number_of_branches.setter
    def total_number_of_branches(self, total_number_of_branches):
        """Sets the total_number_of_branches of this MultibranchPipeline.


        :param total_number_of_branches: The total_number_of_branches of this MultibranchPipeline.  # noqa: E501
        :type total_number_of_branches: int
        """

        self._total_number_of_branches = total_number_of_branches

    @property
    def total_number_of_pull_requests(self):
        """Gets the total_number_of_pull_requests of this MultibranchPipeline.  # noqa: E501


        :return: The total_number_of_pull_requests of this MultibranchPipeline.  # noqa: E501
        :rtype: int
        """
        return self._total_number_of_pull_requests

    @total_number_of_pull_requests.setter
    def total_number_of_pull_requests(self, total_number_of_pull_requests):
        """Sets the total_number_of_pull_requests of this MultibranchPipeline.


        :param total_number_of_pull_requests: The total_number_of_pull_requests of this MultibranchPipeline.  # noqa: E501
        :type total_number_of_pull_requests: int
        """

        self._total_number_of_pull_requests = total_number_of_pull_requests

    @property
    def _class(self):
        """Gets the _class of this MultibranchPipeline.  # noqa: E501


        :return: The _class of this MultibranchPipeline.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this MultibranchPipeline.


        :param _class: The _class of this MultibranchPipeline.  # noqa: E501
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
        if not isinstance(other, MultibranchPipeline):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, MultibranchPipeline):
            return True

        return self.to_dict() != other.to_dict()
