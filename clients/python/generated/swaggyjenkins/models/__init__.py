# coding: utf-8

# flake8: noqa
"""
    Swaggy Jenkins

    Jenkins API clients generated from Swagger / Open API specification  # noqa: E501

    OpenAPI spec version: 1.1.1
    Contact: blah@cliffano.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

# import models into model package
from swaggyjenkins.models.all_view import AllView
from swaggyjenkins.models.body import Body
from swaggyjenkins.models.branch_impl import BranchImpl
from swaggyjenkins.models.branch_impllinks import BranchImpllinks
from swaggyjenkins.models.branch_implpermissions import BranchImplpermissions
from swaggyjenkins.models.cause_action import CauseAction
from swaggyjenkins.models.cause_user_id_cause import CauseUserIdCause
from swaggyjenkins.models.classes_by_class import ClassesByClass
from swaggyjenkins.models.clock_difference import ClockDifference
from swaggyjenkins.models.computer_set import ComputerSet
from swaggyjenkins.models.default_crumb_issuer import DefaultCrumbIssuer
from swaggyjenkins.models.disk_space_monitor_descriptor_disk_space import DiskSpaceMonitorDescriptorDiskSpace
from swaggyjenkins.models.empty_change_log_set import EmptyChangeLogSet
from swaggyjenkins.models.extension_class_container_impl1 import ExtensionClassContainerImpl1
from swaggyjenkins.models.extension_class_container_impl1links import ExtensionClassContainerImpl1links
from swaggyjenkins.models.extension_class_container_impl1map import ExtensionClassContainerImpl1map
from swaggyjenkins.models.extension_class_impl import ExtensionClassImpl
from swaggyjenkins.models.extension_class_impllinks import ExtensionClassImpllinks
from swaggyjenkins.models.favorite_impl import FavoriteImpl
from swaggyjenkins.models.favorite_impllinks import FavoriteImpllinks
from swaggyjenkins.models.free_style_build import FreeStyleBuild
from swaggyjenkins.models.free_style_project import FreeStyleProject
from swaggyjenkins.models.free_style_projectactions import FreeStyleProjectactions
from swaggyjenkins.models.free_style_projecthealth_report import FreeStyleProjecthealthReport
from swaggyjenkins.models.generic_resource import GenericResource
from swaggyjenkins.models.github_content import GithubContent
from swaggyjenkins.models.github_file import GithubFile
from swaggyjenkins.models.github_organization import GithubOrganization
from swaggyjenkins.models.github_organizationlinks import GithubOrganizationlinks
from swaggyjenkins.models.github_repositories import GithubRepositories
from swaggyjenkins.models.github_repositorieslinks import GithubRepositorieslinks
from swaggyjenkins.models.github_repository import GithubRepository
from swaggyjenkins.models.github_repositorylinks import GithubRepositorylinks
from swaggyjenkins.models.github_repositorypermissions import GithubRepositorypermissions
from swaggyjenkins.models.github_respository_container import GithubRespositoryContainer
from swaggyjenkins.models.github_respository_containerlinks import GithubRespositoryContainerlinks
from swaggyjenkins.models.github_scm import GithubScm
from swaggyjenkins.models.github_scmlinks import GithubScmlinks
from swaggyjenkins.models.hudson import Hudson
from swaggyjenkins.models.hudson_master_computer import HudsonMasterComputer
from swaggyjenkins.models.hudson_master_computerexecutors import HudsonMasterComputerexecutors
from swaggyjenkins.models.hudson_master_computermonitor_data import HudsonMasterComputermonitorData
from swaggyjenkins.models.hudsonassigned_labels import HudsonassignedLabels
from swaggyjenkins.models.input_step_impl import InputStepImpl
from swaggyjenkins.models.input_step_impllinks import InputStepImpllinks
from swaggyjenkins.models.label1 import Label1
from swaggyjenkins.models.link import Link
from swaggyjenkins.models.list_view import ListView
from swaggyjenkins.models.multibranch_pipeline import MultibranchPipeline
from swaggyjenkins.models.null_scm import NullSCM
from swaggyjenkins.models.organisation import Organisation
from swaggyjenkins.models.organisations import Organisations
from swaggyjenkins.models.pipeline import Pipeline
from swaggyjenkins.models.pipeline_activities import PipelineActivities
from swaggyjenkins.models.pipeline_activity import PipelineActivity
from swaggyjenkins.models.pipeline_activityartifacts import PipelineActivityartifacts
from swaggyjenkins.models.pipeline_branches import PipelineBranches
from swaggyjenkins.models.pipeline_branchesitem import PipelineBranchesitem
from swaggyjenkins.models.pipeline_branchesitemlatest_run import PipelineBranchesitemlatestRun
from swaggyjenkins.models.pipeline_branchesitempull_request import PipelineBranchesitempullRequest
from swaggyjenkins.models.pipeline_branchesitempull_requestlinks import PipelineBranchesitempullRequestlinks
from swaggyjenkins.models.pipeline_folder_impl import PipelineFolderImpl
from swaggyjenkins.models.pipeline_impl import PipelineImpl
from swaggyjenkins.models.pipeline_impllinks import PipelineImpllinks
from swaggyjenkins.models.pipeline_queue import PipelineQueue
from swaggyjenkins.models.pipeline_run import PipelineRun
from swaggyjenkins.models.pipeline_run_impl import PipelineRunImpl
from swaggyjenkins.models.pipeline_run_impllinks import PipelineRunImpllinks
from swaggyjenkins.models.pipeline_run_node import PipelineRunNode
from swaggyjenkins.models.pipeline_run_node_steps import PipelineRunNodeSteps
from swaggyjenkins.models.pipeline_run_nodeedges import PipelineRunNodeedges
from swaggyjenkins.models.pipeline_run_nodes import PipelineRunNodes
from swaggyjenkins.models.pipeline_run_steps import PipelineRunSteps
from swaggyjenkins.models.pipeline_runartifacts import PipelineRunartifacts
from swaggyjenkins.models.pipeline_runs import PipelineRuns
from swaggyjenkins.models.pipeline_step_impl import PipelineStepImpl
from swaggyjenkins.models.pipeline_step_impllinks import PipelineStepImpllinks
from swaggyjenkins.models.pipelinelatest_run import PipelinelatestRun
from swaggyjenkins.models.pipelinelatest_runartifacts import PipelinelatestRunartifacts
from swaggyjenkins.models.pipelines import Pipelines
from swaggyjenkins.models.queue import Queue
from swaggyjenkins.models.queue_blocked_item import QueueBlockedItem
from swaggyjenkins.models.queue_item_impl import QueueItemImpl
from swaggyjenkins.models.queue_left_item import QueueLeftItem
from swaggyjenkins.models.response_time_monitor_data import ResponseTimeMonitorData
from swaggyjenkins.models.scm_organisations import ScmOrganisations
from swaggyjenkins.models.string_parameter_definition import StringParameterDefinition
from swaggyjenkins.models.string_parameter_value import StringParameterValue
from swaggyjenkins.models.swap_space_monitor_memory_usage2 import SwapSpaceMonitorMemoryUsage2
from swaggyjenkins.models.unlabeled_load_statistics import UnlabeledLoadStatistics
from swaggyjenkins.models.user import User
from swaggyjenkins.models.user_favorites import UserFavorites
from swaggyjenkins.models.users import Users
