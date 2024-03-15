/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

#include "RemoteAccessApiImpl.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

RemoteAccessApiImpl::RemoteAccessApiImpl(const std::shared_ptr<Pistache::Rest::Router>& rtr)
    : RemoteAccessApi(rtr)
{
}

void RemoteAccessApiImpl::get_computer(const std::optional<int32_t> &depth, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_jenkins(Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_job(const std::string &name, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_job_config(const std::string &name, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_job_last_build(const std::string &name, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_job_progressive_text(const std::string &name, const std::string &number, const std::optional<std::string> &start, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_queue(Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_queue_item(const std::string &number, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_view(const std::string &name, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::get_view_config(const std::string &name, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::head_jenkins(Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_create_item(const std::optional<std::string> &name, const std::optional<std::string> &from, const std::optional<std::string> &mode, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, const std::optional<Pistache::Http::Header::Raw> &contentType, const std::string &body, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_create_view(const std::optional<std::string> &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, const std::optional<Pistache::Http::Header::Raw> &contentType, const std::string &body, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_build(const std::string &name, const std::optional<std::string> &json, const std::optional<std::string> &token, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_config(const std::string &name, const std::string &body, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_delete(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_disable(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_enable(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_job_last_build_stop(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}
void RemoteAccessApiImpl::post_view_config(const std::string &name, const std::string &body, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) {
    response.send(Pistache::Http::Code::Ok, "Do some magic\n");
}

}
}
}
}

