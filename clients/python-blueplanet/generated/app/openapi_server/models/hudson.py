# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from app.openapi_server.models.all_view import AllView  # noqa: F401,E501
from app.openapi_server.models.free_style_project import FreeStyleProject  # noqa: F401,E501
from app.openapi_server.models.hudsonassigned_labels import HudsonassignedLabels  # noqa: F401,E501
from app.openapi_server.models.unlabeled_load_statistics import UnlabeledLoadStatistics  # noqa: F401,E501
from openapi_server import util


class Hudson(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, _class: str=None, assigned_labels: List[HudsonassignedLabels]=None, mode: str=None, node_description: str=None, node_name: str=None, num_executors: int=None, description: str=None, jobs: List[FreeStyleProject]=None, primary_view: AllView=None, quieting_down: bool=None, slave_agent_port: int=None, unlabeled_load: UnlabeledLoadStatistics=None, use_crumbs: bool=None, use_security: bool=None, views: List[AllView]=None):  # noqa: E501
        """Hudson - a model defined in Swagger

        :param _class: The _class of this Hudson.  # noqa: E501
        :type _class: str
        :param assigned_labels: The assigned_labels of this Hudson.  # noqa: E501
        :type assigned_labels: List[HudsonassignedLabels]
        :param mode: The mode of this Hudson.  # noqa: E501
        :type mode: str
        :param node_description: The node_description of this Hudson.  # noqa: E501
        :type node_description: str
        :param node_name: The node_name of this Hudson.  # noqa: E501
        :type node_name: str
        :param num_executors: The num_executors of this Hudson.  # noqa: E501
        :type num_executors: int
        :param description: The description of this Hudson.  # noqa: E501
        :type description: str
        :param jobs: The jobs of this Hudson.  # noqa: E501
        :type jobs: List[FreeStyleProject]
        :param primary_view: The primary_view of this Hudson.  # noqa: E501
        :type primary_view: AllView
        :param quieting_down: The quieting_down of this Hudson.  # noqa: E501
        :type quieting_down: bool
        :param slave_agent_port: The slave_agent_port of this Hudson.  # noqa: E501
        :type slave_agent_port: int
        :param unlabeled_load: The unlabeled_load of this Hudson.  # noqa: E501
        :type unlabeled_load: UnlabeledLoadStatistics
        :param use_crumbs: The use_crumbs of this Hudson.  # noqa: E501
        :type use_crumbs: bool
        :param use_security: The use_security of this Hudson.  # noqa: E501
        :type use_security: bool
        :param views: The views of this Hudson.  # noqa: E501
        :type views: List[AllView]
        """
        self.swagger_types = {
            '_class': str,
            'assigned_labels': List[HudsonassignedLabels],
            'mode': str,
            'node_description': str,
            'node_name': str,
            'num_executors': int,
            'description': str,
            'jobs': List[FreeStyleProject],
            'primary_view': AllView,
            'quieting_down': bool,
            'slave_agent_port': int,
            'unlabeled_load': UnlabeledLoadStatistics,
            'use_crumbs': bool,
            'use_security': bool,
            'views': List[AllView]
        }

        self.attribute_map = {
            '_class': '_class',
            'assigned_labels': 'assignedLabels',
            'mode': 'mode',
            'node_description': 'nodeDescription',
            'node_name': 'nodeName',
            'num_executors': 'numExecutors',
            'description': 'description',
            'jobs': 'jobs',
            'primary_view': 'primaryView',
            'quieting_down': 'quietingDown',
            'slave_agent_port': 'slaveAgentPort',
            'unlabeled_load': 'unlabeledLoad',
            'use_crumbs': 'useCrumbs',
            'use_security': 'useSecurity',
            'views': 'views'
        }

        self.__class = _class
        self._assigned_labels = assigned_labels
        self._mode = mode
        self._node_description = node_description
        self._node_name = node_name
        self._num_executors = num_executors
        self._description = description
        self._jobs = jobs
        self._primary_view = primary_view
        self._quieting_down = quieting_down
        self._slave_agent_port = slave_agent_port
        self._unlabeled_load = unlabeled_load
        self._use_crumbs = use_crumbs
        self._use_security = use_security
        self._views = views

    @classmethod
    def from_dict(cls, dikt) -> 'Hudson':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The Hudson of this Hudson.  # noqa: E501
        :rtype: Hudson
        """
        return util.deserialize_model(dikt, cls)

    @property
    def _class(self) -> str:
        """Gets the _class of this Hudson.


        :return: The _class of this Hudson.
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class: str):
        """Sets the _class of this Hudson.


        :param _class: The _class of this Hudson.
        :type _class: str
        """

        self.__class = _class

    @property
    def assigned_labels(self) -> List[HudsonassignedLabels]:
        """Gets the assigned_labels of this Hudson.


        :return: The assigned_labels of this Hudson.
        :rtype: List[HudsonassignedLabels]
        """
        return self._assigned_labels

    @assigned_labels.setter
    def assigned_labels(self, assigned_labels: List[HudsonassignedLabels]):
        """Sets the assigned_labels of this Hudson.


        :param assigned_labels: The assigned_labels of this Hudson.
        :type assigned_labels: List[HudsonassignedLabels]
        """

        self._assigned_labels = assigned_labels

    @property
    def mode(self) -> str:
        """Gets the mode of this Hudson.


        :return: The mode of this Hudson.
        :rtype: str
        """
        return self._mode

    @mode.setter
    def mode(self, mode: str):
        """Sets the mode of this Hudson.


        :param mode: The mode of this Hudson.
        :type mode: str
        """

        self._mode = mode

    @property
    def node_description(self) -> str:
        """Gets the node_description of this Hudson.


        :return: The node_description of this Hudson.
        :rtype: str
        """
        return self._node_description

    @node_description.setter
    def node_description(self, node_description: str):
        """Sets the node_description of this Hudson.


        :param node_description: The node_description of this Hudson.
        :type node_description: str
        """

        self._node_description = node_description

    @property
    def node_name(self) -> str:
        """Gets the node_name of this Hudson.


        :return: The node_name of this Hudson.
        :rtype: str
        """
        return self._node_name

    @node_name.setter
    def node_name(self, node_name: str):
        """Sets the node_name of this Hudson.


        :param node_name: The node_name of this Hudson.
        :type node_name: str
        """

        self._node_name = node_name

    @property
    def num_executors(self) -> int:
        """Gets the num_executors of this Hudson.


        :return: The num_executors of this Hudson.
        :rtype: int
        """
        return self._num_executors

    @num_executors.setter
    def num_executors(self, num_executors: int):
        """Sets the num_executors of this Hudson.


        :param num_executors: The num_executors of this Hudson.
        :type num_executors: int
        """

        self._num_executors = num_executors

    @property
    def description(self) -> str:
        """Gets the description of this Hudson.


        :return: The description of this Hudson.
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description: str):
        """Sets the description of this Hudson.


        :param description: The description of this Hudson.
        :type description: str
        """

        self._description = description

    @property
    def jobs(self) -> List[FreeStyleProject]:
        """Gets the jobs of this Hudson.


        :return: The jobs of this Hudson.
        :rtype: List[FreeStyleProject]
        """
        return self._jobs

    @jobs.setter
    def jobs(self, jobs: List[FreeStyleProject]):
        """Sets the jobs of this Hudson.


        :param jobs: The jobs of this Hudson.
        :type jobs: List[FreeStyleProject]
        """

        self._jobs = jobs

    @property
    def primary_view(self) -> AllView:
        """Gets the primary_view of this Hudson.


        :return: The primary_view of this Hudson.
        :rtype: AllView
        """
        return self._primary_view

    @primary_view.setter
    def primary_view(self, primary_view: AllView):
        """Sets the primary_view of this Hudson.


        :param primary_view: The primary_view of this Hudson.
        :type primary_view: AllView
        """

        self._primary_view = primary_view

    @property
    def quieting_down(self) -> bool:
        """Gets the quieting_down of this Hudson.


        :return: The quieting_down of this Hudson.
        :rtype: bool
        """
        return self._quieting_down

    @quieting_down.setter
    def quieting_down(self, quieting_down: bool):
        """Sets the quieting_down of this Hudson.


        :param quieting_down: The quieting_down of this Hudson.
        :type quieting_down: bool
        """

        self._quieting_down = quieting_down

    @property
    def slave_agent_port(self) -> int:
        """Gets the slave_agent_port of this Hudson.


        :return: The slave_agent_port of this Hudson.
        :rtype: int
        """
        return self._slave_agent_port

    @slave_agent_port.setter
    def slave_agent_port(self, slave_agent_port: int):
        """Sets the slave_agent_port of this Hudson.


        :param slave_agent_port: The slave_agent_port of this Hudson.
        :type slave_agent_port: int
        """

        self._slave_agent_port = slave_agent_port

    @property
    def unlabeled_load(self) -> UnlabeledLoadStatistics:
        """Gets the unlabeled_load of this Hudson.


        :return: The unlabeled_load of this Hudson.
        :rtype: UnlabeledLoadStatistics
        """
        return self._unlabeled_load

    @unlabeled_load.setter
    def unlabeled_load(self, unlabeled_load: UnlabeledLoadStatistics):
        """Sets the unlabeled_load of this Hudson.


        :param unlabeled_load: The unlabeled_load of this Hudson.
        :type unlabeled_load: UnlabeledLoadStatistics
        """

        self._unlabeled_load = unlabeled_load

    @property
    def use_crumbs(self) -> bool:
        """Gets the use_crumbs of this Hudson.


        :return: The use_crumbs of this Hudson.
        :rtype: bool
        """
        return self._use_crumbs

    @use_crumbs.setter
    def use_crumbs(self, use_crumbs: bool):
        """Sets the use_crumbs of this Hudson.


        :param use_crumbs: The use_crumbs of this Hudson.
        :type use_crumbs: bool
        """

        self._use_crumbs = use_crumbs

    @property
    def use_security(self) -> bool:
        """Gets the use_security of this Hudson.


        :return: The use_security of this Hudson.
        :rtype: bool
        """
        return self._use_security

    @use_security.setter
    def use_security(self, use_security: bool):
        """Sets the use_security of this Hudson.


        :param use_security: The use_security of this Hudson.
        :type use_security: bool
        """

        self._use_security = use_security

    @property
    def views(self) -> List[AllView]:
        """Gets the views of this Hudson.


        :return: The views of this Hudson.
        :rtype: List[AllView]
        """
        return self._views

    @views.setter
    def views(self, views: List[AllView]):
        """Sets the views of this Hudson.


        :param views: The views of this Hudson.
        :type views: List[AllView]
        """

        self._views = views
