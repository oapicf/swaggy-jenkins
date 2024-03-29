/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
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


#include <memory>
#include <utility>
#include <exception>
#include <functional>

#include <corvusoft/restbed/session.hpp>
#include <corvusoft/restbed/resource.hpp>
#include <corvusoft/restbed/request.hpp>
#include <corvusoft/restbed/service.hpp>
#include <corvusoft/restbed/settings.hpp>

#include "DefaultCrumbIssuer.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

///
/// Exception to flag problems in the handlers
///
class  BaseApiException: public std::exception
{
public:
    BaseApiException(int status_code, std::string what);

    int getStatus() const;
    const char* what() const noexcept override;

private:
    int m_status;
    std::string m_what;
};

namespace BaseApiResources {
/// <summary>
/// 
/// </summary>
/// <remarks>
/// Retrieve CSRF protection token
/// </remarks>
class  CrumbIssuerApiJsonResource: public restbed::Resource
{
public:
    CrumbIssuerApiJsonResource(const std::string& context = "");
    virtual ~CrumbIssuerApiJsonResource() = default;

    CrumbIssuerApiJsonResource(
        const CrumbIssuerApiJsonResource& other) = default; // copy constructor
    CrumbIssuerApiJsonResource(CrumbIssuerApiJsonResource&& other) noexcept = default; // move constructor

    CrumbIssuerApiJsonResource& operator=(const CrumbIssuerApiJsonResource& other) = default; // copy assignment
    CrumbIssuerApiJsonResource& operator=(CrumbIssuerApiJsonResource&& other) noexcept = default; // move assignment

    /////////////////////////////////////////////////////
    // Set these to implement the server functionality //
    /////////////////////////////////////////////////////
    std::function<std::pair<int, DefaultCrumbIssuer>(
        )> handler_GET_func =
            []() -> std::pair<int, DefaultCrumbIssuer>
                { throw BaseApiException(501, "Not implemented"); };


protected:
    //////////////////////////////////////////////////////////
    // As an alternative to setting the `std::function`s    //
    // override these to implement the server functionality //
    //////////////////////////////////////////////////////////

    virtual std::pair<int, DefaultCrumbIssuer> handler_GET(
        );


protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string extractBodyContent(const std::shared_ptr<restbed::Session>& session);
    virtual std::string extractFormParamsFromBody(const std::string& paramName, const std::string& body);

    virtual std::pair<int, std::string> handleBaseApiException(const BaseApiException& e);
    virtual std::pair<int, std::string> handleStdException(const std::exception& e);
    virtual std::pair<int, std::string> handleUnspecifiedException();

    virtual void setResponseHeader(const std::shared_ptr<restbed::Session>& session,
        const std::string& header);

    virtual void returnResponse(const std::shared_ptr<restbed::Session>& session,
        const int status, const std::string& result, std::multimap<std::string, std::string>& contentType);
    virtual void defaultSessionClose(const std::shared_ptr<restbed::Session>& session,
        const int status, const std::string& result);

private:
    void handler_GET_internal(const std::shared_ptr<restbed::Session> session);
};

} /* namespace BaseApiResources */

using BaseApiCrumbIssuerApiJsonResource [[deprecated]] = BaseApiResources::CrumbIssuerApiJsonResource;

//
// The restbed service to actually implement the REST server
//
class  BaseApi
{
public:
    explicit BaseApi(std::shared_ptr<restbed::Service> const& restbedService);
    virtual ~BaseApi();

    std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> getCrumbIssuerApiJsonResource();

    void setResource(std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> resource);
    [[deprecated("use setResource()")]]
    virtual void setBaseApiCrumbIssuerApiJsonResource(std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> spBaseApiCrumbIssuerApiJsonResource);

    virtual void publishDefaultResources();

    virtual std::shared_ptr<restbed::Service> service();

protected:
    std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> m_spCrumbIssuerApiJsonResource;

private:
    std::shared_ptr<restbed::Service> m_service;
};


}
}
}
}

#endif /* BaseApi_H_ */

