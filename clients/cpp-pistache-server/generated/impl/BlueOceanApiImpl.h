/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.5.1-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

/*
* BlueOceanApiImpl.h
*
* 
*/

#ifndef BLUE_OCEAN_API_IMPL_H_
#define BLUE_OCEAN_API_IMPL_H_


#include <pistache/endpoint.h>
#include <pistache/http.h>
#include <pistache/router.h>
#include <memory>
#include <optional>

#include <BlueOceanApi.h>


#include "BranchImpl.h"
#include "FavoriteImpl.h"
#include "GithubOrganization.h"
#include "GithubScm.h"
#include "MultibranchPipeline.h"
#include "Organisation.h"
#include "Pipeline.h"
#include "PipelineActivity.h"
#include "PipelineFolderImpl.h"
#include "PipelineImpl.h"
#include "PipelineRun.h"
#include "PipelineRunNode.h"
#include "PipelineStepImpl.h"
#include "QueueItemImpl.h"
#include "User.h"
#include <string>

namespace org::openapitools::server::api
{

using namespace org::openapitools::server::model;

class BlueOceanApiImpl : public org::openapitools::server::api::BlueOceanApi {
public:
    explicit BlueOceanApiImpl(const std::shared_ptr<Pistache::Rest::Router>& rtr);
    ~BlueOceanApiImpl() override = default;

    void delete_pipeline_queue_item(const std::string &organization, const std::string &pipeline, const std::string &queue, Pistache::Http::ResponseWriter &response);
    void get_authenticated_user(const std::string &organization, Pistache::Http::ResponseWriter &response);
    void get_classes(const std::string &r_class, Pistache::Http::ResponseWriter &response);
    void get_json_web_key(const int32_t &key, Pistache::Http::ResponseWriter &response);
    void get_json_web_token(const std::optional<int32_t> &expiryTimeInMins, const std::optional<int32_t> &maxExpiryTimeInMins, Pistache::Http::ResponseWriter &response);
    void get_organisation(const std::string &organization, Pistache::Http::ResponseWriter &response);
    void get_organisations(Pistache::Http::ResponseWriter &response);
    void get_pipeline(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void get_pipeline_activities(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void get_pipeline_branch(const std::string &organization, const std::string &pipeline, const std::string &branch, Pistache::Http::ResponseWriter &response);
    void get_pipeline_branch_run(const std::string &organization, const std::string &pipeline, const std::string &branch, const std::string &run, Pistache::Http::ResponseWriter &response);
    void get_pipeline_branches(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void get_pipeline_folder(const std::string &organization, const std::string &folder, Pistache::Http::ResponseWriter &response);
    void get_pipeline_folder_pipeline(const std::string &organization, const std::string &pipeline, const std::string &folder, Pistache::Http::ResponseWriter &response);
    void get_pipeline_queue(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_log(const std::string &organization, const std::string &pipeline, const std::string &run, const std::optional<int32_t> &start, const std::optional<bool> &download, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_node(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_node_step(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, const std::string &step, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_node_step_log(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, const std::string &step, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_node_steps(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, Pistache::Http::ResponseWriter &response);
    void get_pipeline_run_nodes(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response);
    void get_pipeline_runs(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void get_pipelines(const std::string &organization, Pistache::Http::ResponseWriter &response);
    void get_scm(const std::string &organization, const std::string &scm, Pistache::Http::ResponseWriter &response);
    void get_scm_organisation_repositories(const std::string &organization, const std::string &scm, const std::string &scmOrganisation, const std::optional<std::string> &credentialId, const std::optional<int32_t> &pageSize, const std::optional<int32_t> &pageNumber, Pistache::Http::ResponseWriter &response);
    void get_scm_organisation_repository(const std::string &organization, const std::string &scm, const std::string &scmOrganisation, const std::string &repository, const std::optional<std::string> &credentialId, Pistache::Http::ResponseWriter &response);
    void get_scm_organisations(const std::string &organization, const std::string &scm, const std::optional<std::string> &credentialId, Pistache::Http::ResponseWriter &response);
    void get_user(const std::string &organization, const std::string &user, Pistache::Http::ResponseWriter &response);
    void get_user_favorites(const std::string &user, Pistache::Http::ResponseWriter &response);
    void get_users(const std::string &organization, Pistache::Http::ResponseWriter &response);
    void post_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response);
    void post_pipeline_runs(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response);
    void put_pipeline_favorite(const std::string &organization, const std::string &pipeline, const bool &body, Pistache::Http::ResponseWriter &response);
    void put_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, const std::optional<std::string> &blocking, const std::optional<int32_t> &timeOutInSecs, Pistache::Http::ResponseWriter &response);
    void search(const std::optional<std::string> &q, Pistache::Http::ResponseWriter &response);
    void search_classes(const std::optional<std::string> &q, Pistache::Http::ResponseWriter &response);

};

} // namespace org::openapitools::server::api



#endif
