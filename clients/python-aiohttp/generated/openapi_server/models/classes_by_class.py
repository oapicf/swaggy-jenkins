# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server import util


class ClassesByClass(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, classes: List[str]=None, _class: str=None):
        """ClassesByClass - a model defined in OpenAPI

        :param classes: The classes of this ClassesByClass.
        :param _class: The _class of this ClassesByClass.
        """
        self.openapi_types = {
            'classes': List[str],
            '_class': str
        }

        self.attribute_map = {
            'classes': 'classes',
            '_class': '_class'
        }

        self._classes = classes
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt: dict) -> 'ClassesByClass':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The ClassesByClass of this ClassesByClass.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def classes(self):
        """Gets the classes of this ClassesByClass.


        :return: The classes of this ClassesByClass.
        :rtype: List[str]
        """
        return self._classes

    @classes.setter
    def classes(self, classes):
        """Sets the classes of this ClassesByClass.


        :param classes: The classes of this ClassesByClass.
        :type classes: List[str]
        """

        self._classes = classes

    @property
    def _class(self):
        """Gets the _class of this ClassesByClass.


        :return: The _class of this ClassesByClass.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this ClassesByClass.


        :param _class: The _class of this ClassesByClass.
        :type _class: str
        """

        self.__class = _class
