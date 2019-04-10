package = "openapi-client"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
Jenkins API clients generated from Swagger / Open API specification]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapi-client.api.base_access_api"] = "openapi-client/api/base_access_api.lua";
		["openapi-client.api.blue_ocean_api"] = "openapi-client/api/blue_ocean_api.lua";
		["openapi-client.api.remote_access_api"] = "openapi-client/api/remote_access_api.lua";
		["openapi-client.model.all_view"] = "openapi-client/model/all_view.lua";
		["openapi-client.model.body"] = "openapi-client/model/body.lua";
		["openapi-client.model.branch_impl"] = "openapi-client/model/branch_impl.lua";
		["openapi-client.model.branch_impllinks"] = "openapi-client/model/branch_impllinks.lua";
		["openapi-client.model.branch_implpermissions"] = "openapi-client/model/branch_implpermissions.lua";
		["openapi-client.model.cause_action"] = "openapi-client/model/cause_action.lua";
		["openapi-client.model.cause_user_id_cause"] = "openapi-client/model/cause_user_id_cause.lua";
		["openapi-client.model.classes_by_class"] = "openapi-client/model/classes_by_class.lua";
		["openapi-client.model.clock_difference"] = "openapi-client/model/clock_difference.lua";
		["openapi-client.model.computer_set"] = "openapi-client/model/computer_set.lua";
		["openapi-client.model.default_crumb_issuer"] = "openapi-client/model/default_crumb_issuer.lua";
		["openapi-client.model.disk_space_monitor_descriptor_disk_space"] = "openapi-client/model/disk_space_monitor_descriptor_disk_space.lua";
		["openapi-client.model.empty_change_log_set"] = "openapi-client/model/empty_change_log_set.lua";
		["openapi-client.model.extension_class_container_impl1"] = "openapi-client/model/extension_class_container_impl1.lua";
		["openapi-client.model.extension_class_container_impl1links"] = "openapi-client/model/extension_class_container_impl1links.lua";
		["openapi-client.model.extension_class_container_impl1map"] = "openapi-client/model/extension_class_container_impl1map.lua";
		["openapi-client.model.extension_class_impl"] = "openapi-client/model/extension_class_impl.lua";
		["openapi-client.model.extension_class_impllinks"] = "openapi-client/model/extension_class_impllinks.lua";
		["openapi-client.model.favorite_impl"] = "openapi-client/model/favorite_impl.lua";
		["openapi-client.model.favorite_impllinks"] = "openapi-client/model/favorite_impllinks.lua";
		["openapi-client.model.free_style_build"] = "openapi-client/model/free_style_build.lua";
		["openapi-client.model.free_style_project"] = "openapi-client/model/free_style_project.lua";
		["openapi-client.model.free_style_projectactions"] = "openapi-client/model/free_style_projectactions.lua";
		["openapi-client.model.free_style_projecthealth_report"] = "openapi-client/model/free_style_projecthealth_report.lua";
		["openapi-client.model.generic_resource"] = "openapi-client/model/generic_resource.lua";
		["openapi-client.model.github_content"] = "openapi-client/model/github_content.lua";
		["openapi-client.model.github_file"] = "openapi-client/model/github_file.lua";
		["openapi-client.model.github_organization"] = "openapi-client/model/github_organization.lua";
		["openapi-client.model.github_organizationlinks"] = "openapi-client/model/github_organizationlinks.lua";
		["openapi-client.model.github_repositories"] = "openapi-client/model/github_repositories.lua";
		["openapi-client.model.github_repositorieslinks"] = "openapi-client/model/github_repositorieslinks.lua";
		["openapi-client.model.github_repository"] = "openapi-client/model/github_repository.lua";
		["openapi-client.model.github_repositorylinks"] = "openapi-client/model/github_repositorylinks.lua";
		["openapi-client.model.github_repositorypermissions"] = "openapi-client/model/github_repositorypermissions.lua";
		["openapi-client.model.github_respository_container"] = "openapi-client/model/github_respository_container.lua";
		["openapi-client.model.github_respository_containerlinks"] = "openapi-client/model/github_respository_containerlinks.lua";
		["openapi-client.model.github_scm"] = "openapi-client/model/github_scm.lua";
		["openapi-client.model.github_scmlinks"] = "openapi-client/model/github_scmlinks.lua";
		["openapi-client.model.hudson"] = "openapi-client/model/hudson.lua";
		["openapi-client.model.hudson_master_computer"] = "openapi-client/model/hudson_master_computer.lua";
		["openapi-client.model.hudson_master_computerexecutors"] = "openapi-client/model/hudson_master_computerexecutors.lua";
		["openapi-client.model.hudson_master_computermonitor_data"] = "openapi-client/model/hudson_master_computermonitor_data.lua";
		["openapi-client.model.hudsonassigned_labels"] = "openapi-client/model/hudsonassigned_labels.lua";
		["openapi-client.model.input_step_impl"] = "openapi-client/model/input_step_impl.lua";
		["openapi-client.model.input_step_impllinks"] = "openapi-client/model/input_step_impllinks.lua";
		["openapi-client.model.label1"] = "openapi-client/model/label1.lua";
		["openapi-client.model.link"] = "openapi-client/model/link.lua";
		["openapi-client.model.list_view"] = "openapi-client/model/list_view.lua";
		["openapi-client.model.multibranch_pipeline"] = "openapi-client/model/multibranch_pipeline.lua";
		["openapi-client.model.null_scm"] = "openapi-client/model/null_scm.lua";
		["openapi-client.model.organisation"] = "openapi-client/model/organisation.lua";
		["openapi-client.model.organisations"] = "openapi-client/model/organisations.lua";
		["openapi-client.model.pipeline"] = "openapi-client/model/pipeline.lua";
		["openapi-client.model.pipeline_activities"] = "openapi-client/model/pipeline_activities.lua";
		["openapi-client.model.pipeline_activity"] = "openapi-client/model/pipeline_activity.lua";
		["openapi-client.model.pipeline_activityartifacts"] = "openapi-client/model/pipeline_activityartifacts.lua";
		["openapi-client.model.pipeline_branches"] = "openapi-client/model/pipeline_branches.lua";
		["openapi-client.model.pipeline_branchesitem"] = "openapi-client/model/pipeline_branchesitem.lua";
		["openapi-client.model.pipeline_branchesitemlatest_run"] = "openapi-client/model/pipeline_branchesitemlatest_run.lua";
		["openapi-client.model.pipeline_branchesitempull_request"] = "openapi-client/model/pipeline_branchesitempull_request.lua";
		["openapi-client.model.pipeline_branchesitempull_requestlinks"] = "openapi-client/model/pipeline_branchesitempull_requestlinks.lua";
		["openapi-client.model.pipeline_folder_impl"] = "openapi-client/model/pipeline_folder_impl.lua";
		["openapi-client.model.pipeline_impl"] = "openapi-client/model/pipeline_impl.lua";
		["openapi-client.model.pipeline_impllinks"] = "openapi-client/model/pipeline_impllinks.lua";
		["openapi-client.model.pipeline_queue"] = "openapi-client/model/pipeline_queue.lua";
		["openapi-client.model.pipeline_run"] = "openapi-client/model/pipeline_run.lua";
		["openapi-client.model.pipeline_run_impl"] = "openapi-client/model/pipeline_run_impl.lua";
		["openapi-client.model.pipeline_run_impllinks"] = "openapi-client/model/pipeline_run_impllinks.lua";
		["openapi-client.model.pipeline_run_node"] = "openapi-client/model/pipeline_run_node.lua";
		["openapi-client.model.pipeline_run_node_steps"] = "openapi-client/model/pipeline_run_node_steps.lua";
		["openapi-client.model.pipeline_run_nodeedges"] = "openapi-client/model/pipeline_run_nodeedges.lua";
		["openapi-client.model.pipeline_run_nodes"] = "openapi-client/model/pipeline_run_nodes.lua";
		["openapi-client.model.pipeline_run_steps"] = "openapi-client/model/pipeline_run_steps.lua";
		["openapi-client.model.pipeline_runartifacts"] = "openapi-client/model/pipeline_runartifacts.lua";
		["openapi-client.model.pipeline_runs"] = "openapi-client/model/pipeline_runs.lua";
		["openapi-client.model.pipeline_step_impl"] = "openapi-client/model/pipeline_step_impl.lua";
		["openapi-client.model.pipeline_step_impllinks"] = "openapi-client/model/pipeline_step_impllinks.lua";
		["openapi-client.model.pipelinelatest_run"] = "openapi-client/model/pipelinelatest_run.lua";
		["openapi-client.model.pipelinelatest_runartifacts"] = "openapi-client/model/pipelinelatest_runartifacts.lua";
		["openapi-client.model.pipelines"] = "openapi-client/model/pipelines.lua";
		["openapi-client.model.queue"] = "openapi-client/model/queue.lua";
		["openapi-client.model.queue_blocked_item"] = "openapi-client/model/queue_blocked_item.lua";
		["openapi-client.model.queue_item_impl"] = "openapi-client/model/queue_item_impl.lua";
		["openapi-client.model.queue_left_item"] = "openapi-client/model/queue_left_item.lua";
		["openapi-client.model.response_time_monitor_data"] = "openapi-client/model/response_time_monitor_data.lua";
		["openapi-client.model.scm_organisations"] = "openapi-client/model/scm_organisations.lua";
		["openapi-client.model.string_parameter_definition"] = "openapi-client/model/string_parameter_definition.lua";
		["openapi-client.model.string_parameter_value"] = "openapi-client/model/string_parameter_value.lua";
		["openapi-client.model.swap_space_monitor_memory_usage2"] = "openapi-client/model/swap_space_monitor_memory_usage2.lua";
		["openapi-client.model.unlabeled_load_statistics"] = "openapi-client/model/unlabeled_load_statistics.lua";
		["openapi-client.model.user"] = "openapi-client/model/user.lua";
		["openapi-client.model.user_favorites"] = "openapi-client/model/user_favorites.lua";
		["openapi-client.model.users"] = "openapi-client/model/users.lua";
	}
}
