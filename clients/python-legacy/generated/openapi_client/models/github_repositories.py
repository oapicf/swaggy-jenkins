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


class GithubRepositories(object):
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
        'links': 'GithubRepositorieslinks',
        'items': 'list[GithubRepository]',
        'last_page': 'int',
        'next_page': 'int',
        'page_size': 'int'
    }

    attribute_map = {
        '_class': '_class',
        'links': '_links',
        'items': 'items',
        'last_page': 'lastPage',
        'next_page': 'nextPage',
        'page_size': 'pageSize'
    }

    def __init__(self, _class=None, links=None, items=None, last_page=None, next_page=None, page_size=None, local_vars_configuration=None):  # noqa: E501
        """GithubRepositories - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self.__class = None
        self._links = None
        self._items = None
        self._last_page = None
        self._next_page = None
        self._page_size = None
        self.discriminator = None

        if _class is not None:
            self._class = _class
        if links is not None:
            self.links = links
        if items is not None:
            self.items = items
        if last_page is not None:
            self.last_page = last_page
        if next_page is not None:
            self.next_page = next_page
        if page_size is not None:
            self.page_size = page_size

    @property
    def _class(self):
        """Gets the _class of this GithubRepositories.  # noqa: E501


        :return: The _class of this GithubRepositories.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this GithubRepositories.


        :param _class: The _class of this GithubRepositories.  # noqa: E501
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self):
        """Gets the links of this GithubRepositories.  # noqa: E501


        :return: The links of this GithubRepositories.  # noqa: E501
        :rtype: GithubRepositorieslinks
        """
        return self._links

    @links.setter
    def links(self, links):
        """Sets the links of this GithubRepositories.


        :param links: The links of this GithubRepositories.  # noqa: E501
        :type links: GithubRepositorieslinks
        """

        self._links = links

    @property
    def items(self):
        """Gets the items of this GithubRepositories.  # noqa: E501


        :return: The items of this GithubRepositories.  # noqa: E501
        :rtype: list[GithubRepository]
        """
        return self._items

    @items.setter
    def items(self, items):
        """Sets the items of this GithubRepositories.


        :param items: The items of this GithubRepositories.  # noqa: E501
        :type items: list[GithubRepository]
        """

        self._items = items

    @property
    def last_page(self):
        """Gets the last_page of this GithubRepositories.  # noqa: E501


        :return: The last_page of this GithubRepositories.  # noqa: E501
        :rtype: int
        """
        return self._last_page

    @last_page.setter
    def last_page(self, last_page):
        """Sets the last_page of this GithubRepositories.


        :param last_page: The last_page of this GithubRepositories.  # noqa: E501
        :type last_page: int
        """

        self._last_page = last_page

    @property
    def next_page(self):
        """Gets the next_page of this GithubRepositories.  # noqa: E501


        :return: The next_page of this GithubRepositories.  # noqa: E501
        :rtype: int
        """
        return self._next_page

    @next_page.setter
    def next_page(self, next_page):
        """Sets the next_page of this GithubRepositories.


        :param next_page: The next_page of this GithubRepositories.  # noqa: E501
        :type next_page: int
        """

        self._next_page = next_page

    @property
    def page_size(self):
        """Gets the page_size of this GithubRepositories.  # noqa: E501


        :return: The page_size of this GithubRepositories.  # noqa: E501
        :rtype: int
        """
        return self._page_size

    @page_size.setter
    def page_size(self, page_size):
        """Sets the page_size of this GithubRepositories.


        :param page_size: The page_size of this GithubRepositories.  # noqa: E501
        :type page_size: int
        """

        self._page_size = page_size

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
        if not isinstance(other, GithubRepositories):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, GithubRepositories):
            return True

        return self.to_dict() != other.to_dict()
