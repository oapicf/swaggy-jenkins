# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server import util


class HudsonassignedLabels(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class: str=None):
        """HudsonassignedLabels - a model defined in OpenAPI

        :param _class: The _class of this HudsonassignedLabels.
        """
        self.openapi_types = {
            '_class': str
        }

        self.attribute_map = {
            '_class': '_class'
        }

        self.__class = _class

    @classmethod
    def from_dict(cls, dikt: dict) -> 'HudsonassignedLabels':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The HudsonassignedLabels of this HudsonassignedLabels.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self):
        """Gets the _class of this HudsonassignedLabels.


        :return: The _class of this HudsonassignedLabels.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this HudsonassignedLabels.


        :param _class: The _class of this HudsonassignedLabels.
        :type _class: str
        """

        self.__class = _class
