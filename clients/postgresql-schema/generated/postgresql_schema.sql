--
-- Schema objects for PostgreSQL
-- "Swaggy Jenkins"
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--

--
-- DROP OBJECTS
-- (remove comment prefix to start using DROP commands)
--
-- TABLES
--
-- DROP TABLE IF EXISTS all_view;
-- DROP TABLE IF EXISTS branch_impl;
-- DROP TABLE IF EXISTS branch_impllinks;
-- DROP TABLE IF EXISTS branch_implpermissions;
-- DROP TABLE IF EXISTS cause_action;
-- DROP TABLE IF EXISTS cause_user_id_cause;
-- DROP TABLE IF EXISTS classes_by_class;
-- DROP TABLE IF EXISTS clock_difference;
-- DROP TABLE IF EXISTS computer_set;
-- DROP TABLE IF EXISTS default_crumb_issuer;
-- DROP TABLE IF EXISTS disk_space_monitor_descriptor_disk_space;
-- DROP TABLE IF EXISTS empty_change_log_set;
-- DROP TABLE IF EXISTS extension_class_container_impl1;
-- DROP TABLE IF EXISTS extension_class_container_impl1links;
-- DROP TABLE IF EXISTS extension_class_container_impl1map;
-- DROP TABLE IF EXISTS extension_class_impl;
-- DROP TABLE IF EXISTS extension_class_impllinks;
-- DROP TABLE IF EXISTS favorite_impl;
-- DROP TABLE IF EXISTS favorite_impllinks;
-- DROP TABLE IF EXISTS free_style_build;
-- DROP TABLE IF EXISTS free_style_project;
-- DROP TABLE IF EXISTS free_style_projectactions;
-- DROP TABLE IF EXISTS free_style_projecthealth_report;
-- DROP TABLE IF EXISTS generic_resource;
-- DROP TABLE IF EXISTS github_content;
-- DROP TABLE IF EXISTS github_file;
-- DROP TABLE IF EXISTS github_organization;
-- DROP TABLE IF EXISTS github_organizationlinks;
-- DROP TABLE IF EXISTS github_repositories;
-- DROP TABLE IF EXISTS github_repositorieslinks;
-- DROP TABLE IF EXISTS github_repository;
-- DROP TABLE IF EXISTS github_repositorylinks;
-- DROP TABLE IF EXISTS github_repositorypermissions;
-- DROP TABLE IF EXISTS github_respository_container;
-- DROP TABLE IF EXISTS github_respository_containerlinks;
-- DROP TABLE IF EXISTS github_scm;
-- DROP TABLE IF EXISTS github_scmlinks;
-- DROP TABLE IF EXISTS hudson;
-- DROP TABLE IF EXISTS hudson_master_computer;
-- DROP TABLE IF EXISTS hudson_master_computerexecutors;
-- DROP TABLE IF EXISTS hudson_master_computermonitor_data;
-- DROP TABLE IF EXISTS hudsonassigned_labels;
-- DROP TABLE IF EXISTS input_step_impl;
-- DROP TABLE IF EXISTS input_step_impllinks;
-- DROP TABLE IF EXISTS label1;
-- DROP TABLE IF EXISTS "link";
-- DROP TABLE IF EXISTS list_view;
-- DROP TABLE IF EXISTS multibranch_pipeline;
-- DROP TABLE IF EXISTS null_scm;
-- DROP TABLE IF EXISTS organisation;
-- DROP TABLE IF EXISTS pipeline;
-- DROP TABLE IF EXISTS pipeline_activity;
-- DROP TABLE IF EXISTS pipeline_activityartifacts;
-- DROP TABLE IF EXISTS pipeline_branchesitem;
-- DROP TABLE IF EXISTS pipeline_branchesitemlatest_run;
-- DROP TABLE IF EXISTS pipeline_branchesitempull_request;
-- DROP TABLE IF EXISTS pipeline_branchesitempull_requestlinks;
-- DROP TABLE IF EXISTS pipeline_folder_impl;
-- DROP TABLE IF EXISTS pipeline_impl;
-- DROP TABLE IF EXISTS pipeline_impllinks;
-- DROP TABLE IF EXISTS pipeline_run;
-- DROP TABLE IF EXISTS pipeline_run_impl;
-- DROP TABLE IF EXISTS pipeline_run_impllinks;
-- DROP TABLE IF EXISTS pipeline_run_node;
-- DROP TABLE IF EXISTS pipeline_run_nodeedges;
-- DROP TABLE IF EXISTS pipeline_runartifacts;
-- DROP TABLE IF EXISTS pipeline_step_impl;
-- DROP TABLE IF EXISTS pipeline_step_impllinks;
-- DROP TABLE IF EXISTS pipelinelatest_run;
-- DROP TABLE IF EXISTS pipelinelatest_runartifacts;
-- DROP TABLE IF EXISTS queue;
-- DROP TABLE IF EXISTS queue_blocked_item;
-- DROP TABLE IF EXISTS queue_item_impl;
-- DROP TABLE IF EXISTS queue_left_item;
-- DROP TABLE IF EXISTS response_time_monitor_data;
-- DROP TABLE IF EXISTS string_parameter_definition;
-- DROP TABLE IF EXISTS string_parameter_value;
-- DROP TABLE IF EXISTS swap_space_monitor_memory_usage2;
-- DROP TABLE IF EXISTS unlabeled_load_statistics;
-- DROP TABLE IF EXISTS "user";

--
-- TYPES
--


--
-- CREATE OBJECTS
--
-- TYPES
--

--
-- TABLES
--
--
-- Table 'all_view' generated from model 'AllView'
--
CREATE TABLE IF NOT EXISTS all_view (
    _class TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL
);
COMMENT ON TABLE all_view IS 'Original model name - AllView.';

--
-- Table 'branch_impl' generated from model 'BranchImpl'
--
CREATE TABLE IF NOT EXISTS branch_impl (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    full_display_name TEXT DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    parameters JSON DEFAULT NULL,
    permissions TEXT DEFAULT NULL,
    weather_score INTEGER DEFAULT NULL,
    pull_request TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    latest_run TEXT DEFAULT NULL
);
COMMENT ON TABLE branch_impl IS 'Original model name - BranchImpl.';
COMMENT ON COLUMN branch_impl.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN branch_impl.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN branch_impl.full_display_name IS 'Original param name - fullDisplayName.';
COMMENT ON COLUMN branch_impl.full_name IS 'Original param name - fullName.';
COMMENT ON COLUMN branch_impl.weather_score IS 'Original param name - weatherScore.';
COMMENT ON COLUMN branch_impl.pull_request IS 'Original param name - pullRequest.';
COMMENT ON COLUMN branch_impl.latest_run IS 'Original param name - latestRun.';

