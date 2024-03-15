from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server import util


class CauseUserIdCause(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, short_description=None, user_id=None, user_name=None):  # noqa: E501
        """CauseUserIdCause - a model defined in OpenAPI

        :param _class: The _class of this CauseUserIdCause.  # noqa: E501
        :type _class: str
        :param short_description: The short_description of this CauseUserIdCause.  # noqa: E501
        :type short_description: str
        :param user_id: The user_id of this CauseUserIdCause.  # noqa: E501
        :type user_id: str
        :param user_name: The user_name of this CauseUserIdCause.  # noqa: E501
        :type user_name: str
        """
        self.openapi_types = {
            '_class': str,
            'short_description': str,
            'user_id': str,
            'user_name': str
        }

        self.attribute_map = {
            '_class': '_class',
            'short_description': 'shortDescription',
            'user_id': 'userId',
            'user_name': 'userName'
        }

        self.__class = _class
        self._short_description = short_description
        self._user_id = user_id
        self._user_name = user_name

    @classmethod
    def from_dict(cls, dikt) -> 'CauseUserIdCause':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The CauseUserIdCause of this CauseUserIdCause.  # noqa: E501
        :rtype: CauseUserIdCause
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this CauseUserIdCause.


        :return: The _class of this CauseUserIdCause.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this CauseUserIdCause.


        :param _class: The _class of this CauseUserIdCause.
        :type _class: str
        """

        self.__class = _class

    @property
    def short_description(self) -> str:
        """Gets the short_description of this CauseUserIdCause.


        :return: The short_description of this CauseUserIdCause.
        :rtype: str
        """
        return self._short_description

    @short_description.setter
    def short_description(self, short_description: str):
        """Sets the short_description of this CauseUserIdCause.


        :param short_description: The short_description of this CauseUserIdCause.
        :type short_description: str
        """

        self._short_description = short_description

    @property
    def user_id(self) -> str:
        """Gets the user_id of this CauseUserIdCause.


        :return: The user_id of this CauseUserIdCause.
        :rtype: str
        """
        return self._user_id

    @user_id.setter
    def user_id(self, user_id: str):
        """Sets the user_id of this CauseUserIdCause.


        :param user_id: The user_id of this CauseUserIdCause.
        :type user_id: str
        """

        self._user_id = user_id

    @property
    def user_name(self) -> str:
        """Gets the user_name of this CauseUserIdCause.


        :return: The user_name of this CauseUserIdCause.
        :rtype: str
        """
        return self._user_name

    @user_name.setter
    def user_name(self, user_name: str):
        """Sets the user_name of this CauseUserIdCause.


        :param user_name: The user_name of this CauseUserIdCause.
        :type user_name: str
        """

        self._user_name = user_name
