# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model_ import Model
from openapi_server.models.github_repositorieslinks import GithubRepositorieslinks
from openapi_server.models.github_repository import GithubRepository
from openapi_server import util

from openapi_server.models.github_repositorieslinks import GithubRepositorieslinks  # noqa: E501
from openapi_server.models.github_repository import GithubRepository  # noqa: E501

class GithubRepositories(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, links=None, items=None, last_page=None, next_page=None, page_size=None):  # noqa: E501
        """GithubRepositories - a model defined in OpenAPI

        :param _class: The _class of this GithubRepositories.  # noqa: E501
        :type _class: str
        :param links: The links of this GithubRepositories.  # noqa: E501
        :type links: GithubRepositorieslinks
        :param items: The items of this GithubRepositories.  # noqa: E501
        :type items: List[GithubRepository]
        :param last_page: The last_page of this GithubRepositories.  # noqa: E501
        :type last_page: int
        :param next_page: The next_page of this GithubRepositories.  # noqa: E501
        :type next_page: int
        :param page_size: The page_size of this GithubRepositories.  # noqa: E501
        :type page_size: int
        """
        self.openapi_types = {
            '_class': str,
            'links': GithubRepositorieslinks,
            'items': List[GithubRepository],
            'last_page': int,
            'next_page': int,
            'page_size': int
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'items': 'items',
            'last_page': 'lastPage',
            'next_page': 'nextPage',
            'page_size': 'pageSize'
        }

        self.__class = _class
        self._links = links
        self._items = items
        self._last_page = last_page
        self._next_page = next_page
        self._page_size = page_size

    @classmethod
    def from_dict(cls, dikt) -> 'GithubRepositories':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GithubRepositories of this GithubRepositories.  # noqa: E501
        :rtype: GithubRepositories
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this GithubRepositories.


        :return: The _class of this GithubRepositories.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this GithubRepositories.


        :param _class: The _class of this GithubRepositories.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self):
        """Gets the links of this GithubRepositories.


        :return: The links of this GithubRepositories.
        :rtype: GithubRepositorieslinks
        """
        return self._links

    @links.setter
    def links(self, links):
        """Sets the links of this GithubRepositories.


        :param links: The links of this GithubRepositories.
        :type links: GithubRepositorieslinks
        """

        self._links = links

    @property
    def items(self):
        """Gets the items of this GithubRepositories.


        :return: The items of this GithubRepositories.
        :rtype: List[GithubRepository]
        """
        return self._items

    @items.setter
    def items(self, items):
        """Sets the items of this GithubRepositories.


        :param items: The items of this GithubRepositories.
        :type items: List[GithubRepository]
        """

        self._items = items

    @property
    def last_page(self):
        """Gets the last_page of this GithubRepositories.


        :return: The last_page of this GithubRepositories.
        :rtype: int
        """
        return self._last_page

    @last_page.setter
    def last_page(self, last_page):
        """Sets the last_page of this GithubRepositories.


        :param last_page: The last_page of this GithubRepositories.
        :type last_page: int
        """

        self._last_page = last_page

    @property
    def next_page(self):
        """Gets the next_page of this GithubRepositories.


        :return: The next_page of this GithubRepositories.
        :rtype: int
        """
        return self._next_page

    @next_page.setter
    def next_page(self, next_page):
        """Sets the next_page of this GithubRepositories.


        :param next_page: The next_page of this GithubRepositories.
        :type next_page: int
        """

        self._next_page = next_page

    @property
    def page_size(self):
        """Gets the page_size of this GithubRepositories.


        :return: The page_size of this GithubRepositories.
        :rtype: int
        """
        return self._page_size

    @page_size.setter
    def page_size(self, page_size):
        """Sets the page_size of this GithubRepositories.


        :param page_size: The page_size of this GithubRepositories.
        :type page_size: int
        """

        self._page_size = page_size