--
-- Table 'branch_impllinks' generated from model 'BranchImpllinks'
--
CREATE TABLE IF NOT EXISTS branch_impllinks (
    "self" TEXT DEFAULT NULL,
    actions TEXT DEFAULT NULL,
    runs TEXT DEFAULT NULL,
    queue TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE branch_impllinks IS 'Original model name - BranchImpllinks.';

--
-- Table 'branch_implpermissions' generated from model 'BranchImplpermissions'
--
CREATE TABLE IF NOT EXISTS branch_implpermissions (
    "create" BOOLEAN DEFAULT NULL,
    "read" BOOLEAN DEFAULT NULL,
    "start" BOOLEAN DEFAULT NULL,
    stop BOOLEAN DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE branch_implpermissions IS 'Original model name - BranchImplpermissions.';

--
-- Table 'cause_action' generated from model 'CauseAction'
--
CREATE TABLE IF NOT EXISTS cause_action (
    _class TEXT DEFAULT NULL,
    causes JSON DEFAULT NULL
);
COMMENT ON TABLE cause_action IS 'Original model name - CauseAction.';

--
-- Table 'cause_user_id_cause' generated from model 'CauseUserIdCause'
--
CREATE TABLE IF NOT EXISTS cause_user_id_cause (
    _class TEXT DEFAULT NULL,
    short_description TEXT DEFAULT NULL,
    user_id TEXT DEFAULT NULL,
    user_name TEXT DEFAULT NULL
);
COMMENT ON TABLE cause_user_id_cause IS 'Original model name - CauseUserIdCause.';
COMMENT ON COLUMN cause_user_id_cause.short_description IS 'Original param name - shortDescription.';
COMMENT ON COLUMN cause_user_id_cause.user_id IS 'Original param name - userId.';
COMMENT ON COLUMN cause_user_id_cause.user_name IS 'Original param name - userName.';

--
-- Table 'classes_by_class' generated from model 'ClassesByClass'
--
CREATE TABLE IF NOT EXISTS classes_by_class (
    classes JSON DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE classes_by_class IS 'Original model name - ClassesByClass.';

--
-- Table 'clock_difference' generated from model 'ClockDifference'
--
CREATE TABLE IF NOT EXISTS clock_difference (
    _class TEXT DEFAULT NULL,
    diff INTEGER DEFAULT NULL
);
COMMENT ON TABLE clock_difference IS 'Original model name - ClockDifference.';

--
-- Table 'computer_set' generated from model 'ComputerSet'
--
CREATE TABLE IF NOT EXISTS computer_set (
    _class TEXT DEFAULT NULL,
    busy_executors INTEGER DEFAULT NULL,
    computer JSON DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    total_executors INTEGER DEFAULT NULL
);
COMMENT ON TABLE computer_set IS 'Original model name - ComputerSet.';
COMMENT ON COLUMN computer_set.busy_executors IS 'Original param name - busyExecutors.';
COMMENT ON COLUMN computer_set.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN computer_set.total_executors IS 'Original param name - totalExecutors.';

--
-- Table 'default_crumb_issuer' generated from model 'DefaultCrumbIssuer'
--
CREATE TABLE IF NOT EXISTS default_crumb_issuer (
    _class TEXT DEFAULT NULL,
    crumb TEXT DEFAULT NULL,
    crumb_request_field TEXT DEFAULT NULL
);
COMMENT ON TABLE default_crumb_issuer IS 'Original model name - DefaultCrumbIssuer.';
COMMENT ON COLUMN default_crumb_issuer.crumb_request_field IS 'Original param name - crumbRequestField.';

--
-- Table 'disk_space_monitor_descriptor_disk_space' generated from model 'DiskSpaceMonitorDescriptorDiskSpace'
--
CREATE TABLE IF NOT EXISTS disk_space_monitor_descriptor_disk_space (
    _class TEXT DEFAULT NULL,
    "timestamp" INTEGER DEFAULT NULL,
    "path" TEXT DEFAULT NULL,
    "size" INTEGER DEFAULT NULL
);
COMMENT ON TABLE disk_space_monitor_descriptor_disk_space IS 'Original model name - DiskSpaceMonitorDescriptorDiskSpace.';

--
-- Table 'empty_change_log_set' generated from model 'EmptyChangeLogSet'
--
CREATE TABLE IF NOT EXISTS empty_change_log_set (
    _class TEXT DEFAULT NULL,
    kind TEXT DEFAULT NULL
);
COMMENT ON TABLE empty_change_log_set IS 'Original model name - EmptyChangeLogSet.';

--
-- Table 'extension_class_container_impl1' generated from model 'ExtensionClassContainerImpl1'
--
CREATE TABLE IF NOT EXISTS extension_class_container_impl1 (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    "map" TEXT DEFAULT NULL
);
COMMENT ON TABLE extension_class_container_impl1 IS 'Original model name - ExtensionClassContainerImpl1.';

--
-- Table 'extension_class_container_impl1links' generated from model 'ExtensionClassContainerImpl1links'
--
CREATE TABLE IF NOT EXISTS extension_class_container_impl1links (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE extension_class_container_impl1links IS 'Original model name - ExtensionClassContainerImpl1links.';

--
-- Table 'extension_class_container_impl1map' generated from model 'ExtensionClassContainerImpl1map'
--
CREATE TABLE IF NOT EXISTS extension_class_container_impl1map (
    io/jenkins/blueocean/service/embedded/rest/pipeline_impl TEXT DEFAULT NULL,
    io/jenkins/blueocean/service/embedded/rest/multi_branch_pipelin TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE extension_class_container_impl1map IS 'Original model name - ExtensionClassContainerImpl1map.';
COMMENT ON COLUMN extension_class_container_impl1map.io/jenkins/blueocean/service/embedded/rest/pipeline_impl IS 'Original param name - io.jenkins.blueocean.service.embedded.rest.PipelineImpl.';
COMMENT ON COLUMN extension_class_container_impl1map.io/jenkins/blueocean/service/embedded/rest/multi_branch_pipelin IS 'Original param name - io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl.';

--
-- Table 'extension_class_impl' generated from model 'ExtensionClassImpl'
--
CREATE TABLE IF NOT EXISTS extension_class_impl (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    classes JSON DEFAULT NULL
);
COMMENT ON TABLE extension_class_impl IS 'Original model name - ExtensionClassImpl.';

--
-- Table 'extension_class_impllinks' generated from model 'ExtensionClassImpllinks'
--
CREATE TABLE IF NOT EXISTS extension_class_impllinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE extension_class_impllinks IS 'Original model name - ExtensionClassImpllinks.';

--
-- Table 'favorite_impl' generated from model 'FavoriteImpl'
--
CREATE TABLE IF NOT EXISTS favorite_impl (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    item TEXT DEFAULT NULL
);
COMMENT ON TABLE favorite_impl IS 'Original model name - FavoriteImpl.';

--
-- Table 'favorite_impllinks' generated from model 'FavoriteImpllinks'
--
CREATE TABLE IF NOT EXISTS favorite_impllinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE favorite_impllinks IS 'Original model name - FavoriteImpllinks.';

--
-- Table 'free_style_build' generated from model 'FreeStyleBuild'
--
CREATE TABLE IF NOT EXISTS free_style_build (
    _class TEXT DEFAULT NULL,
    "number" INTEGER DEFAULT NULL,
    url TEXT DEFAULT NULL,
    actions JSON DEFAULT NULL,
    building BOOLEAN DEFAULT NULL,
    description TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    duration INTEGER DEFAULT NULL,
    estimated_duration INTEGER DEFAULT NULL,
    executor TEXT DEFAULT NULL,
    full_display_name TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    keep_log BOOLEAN DEFAULT NULL,
    queue_id INTEGER DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    "timestamp" INTEGER DEFAULT NULL,
    built_on TEXT DEFAULT NULL,
    change_set TEXT DEFAULT NULL
);
COMMENT ON TABLE free_style_build IS 'Original model name - FreeStyleBuild.';
COMMENT ON COLUMN free_style_build.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN free_style_build.estimated_duration IS 'Original param name - estimatedDuration.';
COMMENT ON COLUMN free_style_build.full_display_name IS 'Original param name - fullDisplayName.';
COMMENT ON COLUMN free_style_build.keep_log IS 'Original param name - keepLog.';
COMMENT ON COLUMN free_style_build.queue_id IS 'Original param name - queueId.';
COMMENT ON COLUMN free_style_build.built_on IS 'Original param name - builtOn.';
COMMENT ON COLUMN free_style_build.change_set IS 'Original param name - changeSet.';

--
-- Table 'free_style_project' generated from model 'FreeStyleProject'
--
CREATE TABLE IF NOT EXISTS free_style_project (
    _class TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL,
    color TEXT DEFAULT NULL,
    actions JSON DEFAULT NULL,
    description TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    display_name_or_null TEXT DEFAULT NULL,
    full_display_name TEXT DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    buildable BOOLEAN DEFAULT NULL,
    builds JSON DEFAULT NULL,
    first_build TEXT DEFAULT NULL,
    health_report JSON DEFAULT NULL,
    in_queue BOOLEAN DEFAULT NULL,
    keep_dependencies BOOLEAN DEFAULT NULL,
    last_build TEXT DEFAULT NULL,
    last_completed_build TEXT DEFAULT NULL,
    last_failed_build TEXT DEFAULT NULL,
    last_stable_build TEXT DEFAULT NULL,
    last_successful_build TEXT DEFAULT NULL,
    last_unstable_build TEXT DEFAULT NULL,
    last_unsuccessful_build TEXT DEFAULT NULL,
    next_build_number INTEGER DEFAULT NULL,
    queue_item TEXT DEFAULT NULL,
    concurrent_build BOOLEAN DEFAULT NULL,
    scm TEXT DEFAULT NULL
);
COMMENT ON TABLE free_style_project IS 'Original model name - FreeStyleProject.';
COMMENT ON COLUMN free_style_project.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN free_style_project.display_name_or_null IS 'Original param name - displayNameOrNull.';
COMMENT ON COLUMN free_style_project.full_display_name IS 'Original param name - fullDisplayName.';
COMMENT ON COLUMN free_style_project.full_name IS 'Original param name - fullName.';
COMMENT ON COLUMN free_style_project.first_build IS 'Original param name - firstBuild.';
COMMENT ON COLUMN free_style_project.health_report IS 'Original param name - healthReport.';
COMMENT ON COLUMN free_style_project.in_queue IS 'Original param name - inQueue.';
COMMENT ON COLUMN free_style_project.keep_dependencies IS 'Original param name - keepDependencies.';
COMMENT ON COLUMN free_style_project.last_build IS 'Original param name - lastBuild.';
COMMENT ON COLUMN free_style_project.last_completed_build IS 'Original param name - lastCompletedBuild.';
COMMENT ON COLUMN free_style_project.last_failed_build IS 'Original param name - lastFailedBuild.';
COMMENT ON COLUMN free_style_project.last_stable_build IS 'Original param name - lastStableBuild.';
COMMENT ON COLUMN free_style_project.last_successful_build IS 'Original param name - lastSuccessfulBuild.';
COMMENT ON COLUMN free_style_project.last_unstable_build IS 'Original param name - lastUnstableBuild.';
COMMENT ON COLUMN free_style_project.last_unsuccessful_build IS 'Original param name - lastUnsuccessfulBuild.';
COMMENT ON COLUMN free_style_project.next_build_number IS 'Original param name - nextBuildNumber.';
COMMENT ON COLUMN free_style_project.queue_item IS 'Original param name - queueItem.';
COMMENT ON COLUMN free_style_project.concurrent_build IS 'Original param name - concurrentBuild.';

--
-- Table 'free_style_projectactions' generated from model 'FreeStyleProjectactions'
--
CREATE TABLE IF NOT EXISTS free_style_projectactions (
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE free_style_projectactions IS 'Original model name - FreeStyleProjectactions.';

--
-- Table 'free_style_projecthealth_report' generated from model 'FreeStyleProjecthealthReport'
--
CREATE TABLE IF NOT EXISTS free_style_projecthealth_report (
    description TEXT DEFAULT NULL,
    icon_class_name TEXT DEFAULT NULL,
    icon_url TEXT DEFAULT NULL,
    score INTEGER DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE free_style_projecthealth_report IS 'Original model name - FreeStyleProjecthealthReport.';
COMMENT ON COLUMN free_style_projecthealth_report.icon_class_name IS 'Original param name - iconClassName.';
COMMENT ON COLUMN free_style_projecthealth_report.icon_url IS 'Original param name - iconUrl.';

--
-- Table 'generic_resource' generated from model 'GenericResource'
--
CREATE TABLE IF NOT EXISTS generic_resource (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL
);
COMMENT ON TABLE generic_resource IS 'Original model name - GenericResource.';
COMMENT ON COLUMN generic_resource.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN generic_resource.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN generic_resource.start_time IS 'Original param name - startTime.';

--
-- Table 'github_content' generated from model 'GithubContent'
--
CREATE TABLE IF NOT EXISTS github_content (
    "name" TEXT DEFAULT NULL,
    sha TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL,
    repo TEXT DEFAULT NULL,
    "size" INTEGER DEFAULT NULL,
    "owner" TEXT DEFAULT NULL,
    "path" TEXT DEFAULT NULL,
    base64_data TEXT DEFAULT NULL
);
COMMENT ON TABLE github_content IS 'Original model name - GithubContent.';
COMMENT ON COLUMN github_content.base64_data IS 'Original param name - base64Data.';

--
-- Table 'github_file' generated from model 'GithubFile'
--
CREATE TABLE IF NOT EXISTS github_file (
    "content" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_file IS 'Original model name - GithubFile.';

--
-- Table 'github_organization' generated from model 'GithubOrganization'
--
CREATE TABLE IF NOT EXISTS github_organization (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    jenkins_organization_pipeline BOOLEAN DEFAULT NULL,
    "name" TEXT DEFAULT NULL
);
COMMENT ON TABLE github_organization IS 'Original model name - GithubOrganization.';
COMMENT ON COLUMN github_organization.jenkins_organization_pipeline IS 'Original param name - jenkinsOrganizationPipeline.';

--
-- Table 'github_organizationlinks' generated from model 'GithubOrganizationlinks'
--
CREATE TABLE IF NOT EXISTS github_organizationlinks (
    repositories TEXT DEFAULT NULL,
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_organizationlinks IS 'Original model name - GithubOrganizationlinks.';

--
-- Table 'github_repositories' generated from model 'GithubRepositories'
--
CREATE TABLE IF NOT EXISTS github_repositories (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    items JSON DEFAULT NULL,
    last_page INTEGER DEFAULT NULL,
    next_page INTEGER DEFAULT NULL,
    page_size INTEGER DEFAULT NULL
);
COMMENT ON TABLE github_repositories IS 'Original model name - GithubRepositories.';
COMMENT ON COLUMN github_repositories.last_page IS 'Original param name - lastPage.';
COMMENT ON COLUMN github_repositories.next_page IS 'Original param name - nextPage.';
COMMENT ON COLUMN github_repositories.page_size IS 'Original param name - pageSize.';

--
-- Table 'github_repositorieslinks' generated from model 'GithubRepositorieslinks'
--
CREATE TABLE IF NOT EXISTS github_repositorieslinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_repositorieslinks IS 'Original model name - GithubRepositorieslinks.';

--
-- Table 'github_repository' generated from model 'GithubRepository'
--
CREATE TABLE IF NOT EXISTS github_repository (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    default_branch TEXT DEFAULT NULL,
    description TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    permissions TEXT DEFAULT NULL,
    "private" BOOLEAN DEFAULT NULL,
    full_name TEXT DEFAULT NULL
);
COMMENT ON TABLE github_repository IS 'Original model name - GithubRepository.';
COMMENT ON COLUMN github_repository.default_branch IS 'Original param name - defaultBranch.';
COMMENT ON COLUMN github_repository.full_name IS 'Original param name - fullName.';

--
-- Table 'github_repositorylinks' generated from model 'GithubRepositorylinks'
--
CREATE TABLE IF NOT EXISTS github_repositorylinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_repositorylinks IS 'Original model name - GithubRepositorylinks.';

--
-- Table 'github_repositorypermissions' generated from model 'GithubRepositorypermissions'
--
CREATE TABLE IF NOT EXISTS github_repositorypermissions (
    "admin" BOOLEAN DEFAULT NULL,
    push BOOLEAN DEFAULT NULL,
    pull BOOLEAN DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_repositorypermissions IS 'Original model name - GithubRepositorypermissions.';

--
-- Table 'github_respository_container' generated from model 'GithubRespositoryContainer'
--
CREATE TABLE IF NOT EXISTS github_respository_container (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    repositories TEXT DEFAULT NULL
);
COMMENT ON TABLE github_respository_container IS 'Original model name - GithubRespositoryContainer.';

--
-- Table 'github_respository_containerlinks' generated from model 'GithubRespositoryContainerlinks'
--
CREATE TABLE IF NOT EXISTS github_respository_containerlinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_respository_containerlinks IS 'Original model name - GithubRespositoryContainerlinks.';

--
-- Table 'github_scm' generated from model 'GithubScm'
--
CREATE TABLE IF NOT EXISTS github_scm (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    credential_id TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    "uri" TEXT DEFAULT NULL
);
COMMENT ON TABLE github_scm IS 'Original model name - GithubScm.';
COMMENT ON COLUMN github_scm.credential_id IS 'Original param name - credentialId.';

--
-- Table 'github_scmlinks' generated from model 'GithubScmlinks'
--
CREATE TABLE IF NOT EXISTS github_scmlinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE github_scmlinks IS 'Original model name - GithubScmlinks.';

--
-- Table 'hudson' generated from model 'Hudson'
--
CREATE TABLE IF NOT EXISTS hudson (
    _class TEXT DEFAULT NULL,
    assigned_labels JSON DEFAULT NULL,
    "mode" TEXT DEFAULT NULL,
    node_description TEXT DEFAULT NULL,
    node_name TEXT DEFAULT NULL,
    num_executors INTEGER DEFAULT NULL,
    description TEXT DEFAULT NULL,
    jobs JSON DEFAULT NULL,
    primary_view TEXT DEFAULT NULL,
    quieting_down BOOLEAN DEFAULT NULL,
    slave_agent_port INTEGER DEFAULT NULL,
    unlabeled_load TEXT DEFAULT NULL,
    use_crumbs BOOLEAN DEFAULT NULL,
    use_security BOOLEAN DEFAULT NULL,
    "views" JSON DEFAULT NULL
);
COMMENT ON TABLE hudson IS 'Original model name - Hudson.';
COMMENT ON COLUMN hudson.assigned_labels IS 'Original param name - assignedLabels.';
COMMENT ON COLUMN hudson.node_description IS 'Original param name - nodeDescription.';
COMMENT ON COLUMN hudson.node_name IS 'Original param name - nodeName.';
COMMENT ON COLUMN hudson.num_executors IS 'Original param name - numExecutors.';
COMMENT ON COLUMN hudson.primary_view IS 'Original param name - primaryView.';
COMMENT ON COLUMN hudson.quieting_down IS 'Original param name - quietingDown.';
COMMENT ON COLUMN hudson.slave_agent_port IS 'Original param name - slaveAgentPort.';
COMMENT ON COLUMN hudson.unlabeled_load IS 'Original param name - unlabeledLoad.';
COMMENT ON COLUMN hudson.use_crumbs IS 'Original param name - useCrumbs.';
COMMENT ON COLUMN hudson.use_security IS 'Original param name - useSecurity.';

--
-- Table 'hudson_master_computer' generated from model 'HudsonMasterComputer'
--
CREATE TABLE IF NOT EXISTS hudson_master_computer (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    executors JSON DEFAULT NULL,
    icon TEXT DEFAULT NULL,
    icon_class_name TEXT DEFAULT NULL,
    idle BOOLEAN DEFAULT NULL,
    jnlp_agent BOOLEAN DEFAULT NULL,
    launch_supported BOOLEAN DEFAULT NULL,
    load_statistics TEXT DEFAULT NULL,
    manual_launch_allowed BOOLEAN DEFAULT NULL,
    monitor_data TEXT DEFAULT NULL,
    num_executors INTEGER DEFAULT NULL,
    offline BOOLEAN DEFAULT NULL,
    offline_cause TEXT DEFAULT NULL,
    offline_cause_reason TEXT DEFAULT NULL,
    temporarily_offline BOOLEAN DEFAULT NULL
);
COMMENT ON TABLE hudson_master_computer IS 'Original model name - HudsonMasterComputer.';
COMMENT ON COLUMN hudson_master_computer.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN hudson_master_computer.icon_class_name IS 'Original param name - iconClassName.';
COMMENT ON COLUMN hudson_master_computer.jnlp_agent IS 'Original param name - jnlpAgent.';
COMMENT ON COLUMN hudson_master_computer.launch_supported IS 'Original param name - launchSupported.';
COMMENT ON COLUMN hudson_master_computer.load_statistics IS 'Original param name - loadStatistics.';
COMMENT ON COLUMN hudson_master_computer.manual_launch_allowed IS 'Original param name - manualLaunchAllowed.';
COMMENT ON COLUMN hudson_master_computer.monitor_data IS 'Original param name - monitorData.';
COMMENT ON COLUMN hudson_master_computer.num_executors IS 'Original param name - numExecutors.';
COMMENT ON COLUMN hudson_master_computer.offline_cause IS 'Original param name - offlineCause.';
COMMENT ON COLUMN hudson_master_computer.offline_cause_reason IS 'Original param name - offlineCauseReason.';
COMMENT ON COLUMN hudson_master_computer.temporarily_offline IS 'Original param name - temporarilyOffline.';

--
-- Table 'hudson_master_computerexecutors' generated from model 'HudsonMasterComputerexecutors'
--
CREATE TABLE IF NOT EXISTS hudson_master_computerexecutors (
    current_executable TEXT DEFAULT NULL,
    idle BOOLEAN DEFAULT NULL,
    likely_stuck BOOLEAN DEFAULT NULL,
    "number" INTEGER DEFAULT NULL,
    progress INTEGER DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE hudson_master_computerexecutors IS 'Original model name - HudsonMasterComputerexecutors.';
COMMENT ON COLUMN hudson_master_computerexecutors.current_executable IS 'Original param name - currentExecutable.';
COMMENT ON COLUMN hudson_master_computerexecutors.likely_stuck IS 'Original param name - likelyStuck.';

--
-- Table 'hudson_master_computermonitor_data' generated from model 'HudsonMasterComputermonitorData'
--
CREATE TABLE IF NOT EXISTS hudson_master_computermonitor_data (
    hudson/node_monitors/swap_space_monitor TEXT DEFAULT NULL,
    hudson/node_monitors/temporary_space_monitor TEXT DEFAULT NULL,
    hudson/node_monitors/disk_space_monitor TEXT DEFAULT NULL,
    hudson/node_monitors/architecture_monitor TEXT DEFAULT NULL,
    hudson/node_monitors/response_time_monitor TEXT DEFAULT NULL,
    hudson/node_monitors/clock_monitor TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE hudson_master_computermonitor_data IS 'Original model name - HudsonMasterComputermonitorData.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/swap_space_monitor IS 'Original param name - hudson.node_monitors.SwapSpaceMonitor.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/temporary_space_monitor IS 'Original param name - hudson.node_monitors.TemporarySpaceMonitor.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/disk_space_monitor IS 'Original param name - hudson.node_monitors.DiskSpaceMonitor.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/architecture_monitor IS 'Original param name - hudson.node_monitors.ArchitectureMonitor.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/response_time_monitor IS 'Original param name - hudson.node_monitors.ResponseTimeMonitor.';
COMMENT ON COLUMN hudson_master_computermonitor_data.hudson/node_monitors/clock_monitor IS 'Original param name - hudson.node_monitors.ClockMonitor.';

--
-- Table 'hudsonassigned_labels' generated from model 'HudsonassignedLabels'
--
CREATE TABLE IF NOT EXISTS hudsonassigned_labels (
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE hudsonassigned_labels IS 'Original model name - HudsonassignedLabels.';

--
-- Table 'input_step_impl' generated from model 'InputStepImpl'
--
CREATE TABLE IF NOT EXISTS input_step_impl (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    message TEXT DEFAULT NULL,
    ok TEXT DEFAULT NULL,
    parameters JSON DEFAULT NULL,
    submitter TEXT DEFAULT NULL
);
COMMENT ON TABLE input_step_impl IS 'Original model name - InputStepImpl.';

--
-- Table 'input_step_impllinks' generated from model 'InputStepImpllinks'
--
CREATE TABLE IF NOT EXISTS input_step_impllinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE input_step_impllinks IS 'Original model name - InputStepImpllinks.';

--
-- Table 'label1' generated from model 'Label1'
--
CREATE TABLE IF NOT EXISTS label1 (
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE label1 IS 'Original model name - Label1.';

--
-- Table 'link' generated from model 'Link'
--
CREATE TABLE IF NOT EXISTS "link" (
    _class TEXT DEFAULT NULL,
    href TEXT DEFAULT NULL
);
COMMENT ON TABLE "link" IS 'Original model name - Link.';

--
-- Table 'list_view' generated from model 'ListView'
--
CREATE TABLE IF NOT EXISTS list_view (
    _class TEXT DEFAULT NULL,
    description TEXT DEFAULT NULL,
    jobs JSON DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL
);
COMMENT ON TABLE list_view IS 'Original model name - ListView.';

--
-- Table 'multibranch_pipeline' generated from model 'MultibranchPipeline'
--
CREATE TABLE IF NOT EXISTS multibranch_pipeline (
    display_name TEXT DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    latest_run TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    weather_score INTEGER DEFAULT NULL,
    branch_names JSON DEFAULT NULL,
    number_of_failing_branches INTEGER DEFAULT NULL,
    number_of_failing_pull_requests INTEGER DEFAULT NULL,
    number_of_successful_branches INTEGER DEFAULT NULL,
    number_of_successful_pull_requests INTEGER DEFAULT NULL,
    total_number_of_branches INTEGER DEFAULT NULL,
    total_number_of_pull_requests INTEGER DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE multibranch_pipeline IS 'Original model name - MultibranchPipeline.';
COMMENT ON COLUMN multibranch_pipeline.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN multibranch_pipeline.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN multibranch_pipeline.latest_run IS 'Original param name - latestRun.';
COMMENT ON COLUMN multibranch_pipeline.weather_score IS 'Original param name - weatherScore.';
COMMENT ON COLUMN multibranch_pipeline.branch_names IS 'Original param name - branchNames.';
COMMENT ON COLUMN multibranch_pipeline.number_of_failing_branches IS 'Original param name - numberOfFailingBranches.';
COMMENT ON COLUMN multibranch_pipeline.number_of_failing_pull_requests IS 'Original param name - numberOfFailingPullRequests.';
COMMENT ON COLUMN multibranch_pipeline.number_of_successful_branches IS 'Original param name - numberOfSuccessfulBranches.';
COMMENT ON COLUMN multibranch_pipeline.number_of_successful_pull_requests IS 'Original param name - numberOfSuccessfulPullRequests.';
COMMENT ON COLUMN multibranch_pipeline.total_number_of_branches IS 'Original param name - totalNumberOfBranches.';
COMMENT ON COLUMN multibranch_pipeline.total_number_of_pull_requests IS 'Original param name - totalNumberOfPullRequests.';

--
-- Table 'null_scm' generated from model 'NullSCM'
--
CREATE TABLE IF NOT EXISTS null_scm (
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE null_scm IS 'Original model name - NullSCM.';

--
-- Table 'organisation' generated from model 'Organisation'
--
CREATE TABLE IF NOT EXISTS organisation (
    _class TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL
);
COMMENT ON TABLE organisation IS 'Original model name - Organisation.';

--
-- Table 'pipeline' generated from model 'Pipeline'
--
CREATE TABLE IF NOT EXISTS pipeline (
    _class TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    weather_score INTEGER DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    latest_run TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline IS 'Original model name - Pipeline.';
COMMENT ON COLUMN pipeline.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline.full_name IS 'Original param name - fullName.';
COMMENT ON COLUMN pipeline.weather_score IS 'Original param name - weatherScore.';
COMMENT ON COLUMN pipeline.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline.latest_run IS 'Original param name - latestRun.';

--
-- Table 'pipeline_activity' generated from model 'PipelineActivity'
--
CREATE TABLE IF NOT EXISTS pipeline_activity (
    _class TEXT DEFAULT NULL,
    artifacts JSON DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    en_queue_time TEXT DEFAULT NULL,
    end_time TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    run_summary TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL,
    commit_id TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_activity IS 'Original model name - PipelineActivity.';
COMMENT ON COLUMN pipeline_activity.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_activity.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_activity.en_queue_time IS 'Original param name - enQueueTime.';
COMMENT ON COLUMN pipeline_activity.end_time IS 'Original param name - endTime.';
COMMENT ON COLUMN pipeline_activity.run_summary IS 'Original param name - runSummary.';
COMMENT ON COLUMN pipeline_activity.start_time IS 'Original param name - startTime.';
COMMENT ON COLUMN pipeline_activity.commit_id IS 'Original param name - commitId.';

--
-- Table 'pipeline_activityartifacts' generated from model 'PipelineActivityartifacts'
--
CREATE TABLE IF NOT EXISTS pipeline_activityartifacts (
    "name" TEXT DEFAULT NULL,
    "size" INTEGER DEFAULT NULL,
    url TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_activityartifacts IS 'Original model name - PipelineActivityartifacts.';

--
-- Table 'pipeline_branchesitem' generated from model 'PipelineBranchesitem'
--
CREATE TABLE IF NOT EXISTS pipeline_branchesitem (
    display_name TEXT DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    weather_score INTEGER DEFAULT NULL,
    latest_run TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pull_request TEXT DEFAULT NULL,
    total_number_of_pull_requests INTEGER DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_branchesitem IS 'Original model name - PipelineBranchesitem.';
COMMENT ON COLUMN pipeline_branchesitem.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline_branchesitem.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_branchesitem.weather_score IS 'Original param name - weatherScore.';
COMMENT ON COLUMN pipeline_branchesitem.latest_run IS 'Original param name - latestRun.';
COMMENT ON COLUMN pipeline_branchesitem.pull_request IS 'Original param name - pullRequest.';
COMMENT ON COLUMN pipeline_branchesitem.total_number_of_pull_requests IS 'Original param name - totalNumberOfPullRequests.';

--
-- Table 'pipeline_branchesitemlatest_run' generated from model 'PipelineBranchesitemlatestRun'
--
CREATE TABLE IF NOT EXISTS pipeline_branchesitemlatest_run (
    duration_in_millis INTEGER DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    en_queue_time TEXT DEFAULT NULL,
    end_time TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    run_summary TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL,
    commit_id TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_branchesitemlatest_run IS 'Original model name - PipelineBranchesitemlatestRun.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.en_queue_time IS 'Original param name - enQueueTime.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.end_time IS 'Original param name - endTime.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.run_summary IS 'Original param name - runSummary.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.start_time IS 'Original param name - startTime.';
COMMENT ON COLUMN pipeline_branchesitemlatest_run.commit_id IS 'Original param name - commitId.';

--
-- Table 'pipeline_branchesitempull_request' generated from model 'PipelineBranchesitempullRequest'
--
CREATE TABLE IF NOT EXISTS pipeline_branchesitempull_request (
    _links TEXT DEFAULT NULL,
    author TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    title TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_branchesitempull_request IS 'Original model name - PipelineBranchesitempullRequest.';

--
-- Table 'pipeline_branchesitempull_requestlinks' generated from model 'PipelineBranchesitempullRequestlinks'
--
CREATE TABLE IF NOT EXISTS pipeline_branchesitempull_requestlinks (
    "self" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_branchesitempull_requestlinks IS 'Original model name - PipelineBranchesitempullRequestlinks.';

--
-- Table 'pipeline_folder_impl' generated from model 'PipelineFolderImpl'
--
CREATE TABLE IF NOT EXISTS pipeline_folder_impl (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    number_of_folders INTEGER DEFAULT NULL,
    number_of_pipelines INTEGER DEFAULT NULL
);
COMMENT ON TABLE pipeline_folder_impl IS 'Original model name - PipelineFolderImpl.';
COMMENT ON COLUMN pipeline_folder_impl.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline_folder_impl.full_name IS 'Original param name - fullName.';
COMMENT ON COLUMN pipeline_folder_impl.number_of_folders IS 'Original param name - numberOfFolders.';
COMMENT ON COLUMN pipeline_folder_impl.number_of_pipelines IS 'Original param name - numberOfPipelines.';

--
-- Table 'pipeline_impl' generated from model 'PipelineImpl'
--
CREATE TABLE IF NOT EXISTS pipeline_impl (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    latest_run TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    weather_score INTEGER DEFAULT NULL,
    _links TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_impl IS 'Original model name - PipelineImpl.';
COMMENT ON COLUMN pipeline_impl.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline_impl.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_impl.full_name IS 'Original param name - fullName.';
COMMENT ON COLUMN pipeline_impl.latest_run IS 'Original param name - latestRun.';
COMMENT ON COLUMN pipeline_impl.weather_score IS 'Original param name - weatherScore.';

--
-- Table 'pipeline_impllinks' generated from model 'PipelineImpllinks'
--
CREATE TABLE IF NOT EXISTS pipeline_impllinks (
    "self" TEXT DEFAULT NULL,
    actions TEXT DEFAULT NULL,
    runs TEXT DEFAULT NULL,
    queue TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_impllinks IS 'Original model name - PipelineImpllinks.';

--
-- Table 'pipeline_run' generated from model 'PipelineRun'
--
CREATE TABLE IF NOT EXISTS pipeline_run (
    _class TEXT DEFAULT NULL,
    artifacts JSON DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    en_queue_time TEXT DEFAULT NULL,
    end_time TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    run_summary TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL,
    commit_id TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_run IS 'Original model name - PipelineRun.';
COMMENT ON COLUMN pipeline_run.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_run.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_run.en_queue_time IS 'Original param name - enQueueTime.';
COMMENT ON COLUMN pipeline_run.end_time IS 'Original param name - endTime.';
COMMENT ON COLUMN pipeline_run.run_summary IS 'Original param name - runSummary.';
COMMENT ON COLUMN pipeline_run.start_time IS 'Original param name - startTime.';
COMMENT ON COLUMN pipeline_run.commit_id IS 'Original param name - commitId.';

--
-- Table 'pipeline_run_impl' generated from model 'PipelineRunImpl'
--
CREATE TABLE IF NOT EXISTS pipeline_run_impl (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    en_queue_time TEXT DEFAULT NULL,
    end_time TEXT DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    run_summary TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL,
    commit_id TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_run_impl IS 'Original model name - PipelineRunImpl.';
COMMENT ON COLUMN pipeline_run_impl.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_run_impl.en_queue_time IS 'Original param name - enQueueTime.';
COMMENT ON COLUMN pipeline_run_impl.end_time IS 'Original param name - endTime.';
COMMENT ON COLUMN pipeline_run_impl.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipeline_run_impl.run_summary IS 'Original param name - runSummary.';
COMMENT ON COLUMN pipeline_run_impl.start_time IS 'Original param name - startTime.';
COMMENT ON COLUMN pipeline_run_impl.commit_id IS 'Original param name - commitId.';

--
-- Table 'pipeline_run_impllinks' generated from model 'PipelineRunImpllinks'
--
CREATE TABLE IF NOT EXISTS pipeline_run_impllinks (
    nodes TEXT DEFAULT NULL,
    "log" TEXT DEFAULT NULL,
    "self" TEXT DEFAULT NULL,
    actions TEXT DEFAULT NULL,
    steps TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_run_impllinks IS 'Original model name - PipelineRunImpllinks.';

--
-- Table 'pipeline_run_node' generated from model 'PipelineRunNode'
--
CREATE TABLE IF NOT EXISTS pipeline_run_node (
    _class TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    edges JSON DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_run_node IS 'Original model name - PipelineRunNode.';
COMMENT ON COLUMN pipeline_run_node.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline_run_node.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_run_node.start_time IS 'Original param name - startTime.';

--
-- Table 'pipeline_run_nodeedges' generated from model 'PipelineRunNodeedges'
--
CREATE TABLE IF NOT EXISTS pipeline_run_nodeedges (
    "id" TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_run_nodeedges IS 'Original model name - PipelineRunNodeedges.';

--
-- Table 'pipeline_runartifacts' generated from model 'PipelineRunartifacts'
--
CREATE TABLE IF NOT EXISTS pipeline_runartifacts (
    "name" TEXT DEFAULT NULL,
    "size" INTEGER DEFAULT NULL,
    url TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_runartifacts IS 'Original model name - PipelineRunartifacts.';

--
-- Table 'pipeline_step_impl' generated from model 'PipelineStepImpl'
--
CREATE TABLE IF NOT EXISTS pipeline_step_impl (
    _class TEXT DEFAULT NULL,
    _links TEXT DEFAULT NULL,
    display_name TEXT DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    "input" TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_step_impl IS 'Original model name - PipelineStepImpl.';
COMMENT ON COLUMN pipeline_step_impl.display_name IS 'Original param name - displayName.';
COMMENT ON COLUMN pipeline_step_impl.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipeline_step_impl.start_time IS 'Original param name - startTime.';

--
-- Table 'pipeline_step_impllinks' generated from model 'PipelineStepImpllinks'
--
CREATE TABLE IF NOT EXISTS pipeline_step_impllinks (
    "self" TEXT DEFAULT NULL,
    actions TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipeline_step_impllinks IS 'Original model name - PipelineStepImpllinks.';

--
-- Table 'pipelinelatest_run' generated from model 'PipelinelatestRun'
--
CREATE TABLE IF NOT EXISTS pipelinelatest_run (
    artifacts JSON DEFAULT NULL,
    duration_in_millis INTEGER DEFAULT NULL,
    estimated_duration_in_millis INTEGER DEFAULT NULL,
    en_queue_time TEXT DEFAULT NULL,
    end_time TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    organization TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    "result" TEXT DEFAULT NULL,
    run_summary TEXT DEFAULT NULL,
    start_time TEXT DEFAULT NULL,
    "state" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL,
    commit_id TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipelinelatest_run IS 'Original model name - PipelinelatestRun.';
COMMENT ON COLUMN pipelinelatest_run.duration_in_millis IS 'Original param name - durationInMillis.';
COMMENT ON COLUMN pipelinelatest_run.estimated_duration_in_millis IS 'Original param name - estimatedDurationInMillis.';
COMMENT ON COLUMN pipelinelatest_run.en_queue_time IS 'Original param name - enQueueTime.';
COMMENT ON COLUMN pipelinelatest_run.end_time IS 'Original param name - endTime.';
COMMENT ON COLUMN pipelinelatest_run.run_summary IS 'Original param name - runSummary.';
COMMENT ON COLUMN pipelinelatest_run.start_time IS 'Original param name - startTime.';
COMMENT ON COLUMN pipelinelatest_run.commit_id IS 'Original param name - commitId.';

--
-- Table 'pipelinelatest_runartifacts' generated from model 'PipelinelatestRunartifacts'
--
CREATE TABLE IF NOT EXISTS pipelinelatest_runartifacts (
    "name" TEXT DEFAULT NULL,
    "size" INTEGER DEFAULT NULL,
    url TEXT DEFAULT NULL,
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE pipelinelatest_runartifacts IS 'Original model name - PipelinelatestRunartifacts.';

--
-- Table 'queue' generated from model 'Queue'
--
CREATE TABLE IF NOT EXISTS queue (
    _class TEXT DEFAULT NULL,
    items JSON DEFAULT NULL
);
COMMENT ON TABLE queue IS 'Original model name - Queue.';

--
-- Table 'queue_blocked_item' generated from model 'QueueBlockedItem'
--
CREATE TABLE IF NOT EXISTS queue_blocked_item (
    _class TEXT DEFAULT NULL,
    actions JSON DEFAULT NULL,
    "blocked" BOOLEAN DEFAULT NULL,
    buildable BOOLEAN DEFAULT NULL,
    "id" INTEGER DEFAULT NULL,
    in_queue_since INTEGER DEFAULT NULL,
    params TEXT DEFAULT NULL,
    stuck BOOLEAN DEFAULT NULL,
    task TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL,
    why TEXT DEFAULT NULL,
    buildable_start_milliseconds INTEGER DEFAULT NULL
);
COMMENT ON TABLE queue_blocked_item IS 'Original model name - QueueBlockedItem.';
COMMENT ON COLUMN queue_blocked_item.in_queue_since IS 'Original param name - inQueueSince.';
COMMENT ON COLUMN queue_blocked_item.buildable_start_milliseconds IS 'Original param name - buildableStartMilliseconds.';

--
-- Table 'queue_item_impl' generated from model 'QueueItemImpl'
--
CREATE TABLE IF NOT EXISTS queue_item_impl (
    _class TEXT DEFAULT NULL,
    expected_build_number INTEGER DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    pipeline TEXT DEFAULT NULL,
    queued_time INTEGER DEFAULT NULL
);
COMMENT ON TABLE queue_item_impl IS 'Original model name - QueueItemImpl.';
COMMENT ON COLUMN queue_item_impl.expected_build_number IS 'Original param name - expectedBuildNumber.';
COMMENT ON COLUMN queue_item_impl.queued_time IS 'Original param name - queuedTime.';

--
-- Table 'queue_left_item' generated from model 'QueueLeftItem'
--
CREATE TABLE IF NOT EXISTS queue_left_item (
    _class TEXT DEFAULT NULL,
    actions JSON DEFAULT NULL,
    "blocked" BOOLEAN DEFAULT NULL,
    buildable BOOLEAN DEFAULT NULL,
    "id" INTEGER DEFAULT NULL,
    in_queue_since INTEGER DEFAULT NULL,
    params TEXT DEFAULT NULL,
    stuck BOOLEAN DEFAULT NULL,
    task TEXT DEFAULT NULL,
    url TEXT DEFAULT NULL,
    why TEXT DEFAULT NULL,
    cancelled BOOLEAN DEFAULT NULL,
    executable TEXT DEFAULT NULL
);
COMMENT ON TABLE queue_left_item IS 'Original model name - QueueLeftItem.';
COMMENT ON COLUMN queue_left_item.in_queue_since IS 'Original param name - inQueueSince.';

--
-- Table 'response_time_monitor_data' generated from model 'ResponseTimeMonitorData'
--
CREATE TABLE IF NOT EXISTS response_time_monitor_data (
    _class TEXT DEFAULT NULL,
    "timestamp" INTEGER DEFAULT NULL,
    average INTEGER DEFAULT NULL
);
COMMENT ON TABLE response_time_monitor_data IS 'Original model name - ResponseTimeMonitorData.';

--
-- Table 'string_parameter_definition' generated from model 'StringParameterDefinition'
--
CREATE TABLE IF NOT EXISTS string_parameter_definition (
    _class TEXT DEFAULT NULL,
    default_parameter_value TEXT DEFAULT NULL,
    description TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    "type" TEXT DEFAULT NULL
);
COMMENT ON TABLE string_parameter_definition IS 'Original model name - StringParameterDefinition.';
COMMENT ON COLUMN string_parameter_definition.default_parameter_value IS 'Original param name - defaultParameterValue.';

--
-- Table 'string_parameter_value' generated from model 'StringParameterValue'
--
CREATE TABLE IF NOT EXISTS string_parameter_value (
    _class TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL,
    "value" TEXT DEFAULT NULL
);
COMMENT ON TABLE string_parameter_value IS 'Original model name - StringParameterValue.';

--
-- Table 'swap_space_monitor_memory_usage2' generated from model 'SwapSpaceMonitorMemoryUsage2'
--
CREATE TABLE IF NOT EXISTS swap_space_monitor_memory_usage2 (
    _class TEXT DEFAULT NULL,
    available_physical_memory INTEGER DEFAULT NULL,
    available_swap_space INTEGER DEFAULT NULL,
    total_physical_memory INTEGER DEFAULT NULL,
    total_swap_space INTEGER DEFAULT NULL
);
COMMENT ON TABLE swap_space_monitor_memory_usage2 IS 'Original model name - SwapSpaceMonitorMemoryUsage2.';
COMMENT ON COLUMN swap_space_monitor_memory_usage2.available_physical_memory IS 'Original param name - availablePhysicalMemory.';
COMMENT ON COLUMN swap_space_monitor_memory_usage2.available_swap_space IS 'Original param name - availableSwapSpace.';
COMMENT ON COLUMN swap_space_monitor_memory_usage2.total_physical_memory IS 'Original param name - totalPhysicalMemory.';
COMMENT ON COLUMN swap_space_monitor_memory_usage2.total_swap_space IS 'Original param name - totalSwapSpace.';

--
-- Table 'unlabeled_load_statistics' generated from model 'UnlabeledLoadStatistics'
--
CREATE TABLE IF NOT EXISTS unlabeled_load_statistics (
    _class TEXT DEFAULT NULL
);
COMMENT ON TABLE unlabeled_load_statistics IS 'Original model name - UnlabeledLoadStatistics.';

--
-- Table 'user' generated from model 'User'
--
CREATE TABLE IF NOT EXISTS "user" (
    _class TEXT DEFAULT NULL,
    "id" TEXT DEFAULT NULL,
    full_name TEXT DEFAULT NULL,
    email TEXT DEFAULT NULL,
    "name" TEXT DEFAULT NULL
);
COMMENT ON TABLE "user" IS 'Original model name - User.';
COMMENT ON COLUMN "user".full_name IS 'Original param name - fullName.';

