//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/base_api.dart';
part 'api/blue_ocean_api.dart';
part 'api/remote_access_api.dart';

part 'model/all_view.dart';
part 'model/branch_impl.dart';
part 'model/branch_impllinks.dart';
part 'model/branch_implpermissions.dart';
part 'model/cause_action.dart';
part 'model/cause_user_id_cause.dart';
part 'model/classes_by_class.dart';
part 'model/clock_difference.dart';
part 'model/computer_set.dart';
part 'model/default_crumb_issuer.dart';
part 'model/disk_space_monitor_descriptor_disk_space.dart';
part 'model/empty_change_log_set.dart';
part 'model/extension_class_container_impl1.dart';
part 'model/extension_class_container_impl1links.dart';
part 'model/extension_class_container_impl1map.dart';
part 'model/extension_class_impl.dart';
part 'model/extension_class_impllinks.dart';
part 'model/favorite_impl.dart';
part 'model/favorite_impllinks.dart';
part 'model/free_style_build.dart';
part 'model/free_style_project.dart';
part 'model/free_style_projectactions.dart';
part 'model/free_style_projecthealth_report.dart';
part 'model/generic_resource.dart';
part 'model/github_content.dart';
part 'model/github_file.dart';
part 'model/github_organization.dart';
part 'model/github_organizationlinks.dart';
part 'model/github_repositories.dart';
part 'model/github_repositorieslinks.dart';
part 'model/github_repository.dart';
part 'model/github_repositorylinks.dart';
part 'model/github_repositorypermissions.dart';
part 'model/github_respository_container.dart';
part 'model/github_respository_containerlinks.dart';
part 'model/github_scm.dart';
part 'model/github_scmlinks.dart';
part 'model/hudson.dart';
part 'model/hudson_master_computer.dart';
part 'model/hudson_master_computerexecutors.dart';
part 'model/hudson_master_computermonitor_data.dart';
part 'model/hudsonassigned_labels.dart';
part 'model/input_step_impl.dart';
part 'model/input_step_impllinks.dart';
part 'model/label1.dart';
part 'model/link.dart';
part 'model/list_view.dart';
part 'model/multibranch_pipeline.dart';
part 'model/null_scm.dart';
part 'model/organisation.dart';
part 'model/pipeline.dart';
part 'model/pipeline_activity.dart';
part 'model/pipeline_activityartifacts.dart';
part 'model/pipeline_branchesitem.dart';
part 'model/pipeline_branchesitemlatest_run.dart';
part 'model/pipeline_branchesitempull_request.dart';
part 'model/pipeline_branchesitempull_requestlinks.dart';
part 'model/pipeline_folder_impl.dart';
part 'model/pipeline_impl.dart';
part 'model/pipeline_impllinks.dart';
part 'model/pipeline_run.dart';
part 'model/pipeline_run_impl.dart';
part 'model/pipeline_run_impllinks.dart';
part 'model/pipeline_run_node.dart';
part 'model/pipeline_run_nodeedges.dart';
part 'model/pipeline_runartifacts.dart';
part 'model/pipeline_step_impl.dart';
part 'model/pipeline_step_impllinks.dart';
part 'model/pipelinelatest_run.dart';
part 'model/pipelinelatest_runartifacts.dart';
part 'model/queue.dart';
part 'model/queue_blocked_item.dart';
part 'model/queue_item_impl.dart';
part 'model/queue_left_item.dart';
part 'model/response_time_monitor_data.dart';
part 'model/string_parameter_definition.dart';
part 'model/string_parameter_value.dart';
part 'model/swap_space_monitor_memory_usage2.dart';
part 'model/unlabeled_load_statistics.dart';
part 'model/user.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
