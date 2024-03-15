from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server import util


class Organisation(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, name=None):  # noqa: E501
        """Organisation - a model defined in OpenAPI

        :param _class: The _class of this Organisation.  # noqa: E501
        :type _class: str
        :param name: The name of this Organisation.  # noqa: E501
        :type name: str
        """
        self.openapi_types = {
            '_class': str,
            'name': str
        }

        self.attribute_map = {
            '_class': '_class',
            'name': 'name'
        }

        self.__class = _class
        self._name = name

    @classmethod
    def from_dict(cls, dikt) -> 'Organisation':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The Organisation of this Organisation.  # noqa: E501
        :rtype: Organisation
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this Organisation.


        :return: The _class of this Organisation.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this Organisation.


        :param _class: The _class of this Organisation.
        :type _class: str
        """

        self.__class = _class

    @property
    def name(self) -> str:
        """Gets the name of this Organisation.


        :return: The name of this Organisation.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name: str):
        """Sets the name of this Organisation.


        :param name: The name of this Organisation.
        :type name: str
        """

        self._name = name
