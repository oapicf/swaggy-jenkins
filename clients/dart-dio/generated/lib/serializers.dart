//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/all_view.dart';
import 'package:openapi/model/branch_impl.dart';
import 'package:openapi/model/branch_impllinks.dart';
import 'package:openapi/model/branch_implpermissions.dart';
import 'package:openapi/model/cause_action.dart';
import 'package:openapi/model/cause_user_id_cause.dart';
import 'package:openapi/model/classes_by_class.dart';
import 'package:openapi/model/clock_difference.dart';
import 'package:openapi/model/computer_set.dart';
import 'package:openapi/model/default_crumb_issuer.dart';
import 'package:openapi/model/disk_space_monitor_descriptor_disk_space.dart';
import 'package:openapi/model/empty_change_log_set.dart';
import 'package:openapi/model/extension_class_container_impl1.dart';
import 'package:openapi/model/extension_class_container_impl1links.dart';
import 'package:openapi/model/extension_class_container_impl1map.dart';
import 'package:openapi/model/extension_class_impl.dart';
import 'package:openapi/model/extension_class_impllinks.dart';
import 'package:openapi/model/favorite_impl.dart';
import 'package:openapi/model/favorite_impllinks.dart';
import 'package:openapi/model/free_style_build.dart';
import 'package:openapi/model/free_style_project.dart';
import 'package:openapi/model/free_style_projectactions.dart';
import 'package:openapi/model/free_style_projecthealth_report.dart';
import 'package:openapi/model/generic_resource.dart';
import 'package:openapi/model/github_content.dart';
import 'package:openapi/model/github_file.dart';
import 'package:openapi/model/github_organization.dart';
import 'package:openapi/model/github_organizationlinks.dart';
import 'package:openapi/model/github_repositories.dart';
import 'package:openapi/model/github_repositorieslinks.dart';
import 'package:openapi/model/github_repository.dart';
import 'package:openapi/model/github_repositorylinks.dart';
import 'package:openapi/model/github_repositorypermissions.dart';
import 'package:openapi/model/github_respository_container.dart';
import 'package:openapi/model/github_respository_containerlinks.dart';
import 'package:openapi/model/github_scm.dart';
import 'package:openapi/model/github_scmlinks.dart';
import 'package:openapi/model/hudson.dart';
import 'package:openapi/model/hudson_master_computer.dart';
import 'package:openapi/model/hudson_master_computerexecutors.dart';
import 'package:openapi/model/hudson_master_computermonitor_data.dart';
import 'package:openapi/model/hudsonassigned_labels.dart';
import 'package:openapi/model/input_step_impl.dart';
import 'package:openapi/model/input_step_impllinks.dart';
import 'package:openapi/model/label1.dart';
import 'package:openapi/model/link.dart';
import 'package:openapi/model/list_view.dart';
import 'package:openapi/model/multibranch_pipeline.dart';
import 'package:openapi/model/null_scm.dart';
import 'package:openapi/model/organisation.dart';
import 'package:openapi/model/pipeline.dart';
import 'package:openapi/model/pipeline_activity.dart';
import 'package:openapi/model/pipeline_activityartifacts.dart';
import 'package:openapi/model/pipeline_branchesitem.dart';
import 'package:openapi/model/pipeline_branchesitemlatest_run.dart';
import 'package:openapi/model/pipeline_branchesitempull_request.dart';
import 'package:openapi/model/pipeline_branchesitempull_requestlinks.dart';
import 'package:openapi/model/pipeline_folder_impl.dart';
import 'package:openapi/model/pipeline_impl.dart';
import 'package:openapi/model/pipeline_impllinks.dart';
import 'package:openapi/model/pipeline_run.dart';
import 'package:openapi/model/pipeline_run_impl.dart';
import 'package:openapi/model/pipeline_run_impllinks.dart';
import 'package:openapi/model/pipeline_run_node.dart';
import 'package:openapi/model/pipeline_run_nodeedges.dart';
import 'package:openapi/model/pipeline_runartifacts.dart';
import 'package:openapi/model/pipeline_step_impl.dart';
import 'package:openapi/model/pipeline_step_impllinks.dart';
import 'package:openapi/model/pipelinelatest_run.dart';
import 'package:openapi/model/pipelinelatest_runartifacts.dart';
import 'package:openapi/model/queue.dart';
import 'package:openapi/model/queue_blocked_item.dart';
import 'package:openapi/model/queue_item_impl.dart';
import 'package:openapi/model/queue_left_item.dart';
import 'package:openapi/model/response_time_monitor_data.dart';
import 'package:openapi/model/string_parameter_definition.dart';
import 'package:openapi/model/string_parameter_value.dart';
import 'package:openapi/model/swap_space_monitor_memory_usage2.dart';
import 'package:openapi/model/unlabeled_load_statistics.dart';
import 'package:openapi/model/user.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AllView,
  BranchImpl,
  BranchImpllinks,
  BranchImplpermissions,
  CauseAction,
  CauseUserIdCause,
  ClassesByClass,
  ClockDifference,
  ComputerSet,
  DefaultCrumbIssuer,
  DiskSpaceMonitorDescriptorDiskSpace,
  EmptyChangeLogSet,
  ExtensionClassContainerImpl1,
  ExtensionClassContainerImpl1links,
  ExtensionClassContainerImpl1map,
  ExtensionClassImpl,
  ExtensionClassImpllinks,
  FavoriteImpl,
  FavoriteImpllinks,
  FreeStyleBuild,
  FreeStyleProject,
  FreeStyleProjectactions,
  FreeStyleProjecthealthReport,
  GenericResource,
  GithubContent,
  GithubFile,
  GithubOrganization,
  GithubOrganizationlinks,
  GithubRepositories,
  GithubRepositorieslinks,
  GithubRepository,
  GithubRepositorylinks,
  GithubRepositorypermissions,
  GithubRespositoryContainer,
  GithubRespositoryContainerlinks,
  GithubScm,
  GithubScmlinks,
  Hudson,
  HudsonMasterComputer,
  HudsonMasterComputerexecutors,
  HudsonMasterComputermonitorData,
  HudsonassignedLabels,
  InputStepImpl,
  InputStepImpllinks,
  Label1,
  Link,
  ListView,
  MultibranchPipeline,
  NullSCM,
  Organisation,
  Pipeline,
  PipelineActivity,
  PipelineActivityartifacts,
  PipelineBranchesitem,
  PipelineBranchesitemlatestRun,
  PipelineBranchesitempullRequest,
  PipelineBranchesitempullRequestlinks,
  PipelineFolderImpl,
  PipelineImpl,
  PipelineImpllinks,
  PipelineRun,
  PipelineRunImpl,
  PipelineRunImpllinks,
  PipelineRunNode,
  PipelineRunNodeedges,
  PipelineRunartifacts,
  PipelineStepImpl,
  PipelineStepImpllinks,
  PipelinelatestRun,
  PipelinelatestRunartifacts,
  Queue,
  QueueBlockedItem,
  QueueItemImpl,
  QueueLeftItem,
  ResponseTimeMonitorData,
  StringParameterDefinition,
  StringParameterValue,
  SwapSpaceMonitorMemoryUsage2,
  UnlabeledLoadStatistics,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FavoriteImpl)]),
        () => ListBuilder<FavoriteImpl>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PipelineRun)]),
        () => ListBuilder<PipelineRun>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Organisation)]),
        () => ListBuilder<Organisation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Pipeline)]),
        () => ListBuilder<Pipeline>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PipelineStepImpl)]),
        () => ListBuilder<PipelineStepImpl>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PipelineActivity)]),
        () => ListBuilder<PipelineActivity>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QueueItemImpl)]),
        () => ListBuilder<QueueItemImpl>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PipelineRunNode)]),
        () => ListBuilder<PipelineRunNode>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GithubOrganization)]),
        () => ListBuilder<GithubOrganization>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
