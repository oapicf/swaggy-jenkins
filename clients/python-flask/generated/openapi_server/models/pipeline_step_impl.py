from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server.models.input_step_impl import InputStepImpl
from openapi_server.models.pipeline_step_impllinks import PipelineStepImpllinks
from openapi_server import util

from openapi_server.models.input_step_impl import InputStepImpl  # noqa: E501
from openapi_server.models.pipeline_step_impllinks import PipelineStepImpllinks  # noqa: E501

class PipelineStepImpl(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, links=None, display_name=None, duration_in_millis=None, id=None, input=None, result=None, start_time=None, state=None):  # noqa: E501
        """PipelineStepImpl - a model defined in OpenAPI

        :param _class: The _class of this PipelineStepImpl.  # noqa: E501
        :type _class: str
        :param links: The links of this PipelineStepImpl.  # noqa: E501
        :type links: PipelineStepImpllinks
        :param display_name: The display_name of this PipelineStepImpl.  # noqa: E501
        :type display_name: str
        :param duration_in_millis: The duration_in_millis of this PipelineStepImpl.  # noqa: E501
        :type duration_in_millis: int
        :param id: The id of this PipelineStepImpl.  # noqa: E501
        :type id: str
        :param input: The input of this PipelineStepImpl.  # noqa: E501
        :type input: InputStepImpl
        :param result: The result of this PipelineStepImpl.  # noqa: E501
        :type result: str
        :param start_time: The start_time of this PipelineStepImpl.  # noqa: E501
        :type start_time: str
        :param state: The state of this PipelineStepImpl.  # noqa: E501
        :type state: str
        """
        self.openapi_types = {
            '_class': str,
            'links': PipelineStepImpllinks,
            'display_name': str,
            'duration_in_millis': int,
            'id': str,
            'input': InputStepImpl,
            'result': str,
            'start_time': str,
            'state': str
        }

        self.attribute_map = {
            '_class': '_class',
            'links': '_links',
            'display_name': 'displayName',
            'duration_in_millis': 'durationInMillis',
            'id': 'id',
            'input': 'input',
            'result': 'result',
            'start_time': 'startTime',
            'state': 'state'
        }

        self.__class = _class
        self._links = links
        self._display_name = display_name
        self._duration_in_millis = duration_in_millis
        self._id = id
        self._input = input
        self._result = result
        self._start_time = start_time
        self._state = state

    @classmethod
    def from_dict(cls, dikt) -> 'PipelineStepImpl':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The PipelineStepImpl of this PipelineStepImpl.  # noqa: E501
        :rtype: PipelineStepImpl
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this PipelineStepImpl.


        :return: The _class of this PipelineStepImpl.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this PipelineStepImpl.


        :param _class: The _class of this PipelineStepImpl.
        :type _class: str
        """

        self.__class = _class

    @property
    def links(self) -> PipelineStepImpllinks:
        """Gets the links of this PipelineStepImpl.


        :return: The links of this PipelineStepImpl.
        :rtype: PipelineStepImpllinks
        """
        return self._links

    @links.setter
    def links(self, links: PipelineStepImpllinks):
        """Sets the links of this PipelineStepImpl.


        :param links: The links of this PipelineStepImpl.
        :type links: PipelineStepImpllinks
        """

        self._links = links

    @property
    def display_name(self) -> str:
        """Gets the display_name of this PipelineStepImpl.


        :return: The display_name of this PipelineStepImpl.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name: str):
        """Sets the display_name of this PipelineStepImpl.


        :param display_name: The display_name of this PipelineStepImpl.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def duration_in_millis(self) -> int:
        """Gets the duration_in_millis of this PipelineStepImpl.


        :return: The duration_in_millis of this PipelineStepImpl.
        :rtype: int
        """
        return self._duration_in_millis

    @duration_in_millis.setter
    def duration_in_millis(self, duration_in_millis: int):
        """Sets the duration_in_millis of this PipelineStepImpl.


        :param duration_in_millis: The duration_in_millis of this PipelineStepImpl.
        :type duration_in_millis: int
        """

        self._duration_in_millis = duration_in_millis

    @property
    def id(self) -> str:
        """Gets the id of this PipelineStepImpl.


        :return: The id of this PipelineStepImpl.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this PipelineStepImpl.


        :param id: The id of this PipelineStepImpl.
        :type id: str
        """

        self._id = id

    @property
    def input(self) -> InputStepImpl:
        """Gets the input of this PipelineStepImpl.


        :return: The input of this PipelineStepImpl.
        :rtype: InputStepImpl
        """
        return self._input

    @input.setter
    def input(self, input: InputStepImpl):
        """Sets the input of this PipelineStepImpl.


        :param input: The input of this PipelineStepImpl.
        :type input: InputStepImpl
        """

        self._input = input

    @property
    def result(self) -> str:
        """Gets the result of this PipelineStepImpl.


        :return: The result of this PipelineStepImpl.
        :rtype: str
        """
        return self._result

    @result.setter
    def result(self, result: str):
        """Sets the result of this PipelineStepImpl.


        :param result: The result of this PipelineStepImpl.
        :type result: str
        """

        self._result = result

    @property
    def start_time(self) -> str:
        """Gets the start_time of this PipelineStepImpl.


        :return: The start_time of this PipelineStepImpl.
        :rtype: str
        """
        return self._start_time

    @start_time.setter
    def start_time(self, start_time: str):
        """Sets the start_time of this PipelineStepImpl.


        :param start_time: The start_time of this PipelineStepImpl.
        :type start_time: str
        """

        self._start_time = start_time

    @property
    def state(self) -> str:
        """Gets the state of this PipelineStepImpl.


        :return: The state of this PipelineStepImpl.
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state: str):
        """Sets the state of this PipelineStepImpl.


        :param state: The state of this PipelineStepImpl.
        :type state: str
        """

        self._state = state
