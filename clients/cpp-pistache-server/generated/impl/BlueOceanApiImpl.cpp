/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

#include "BlueOceanApiImpl.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

BlueOceanApiImpl::BlueOceanApiImpl(const std::shared_ptr<Pistache::Rest::Router>& rtr)
    : BlueOceanApi(rtr)
{
}

void BlueOceanApiImpl::delete_pipeline_queue_item(const std::string &organization, const std::string &pipeline, const std::string &queue, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_authenticated_user(const std::string &organization, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_classes(const std::string &r_class, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_json_web_key(const int32_t &key, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_json_web_token(const std::optional<int32_t> &expiryTimeInMins, const std::optional<int32_t> &maxExpiryTimeInMins, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_organisation(const std::string &organization, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_organisations(Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_activities(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_branch(const std::string &organization, const std::string &pipeline, const std::string &branch, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_branch_run(const std::string &organization, const std::string &pipeline, const std::string &branch, const std::string &run, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_branches(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_folder(const std::string &organization, const std::string &folder, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_folder_pipeline(const std::string &organization, const std::string &pipeline, const std::string &folder, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_queue(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_log(const std::string &organization, const std::string &pipeline, const std::string &run, const std::optional<int32_t> &start, const std::optional<bool> &download, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_node(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_node_step(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, const std::string &step, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_node_step_log(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, const std::string &step, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_node_steps(const std::string &organization, const std::string &pipeline, const std::string &run, const std::string &node, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_run_nodes(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipeline_runs(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_pipelines(const std::string &organization, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_scm(const std::string &organization, const std::string &scm, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_scm_organisation_repositories(const std::string &organization, const std::string &scm, const std::string &scmOrganisation, const std::optional<std::string> &credentialId, const std::optional<int32_t> &pageSize, const std::optional<int32_t> &pageNumber, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_scm_organisation_repository(const std::string &organization, const std::string &scm, const std::string &scmOrganisation, const std::string &repository, const std::optional<std::string> &credentialId, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_scm_organisations(const std::string &organization, const std::string &scm, const std::optional<std::string> &credentialId, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_user(const std::string &organization, const std::string &user, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_user_favorites(const std::string &user, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::get_users(const std::string &organization, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::post_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::post_pipeline_runs(const std::string &organization, const std::string &pipeline, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::put_pipeline_favorite(const std::string &organization, const std::string &pipeline, const UNKNOWN_BASE_TYPE &uNKNOWNBASETYPE, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::put_pipeline_run(const std::string &organization, const std::string &pipeline, const std::string &run, const std::optional<std::string> &blocking, const std::optional<int32_t> &timeOutInSecs, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::search(const std::optional<std::string> &q, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void BlueOceanApiImpl::search_classes(const std::optional<std::string> &q, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}

}
}
}
}

