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
 * BaseApi.h
 *
 * 
 */

#ifndef BaseApi_H_
#define BaseApi_H_


#include <pistache/http.h>
#include <pistache/router.h>
#include <pistache/http_headers.h>

#include <optional>
#include <utility>

#include "DefaultCrumbIssuer.h"

namespace org::openapitools::server::api
{

class  BaseApi {
public:
    explicit BaseApi(const std::shared_ptr<Pistache::Rest::Router>& rtr);
    virtual ~BaseApi() = default;
    void init();

    static const std::string base;

private:
    void setupRoutes();

    void get_crumb_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);
    void base_api_default_handler(const Pistache::Rest::Request &request, Pistache::Http::ResponseWriter response);

    const std::shared_ptr<Pistache::Rest::Router> router;

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
    /// Retrieve CSRF protection token
    /// </remarks>
    virtual void get_crumb(Pistache::Http::ResponseWriter &response) = 0;

};

} // namespace org::openapitools::server::api

#endif /* BaseApi_H_ */

