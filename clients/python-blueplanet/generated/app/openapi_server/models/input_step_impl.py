# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from app.openapi_server.models.input_step_impllinks import InputStepImpllinks  # noqa: F401,E501
from app.openapi_server.models.string_parameter_definition import StringParameterDefinition  # noqa: F401,E501
from openapi_server import util


class InputStepImpl(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, _class: str=None, links: InputStepImpllinks=None, id: str=None, message: str=None, ok: str=None, parameters: List[StringParameterDefinition]=None, submitter: str=None):  # noqa: E501
        """InputStepImpl - a model defined in Swagger

        :param _class: The _class of this InputStepImpl.  # noqa: E501
        :type _class: str
        :param links: The links of this InputStepImpl.  # noqa: E501
        :type links: InputStepImpllinks
        :param id: The id of this InputStepImpl.  # noqa: E501
        :type id: str
        :param message: The message of this InputStepImpl.  # noqa: E501
        :type message: str
        :param ok: The ok of this InputStepImpl.  # noqa: E501
        :type ok: str
        :param parameters: The parameters of this InputStepImpl.  # noqa: E501
        :type parameters: List[StringParameterDefinition]
        :param submitter: The submitter of this InputStepImpl.  # noqa: E501
        :type submitter: str
        """
        self.swagger_types = {
            '_class': str,
            'links': InputStepImpllinks,
            'id': str,
            'message': str,
            'ok': str,
            'parameters': List[StringParameterDefinition],
            'submitter': str
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'id': 'id',
            'message': 'message',
            'ok': 'ok',
            'parameters': 'parameters',
            'submitter': 'submitter'
        }

        self.__class = _class
        self._links = links
        self._id = id
        self._message = message
        self._ok = ok
        self._parameters = parameters
        self._submitter = submitter

    @classmethod
    def from_dict(cls, dikt) -> 'InputStepImpl':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The InputStepImpl of this InputStepImpl.  # noqa: E501
        :rtype: InputStepImpl
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this InputStepImpl.


        :return: The _class of this InputStepImpl.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this InputStepImpl.


        :param _class: The _class of this InputStepImpl.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self) -> InputStepImpllinks:
        """Gets the links of this InputStepImpl.


        :return: The links of this InputStepImpl.
        :rtype: InputStepImpllinks
        """
        return self._links

    @links.setter
    def links(self, links: InputStepImpllinks):
        """Sets the links of this InputStepImpl.


        :param links: The links of this InputStepImpl.
        :type links: InputStepImpllinks
        """

        self._links = links

    @property
    def id(self) -> str:
        """Gets the id of this InputStepImpl.


        :return: The id of this InputStepImpl.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this InputStepImpl.


        :param id: The id of this InputStepImpl.
        :type id: str
        """

        self._id = id

    @property
    def message(self) -> str:
        """Gets the message of this InputStepImpl.


        :return: The message of this InputStepImpl.
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message: str):
        """Sets the message of this InputStepImpl.


        :param message: The message of this InputStepImpl.
        :type message: str
        """

        self._message = message

    @property
    def ok(self) -> str:
        """Gets the ok of this InputStepImpl.


        :return: The ok of this InputStepImpl.
        :rtype: str
        """
        return self._ok

    @ok.setter
    def ok(self, ok: str):
        """Sets the ok of this InputStepImpl.


        :param ok: The ok of this InputStepImpl.
        :type ok: str
        """

        self._ok = ok

    @property
    def parameters(self) -> List[StringParameterDefinition]:
        """Gets the parameters of this InputStepImpl.


        :return: The parameters of this InputStepImpl.
        :rtype: List[StringParameterDefinition]
        """
        return self._parameters

    @parameters.setter
    def parameters(self, parameters: List[StringParameterDefinition]):
        """Sets the parameters of this InputStepImpl.


        :param parameters: The parameters of this InputStepImpl.
        :type parameters: List[StringParameterDefinition]
        """

        self._parameters = parameters

    @property
    def submitter(self) -> str:
        """Gets the submitter of this InputStepImpl.


        :return: The submitter of this InputStepImpl.
        :rtype: str
        """
        return self._submitter

    @submitter.setter
    def submitter(self, submitter: str):
        """Sets the submitter of this InputStepImpl.


        :param submitter: The submitter of this InputStepImpl.
        :type submitter: str
        """

        self._submitter = submitter
