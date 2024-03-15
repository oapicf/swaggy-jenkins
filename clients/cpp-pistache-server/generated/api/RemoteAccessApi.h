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
/*
 * RemoteAccessApi.h
 *
 * 
 */

#ifndef RemoteAccessApi_H_
#define RemoteAccessApi_H_


#include "ApiBase.h"

#include <pistache/http.h>
#include <pistache/router.h>
#include <pistache/http_headers.h>

#include <optional>
#include <utility>

#include "ComputerSet.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProject.h"
#include "Hudson.h"
#include "ListView.h"
#include "Queue.h"
#include <string>

namespace org::openapitools::server::api
{

class  RemoteAccessApi : public ApiBase {
public:
    explicit RemoteAccessApi(const std::shared_ptr<Pistache::Rest::Router>& rtr);
    ~RemoteAccessApi() override = default;
    void init() override;

    static const std::string base;

private:
    void setupRoutes();

    void get_computer_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_jenkins_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_job_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_job_config_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_job_last_build_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_job_progressive_text_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_queue_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_queue_item_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_view_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void get_view_config_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void head_jenkins_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_create_item_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_create_view_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_build_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_config_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_delete_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_disable_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_enable_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_job_last_build_stop_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void post_view_config_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void remote_access_api_default_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);

    /// <summary>
    /// Helper function to handle unexpected Exceptions during Parameter parsing and validation.
    /// May be overridden to return custom error formats. This is called inside a catch block.
    /// Important: When overriding, do not call `throw ex;`, but instead use `throw;`.
    /// </summary>
    virtual std::pair<Pistache::Http::Code, std::string> handleParsingException(const std::exception& ex) const noexcept;

    /// <summary>
    /// Helper function to handle unexpected Exceptions during processing of the request in handler functions.
    /// May be overridden to return custom error formats. This is called inside a catch block.
    /// Important: When overriding, do not call `throw ex;`, but instead use `throw;`.
    /// </summary>
    virtual std::pair<Pistache::Http::Code, std::string> handleOperationException(const std::exception& ex) const noexcept;

    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve computer details
    /// </remarks>
    /// <param name="depth">Recursion depth in response model</param>
    virtual void get_computer(const std::optional<int32_t> &depth, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve Jenkins details
    /// </remarks>
    virtual void get_jenkins(Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve job details
    /// </remarks>
    /// <param name="name">Name of the job</param>
    virtual void get_job(const std::string &name, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve job configuration
    /// </remarks>
    /// <param name="name">Name of the job</param>
    virtual void get_job_config(const std::string &name, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve job&#39;s last build details
    /// </remarks>
    /// <param name="name">Name of the job</param>
    virtual void get_job_last_build(const std::string &name, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve job&#39;s build progressive text output
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="number">Build number</param>
    /// <param name="start">Starting point of progressive text output</param>
    virtual void get_job_progressive_text(const std::string &name, const std::string &number, const std::optional<std::string> &start, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve queue details
    /// </remarks>
    virtual void get_queue(Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve queued item details
    /// </remarks>
    /// <param name="number">Queue number</param>
    virtual void get_queue_item(const std::string &number, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve view details
    /// </remarks>
    /// <param name="name">Name of the view</param>
    virtual void get_view(const std::string &name, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve view configuration
    /// </remarks>
    /// <param name="name">Name of the view</param>
    virtual void get_view_config(const std::string &name, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Retrieve Jenkins headers
    /// </remarks>
    virtual void head_jenkins(Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new job using job configuration, or copied from an existing job
    /// </remarks>
    /// <param name="name">Name of the new job</param>
    /// <param name="from">Existing job to copy from (optional, default to &quot;&quot;)</param>
    /// <param name="mode">Set to &#39;copy&#39; for copying an existing job (optional, default to &quot;&quot;)</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    /// <param name="contentType">Content type header application/xml (optional, default to &quot;&quot;)</param>
    /// <param name="body">Job configuration in config.xml format (optional)</param>
    virtual void post_create_item(const std::optional<std::string> &name, const std::optional<std::string> &from, const std::optional<std::string> &mode, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, const std::optional<Pistache::Http::Header::Raw> &contentType, const std::string &body, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new view using view configuration
    /// </remarks>
    /// <param name="name">Name of the new view</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    /// <param name="contentType">Content type header application/xml (optional, default to &quot;&quot;)</param>
    /// <param name="body">View configuration in config.xml format (optional)</param>
    virtual void post_create_view(const std::optional<std::string> &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, const std::optional<Pistache::Http::Header::Raw> &contentType, const std::string &body, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Build a job
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="json"></param>
    /// <param name="token"> (optional, default to &quot;&quot;)</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_build(const std::string &name, const std::optional<std::string> &json, const std::optional<std::string> &token, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update job configuration
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="body">Job configuration in config.xml format</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_config(const std::string &name, const std::string &body, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Delete a job
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_delete(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Disable a job
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_disable(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Enable a job
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_enable(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Stop a job
    /// </remarks>
    /// <param name="name">Name of the job</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_job_last_build_stop(const std::string &name, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update view configuration
    /// </remarks>
    /// <param name="name">Name of the view</param>
    /// <param name="body">View configuration in config.xml format</param>
    /// <param name="jenkinsCrumb">CSRF protection token (optional, default to &quot;&quot;)</param>
    virtual void post_view_config(const std::string &name, const std::string &body, const std::optional<Pistache::Http::Header::Raw> &jenkinsCrumb, Pistache::Http::ResponseWriter &response) = 0;

};

} // namespace org::openapitools::server::api

#endif /* RemoteAccessApi_H_ */

