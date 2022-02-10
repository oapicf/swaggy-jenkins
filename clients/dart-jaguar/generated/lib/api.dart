library openapi.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:openapi/api/base_api.dart';
import 'package:openapi/api/blue_ocean_api.dart';
import 'package:openapi/api/remote_access_api.dart';

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



final _jsonJaguarRepo = JsonRepo()
..add(AllViewSerializer())
..add(BranchImplSerializer())
..add(BranchImpllinksSerializer())
..add(BranchImplpermissionsSerializer())
..add(CauseActionSerializer())
..add(CauseUserIdCauseSerializer())
..add(ClassesByClassSerializer())
..add(ClockDifferenceSerializer())
..add(ComputerSetSerializer())
..add(DefaultCrumbIssuerSerializer())
..add(DiskSpaceMonitorDescriptorDiskSpaceSerializer())
..add(EmptyChangeLogSetSerializer())
..add(ExtensionClassContainerImpl1Serializer())
..add(ExtensionClassContainerImpl1linksSerializer())
..add(ExtensionClassContainerImpl1mapSerializer())
..add(ExtensionClassImplSerializer())
..add(ExtensionClassImpllinksSerializer())
..add(FavoriteImplSerializer())
..add(FavoriteImpllinksSerializer())
..add(FreeStyleBuildSerializer())
..add(FreeStyleProjectSerializer())
..add(FreeStyleProjectactionsSerializer())
..add(FreeStyleProjecthealthReportSerializer())
..add(GenericResourceSerializer())
..add(GithubContentSerializer())
..add(GithubFileSerializer())
..add(GithubOrganizationSerializer())
..add(GithubOrganizationlinksSerializer())
..add(GithubRepositoriesSerializer())
..add(GithubRepositorieslinksSerializer())
..add(GithubRepositorySerializer())
..add(GithubRepositorylinksSerializer())
..add(GithubRepositorypermissionsSerializer())
..add(GithubRespositoryContainerSerializer())
..add(GithubRespositoryContainerlinksSerializer())
..add(GithubScmSerializer())
..add(GithubScmlinksSerializer())
..add(HudsonSerializer())
..add(HudsonMasterComputerSerializer())
..add(HudsonMasterComputerexecutorsSerializer())
..add(HudsonMasterComputermonitorDataSerializer())
..add(HudsonassignedLabelsSerializer())
..add(InputStepImplSerializer())
..add(InputStepImpllinksSerializer())
..add(Label1Serializer())
..add(LinkSerializer())
..add(ListViewSerializer())
..add(MultibranchPipelineSerializer())
..add(NullSCMSerializer())
..add(OrganisationSerializer())
..add(PipelineSerializer())
..add(PipelineActivitySerializer())
..add(PipelineActivityartifactsSerializer())
..add(PipelineBranchesitemSerializer())
..add(PipelineBranchesitemlatestRunSerializer())
..add(PipelineBranchesitempullRequestSerializer())
..add(PipelineBranchesitempullRequestlinksSerializer())
..add(PipelineFolderImplSerializer())
..add(PipelineImplSerializer())
..add(PipelineImpllinksSerializer())
..add(PipelineRunSerializer())
..add(PipelineRunImplSerializer())
..add(PipelineRunImpllinksSerializer())
..add(PipelineRunNodeSerializer())
..add(PipelineRunNodeedgesSerializer())
..add(PipelineRunartifactsSerializer())
..add(PipelineStepImplSerializer())
..add(PipelineStepImpllinksSerializer())
..add(PipelinelatestRunSerializer())
..add(PipelinelatestRunartifactsSerializer())
..add(QueueSerializer())
..add(QueueBlockedItemSerializer())
..add(QueueItemImplSerializer())
..add(QueueLeftItemSerializer())
..add(ResponseTimeMonitorDataSerializer())
..add(StringParameterDefinitionSerializer())
..add(StringParameterValueSerializer())
..add(SwapSpaceMonitorMemoryUsage2Serializer())
..add(UnlabeledLoadStatisticsSerializer())
..add(UserSerializer())
;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class Openapi {
    List<Interceptor> interceptors;
    String basePath = "http://localhost";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    Openapi({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get BaseApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    BaseApi getBaseApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return BaseApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get BlueOceanApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    BlueOceanApi getBlueOceanApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return BlueOceanApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get RemoteAccessApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    RemoteAccessApi getRemoteAccessApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return RemoteAccessApi(base: base, converters: converters, timeout: timeout);
    }

    
}
