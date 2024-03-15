from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server import util


class User(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, id=None, full_name=None, email=None, name=None):  # noqa: E501
        """User - a model defined in OpenAPI

        :param _class: The _class of this User.  # noqa: E501
        :type _class: str
        :param id: The id of this User.  # noqa: E501
        :type id: str
        :param full_name: The full_name of this User.  # noqa: E501
        :type full_name: str
        :param email: The email of this User.  # noqa: E501
        :type email: str
        :param name: The name of this User.  # noqa: E501
        :type name: str
        """
        self.openapi_types = {
            '_class': str,
            'id': str,
            'full_name': str,
            'email': str,
            'name': str
        }

        self.attribute_map = {
            '_class': '_class',
            'id': 'id',
            'full_name': 'fullName',
            'email': 'email',
            'name': 'name'
        }

        self.__class = _class
        self._id = id
        self._full_name = full_name
        self._email = email
        self._name = name

    @classmethod
    def from_dict(cls, dikt) -> 'User':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The User of this User.  # noqa: E501
        :rtype: User
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this User.


        :return: The _class of this User.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this User.


        :param _class: The _class of this User.
        :type _class: str
        """

        self.__class = _class

    @property
    def id(self) -> str:
        """Gets the id of this User.


        :return: The id of this User.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this User.


        :param id: The id of this User.
        :type id: str
        """

        self._id = id

    @property
    def full_name(self) -> str:
        """Gets the full_name of this User.


        :return: The full_name of this User.
        :rtype: str
        """
        return self._full_name

    @full_name.setter
    def full_name(self, full_name: str):
        """Sets the full_name of this User.


        :param full_name: The full_name of this User.
        :type full_name: str
        """

        self._full_name = full_name

    @property
    def email(self) -> str:
        """Gets the email of this User.


        :return: The email of this User.
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email: str):
        """Sets the email of this User.


        :param email: The email of this User.
        :type email: str
        """

        self._email = email

    @property
    def name(self) -> str:
        """Gets the name of this User.


        :return: The name of this User.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name: str):
        """Sets the name of this User.


        :param name: The name of this User.
        :type name: str
        """

        self._name = name
