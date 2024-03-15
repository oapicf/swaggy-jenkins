from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server.models.pipeline_run_nodeedges import PipelineRunNodeedges
from openapi_server import util

from openapi_server.models.pipeline_run_nodeedges import PipelineRunNodeedges  # noqa: E501

class PipelineRunNode(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, _class=None, display_name=None, duration_in_millis=None, edges=None, id=None, result=None, start_time=None, state=None):  # noqa: E501
        """PipelineRunNode - a model defined in OpenAPI

        :param _class: The _class of this PipelineRunNode.  # noqa: E501
        :type _class: str
        :param display_name: The display_name of this PipelineRunNode.  # noqa: E501
        :type display_name: str
        :param duration_in_millis: The duration_in_millis of this PipelineRunNode.  # noqa: E501
        :type duration_in_millis: int
        :param edges: The edges of this PipelineRunNode.  # noqa: E501
        :type edges: List[PipelineRunNodeedges]
        :param id: The id of this PipelineRunNode.  # noqa: E501
        :type id: str
        :param result: The result of this PipelineRunNode.  # noqa: E501
        :type result: str
        :param start_time: The start_time of this PipelineRunNode.  # noqa: E501
        :type start_time: str
        :param state: The state of this PipelineRunNode.  # noqa: E501
        :type state: str
        """
        self.openapi_types = {
            '_class': str,
            'display_name': str,
            'duration_in_millis': int,
            'edges': List[PipelineRunNodeedges],
            'id': str,
            'result': str,
            'start_time': str,
            'state': str
        }

        self.attribute_map = {
            '_class': '_class',
            'display_name': 'displayName',
            'duration_in_millis': 'durationInMillis',
            'edges': 'edges',
            'id': 'id',
            'result': 'result',
            'start_time': 'startTime',
            'state': 'state'
        }

        self.__class = _class
        self._display_name = display_name
        self._duration_in_millis = duration_in_millis
        self._edges = edges
        self._id = id
        self._result = result
        self._start_time = start_time
        self._state = state

    @classmethod
    def from_dict(cls, dikt) -> 'PipelineRunNode':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The PipelineRunNode of this PipelineRunNode.  # noqa: E501
        :rtype: PipelineRunNode
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this PipelineRunNode.


        :return: The _class of this PipelineRunNode.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this PipelineRunNode.


        :param _class: The _class of this PipelineRunNode.
        :type _class: str
        """

        self.__class = _class

    @property
    def display_name(self) -> str:
        """Gets the display_name of this PipelineRunNode.


        :return: The display_name of this PipelineRunNode.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name: str):
        """Sets the display_name of this PipelineRunNode.


        :param display_name: The display_name of this PipelineRunNode.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def duration_in_millis(self) -> int:
        """Gets the duration_in_millis of this PipelineRunNode.


        :return: The duration_in_millis of this PipelineRunNode.
        :rtype: int
        """
        return self._duration_in_millis

    @duration_in_millis.setter
    def duration_in_millis(self, duration_in_millis: int):
        """Sets the duration_in_millis of this PipelineRunNode.


        :param duration_in_millis: The duration_in_millis of this PipelineRunNode.
        :type duration_in_millis: int
        """

        self._duration_in_millis = duration_in_millis

    @property
    def edges(self) -> List[PipelineRunNodeedges]:
        """Gets the edges of this PipelineRunNode.


        :return: The edges of this PipelineRunNode.
        :rtype: List[PipelineRunNodeedges]
        """
        return self._edges

    @edges.setter
    def edges(self, edges: List[PipelineRunNodeedges]):
        """Sets the edges of this PipelineRunNode.


        :param edges: The edges of this PipelineRunNode.
        :type edges: List[PipelineRunNodeedges]
        """

        self._edges = edges

    @property
    def id(self) -> str:
        """Gets the id of this PipelineRunNode.


        :return: The id of this PipelineRunNode.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this PipelineRunNode.


        :param id: The id of this PipelineRunNode.
        :type id: str
        """

        self._id = id

    @property
    def result(self) -> str:
        """Gets the result of this PipelineRunNode.


        :return: The result of this PipelineRunNode.
        :rtype: str
        """
        return self._result

    @result.setter
    def result(self, result: str):
        """Sets the result of this PipelineRunNode.


        :param result: The result of this PipelineRunNode.
        :type result: str
        """

        self._result = result

    @property
    def start_time(self) -> str:
        """Gets the start_time of this PipelineRunNode.


        :return: The start_time of this PipelineRunNode.
        :rtype: str
        """
        return self._start_time

    @start_time.setter
    def start_time(self, start_time: str):
        """Sets the start_time of this PipelineRunNode.


        :param start_time: The start_time of this PipelineRunNode.
        :type start_time: str
        """

        self._start_time = start_time

    @property
    def state(self) -> str:
        """Gets the state of this PipelineRunNode.


        :return: The state of this PipelineRunNode.
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state: str):
        """Sets the state of this PipelineRunNode.


        :param state: The state of this PipelineRunNode.
        :type state: str
        """

        self._state = state
