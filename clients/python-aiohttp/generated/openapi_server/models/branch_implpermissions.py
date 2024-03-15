# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model import Model
from openapi_server import util


class BranchImplpermissions(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, create: bool=None, read: bool=None, start: bool=None, stop: bool=None, _class: str=None):
        """BranchImplpermissions - a model defined in OpenAPI

        :param create: The create of this BranchImplpermissions.
        :param read: The read of this BranchImplpermissions.
        :param start: The start of this BranchImplpermissions.
        :param stop: The stop of this BranchImplpermissions.
        :param _class: The _class of this BranchImplpermissions.
        """
        self.openapi_types = {
            'create': bool,
            'read': bool,
            'start': bool,
            'stop': bool,
            '_class': str
        }

        self.attribute_map = {
            'create': 'create',
            'read': 'read',
            'start': 'start',
            'stop': 'stop',
            '_class': '_class'
        }

        self._create = create
        self._read = read
        self._start = start
        self._stop = stop
        self.__class = _class

    @classmethod
    def from_dict(cls, dikt: dict) -> 'BranchImplpermissions':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The BranchImplpermissions of this BranchImplpermissions.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def create(self):
        """Gets the create of this BranchImplpermissions.


        :return: The create of this BranchImplpermissions.
        :rtype: bool
        """
        return self._create

    @create.setter
    def create(self, create):
        """Sets the create of this BranchImplpermissions.


        :param create: The create of this BranchImplpermissions.
        :type create: bool
        """

        self._create = create

    @property
    def read(self):
        """Gets the read of this BranchImplpermissions.


        :return: The read of this BranchImplpermissions.
        :rtype: bool
        """
        return self._read

    @read.setter
    def read(self, read):
        """Sets the read of this BranchImplpermissions.


        :param read: The read of this BranchImplpermissions.
        :type read: bool
        """

        self._read = read

    @property
    def start(self):
        """Gets the start of this BranchImplpermissions.


        :return: The start of this BranchImplpermissions.
        :rtype: bool
        """
        return self._start

    @start.setter
    def start(self, start):
        """Sets the start of this BranchImplpermissions.


        :param start: The start of this BranchImplpermissions.
        :type start: bool
        """

        self._start = start

    @property
    def stop(self):
        """Gets the stop of this BranchImplpermissions.


        :return: The stop of this BranchImplpermissions.
        :rtype: bool
        """
        return self._stop

    @stop.setter
    def stop(self, stop):
        """Sets the stop of this BranchImplpermissions.


        :param stop: The stop of this BranchImplpermissions.
        :type stop: bool
        """

        self._stop = stop

    @property
    def _class(self):
        """Gets the _class of this BranchImplpermissions.


        :return: The _class of this BranchImplpermissions.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this BranchImplpermissions.


        :param _class: The _class of this BranchImplpermissions.
        :type _class: str
        """

        self.__class = _class
