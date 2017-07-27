library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:dartson/dartson.dart';
import 'package:dartson/transformers/date_time.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/blue_ocean_api.dart';
part 'api/remote_access_api.dart';

part 'model/get_classes_by_class.dart';
part 'model/get_multibranch_pipeline.dart';
part 'model/get_organisations.dart';
part 'model/get_pipeline_branches.dart';
part 'model/get_pipeline_branchesitem.dart';
part 'model/get_pipeline_branchesitem_latest_run.dart';
part 'model/get_pipeline_branchesitem_pull_request.dart';
part 'model/get_pipeline_branchesitem_pull_request_links.dart';
part 'model/get_pipelines.dart';
part 'model/get_users.dart';
part 'model/hudsonmodel_all_view.dart';
part 'model/hudsonmodel_cause_action.dart';
part 'model/hudsonmodel_cause_user_id_cause.dart';
part 'model/hudsonmodel_computer_set.dart';
part 'model/hudsonmodel_free_style_build.dart';
part 'model/hudsonmodel_free_style_project.dart';
part 'model/hudsonmodel_free_style_projectactions.dart';
part 'model/hudsonmodel_free_style_projecthealth_report.dart';
part 'model/hudsonmodel_hudson.dart';
part 'model/hudsonmodel_hudson_master_computer.dart';
part 'model/hudsonmodel_hudson_master_computer_monitor_data.dart';
part 'model/hudsonmodel_hudson_master_computerexecutors.dart';
part 'model/hudsonmodel_hudsonassigned_labels.dart';
part 'model/hudsonmodel_label1.dart';
part 'model/hudsonmodel_list_view.dart';
part 'model/hudsonmodel_queue.dart';
part 'model/hudsonmodel_queue_blocked_item.dart';
part 'model/hudsonmodel_queue_left_item.dart';
part 'model/hudsonmodel_string_parameter_definition.dart';
part 'model/hudsonmodel_string_parameter_value.dart';
part 'model/hudsonnode_monitors_disk_space_monitor_descriptor_disk_space.dart';
part 'model/hudsonnode_monitors_response_time_monitor_data.dart';
part 'model/hudsonnode_monitors_swap_space_monitor_memory_usage2.dart';
part 'model/hudsonscm_empty_change_log_set.dart';
part 'model/hudsonscm_null_scm.dart';
part 'model/hudsonsecuritycsrf_default_crumb_issuer.dart';
part 'model/hudsonutil_clock_difference.dart';
part 'model/iojenkinsblueoceanresthal_link.dart';
part 'model/iojenkinsblueoceanrestimplpipeline_branch_impl.dart';
part 'model/iojenkinsblueoceanrestimplpipeline_branch_impl_permissions.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_extension_class_container_impl1.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_extension_class_container_impl1_links.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_extension_class_container_impl1_map.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_extension_class_impl.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_extension_class_impl_links.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_pipeline_folder_impl.dart';
part 'model/iojenkinsblueoceanserviceembeddedrest_pipeline_impl.dart';
part 'model/jenkinsmodel_unlabeled_load_statistics.dart';
part 'model/swaggyjenkins_organisation.dart';
part 'model/swaggyjenkins_pipeline.dart';
part 'model/swaggyjenkins_pipeline_latest_run.dart';
part 'model/swaggyjenkins_pipeline_latest_runartifacts.dart';
part 'model/swaggyjenkins_user.dart';


ApiClient defaultApiClient = new ApiClient();

