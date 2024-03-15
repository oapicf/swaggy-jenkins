# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from openapi_server import util


class GithubRepositorypermissions(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, admin: bool=None, push: bool=None, pull: bool=None, _class: str=None):  # noqa: E501
        """GithubRepositorypermissions - a model defined in Swagger

        :param admin: The admin of this GithubRepositorypermissions.  # noqa: E501
        :type admin: bool
        :param push: The push of this GithubRepositorypermissions.  # noqa: E501
        :type push: bool
        :param pull: The pull of this GithubRepositorypermissions.  # noqa: E501
        :type pull: bool
        :param _class: The _class of this GithubRepositorypermissions.  # noqa: E501
        :type _class: str
        """
        self.swagger_types = {
            'admin': bool,
            'push': bool,
            'pull': bool,
            '_class': str
        }

        self.attribute_map = {
            'admin': 'admin',
            'push': 'push',
            'pull': 'pull',
            '_class': '_class'
        }

        self._admin = admin
        self._push = push
        self._pull = pull
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt) -> 'GithubRepositorypermissions':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The GithubRepositorypermissions of this GithubRepositorypermissions.  # noqa: E501
        :rtype: GithubRepositorypermissions
        """
        return util.deserialize_model(dikt, cls)

    @property
    def admin(self) -> bool:
        """Gets the admin of this GithubRepositorypermissions.


        :return: The admin of this GithubRepositorypermissions.
        :rtype: bool
        """
        return self._admin

    @admin.setter
    def admin(self, admin: bool):
        """Sets the admin of this GithubRepositorypermissions.


        :param admin: The admin of this GithubRepositorypermissions.
        :type admin: bool
        """

        self._admin = admin

    @property
    def push(self) -> bool:
        """Gets the push of this GithubRepositorypermissions.


        :return: The push of this GithubRepositorypermissions.
        :rtype: bool
        """
        return self._push

    @push.setter
    def push(self, push: bool):
        """Sets the push of this GithubRepositorypermissions.


        :param push: The push of this GithubRepositorypermissions.
        :type push: bool
        """

        self._push = push

    @property
    def pull(self) -> bool:
        """Gets the pull of this GithubRepositorypermissions.


        :return: The pull of this GithubRepositorypermissions.
        :rtype: bool
        """
        return self._pull

    @pull.setter
    def pull(self, pull: bool):
        """Sets the pull of this GithubRepositorypermissions.


        :param pull: The pull of this GithubRepositorypermissions.
        :type pull: bool
        """

        self._pull = pull

    @property
    def _class(self) -> str:
        """Gets the _class of this GithubRepositorypermissions.


        :return: The _class of this GithubRepositorypermissions.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this GithubRepositorypermissions.


        :param _class: The _class of this GithubRepositorypermissions.
        :type _class: str
        """

        self.__class = _class
