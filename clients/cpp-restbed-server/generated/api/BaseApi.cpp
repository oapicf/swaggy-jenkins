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


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>
#include <corvusoft/restbed/uri.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>

#include "BaseApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

namespace {
[[maybe_unused]]
std::string selectPreferredContentType(const std::vector<std::string>& contentTypes) {
    if (contentTypes.size() == 0) {
        return "application/json";
    }

    if (contentTypes.size() == 1) {
        return contentTypes.at(0);
    }

    static const std::array<std::string, 2> preferredTypes = {"json", "xml"};
    for (const auto& preferredType: preferredTypes) {
        const auto ret = std::find_if(contentTypes.cbegin(),
        contentTypes.cend(),
        [preferredType](const std::string& str) {
            return str.find(preferredType) != std::string::npos;});
        if (ret != contentTypes.cend()) {
            return *ret;
        }
    }

    return contentTypes.at(0);
}
}

BaseApiException::BaseApiException(int status_code, std::string what)
  : m_status(status_code),
    m_what(what)
{

}
int BaseApiException::getStatus() const
{
    return m_status;
}
const char* BaseApiException::what() const noexcept
{
    return m_what.c_str();
}


template<class MODEL_T>
MODEL_T extractJsonModelBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto model = MODEL_T(pt);
    return model;
}

template<class MODEL_T>
std::vector<MODEL_T> extractJsonArrayBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto arrayRet = std::vector<MODEL_T>();
    for (const auto& child: pt) {
        arrayRet.emplace_back(MODEL_T(child.second));
    }
    return arrayRet;
}

template <class KEY_T, class VAL_T>
std::string convertMapResponse(const std::map<KEY_T, VAL_T>& map)
{
    boost::property_tree::ptree pt;
    for(const auto &kv: map) {
    pt.push_back(boost::property_tree::ptree::value_type(
        boost::lexical_cast<std::string>(kv.first),
        boost::property_tree::ptree(
        boost::lexical_cast<std::string>(kv.second))));
    }
    std::stringstream sstream;
    write_json(sstream, pt);
    std::string result = sstream.str();
    return result;
}

namespace BaseApiResources {
CrumbIssuerApiJsonResource::CrumbIssuerApiJsonResource(const std::string& context /* = "" */)
{
	this->set_path(context + "/crumbIssuer/api/json");
	this->set_method_handler("GET",
		std::bind(&CrumbIssuerApiJsonResource::handler_GET_internal, this,
			std::placeholders::_1));
}

std::pair<int, std::string> CrumbIssuerApiJsonResource::handleBaseApiException(const BaseApiException& e)
{
    return std::make_pair<int, std::string>(e.getStatus(), e.what());
}

std::pair<int, std::string> CrumbIssuerApiJsonResource::handleStdException(const std::exception& e)
{
    return std::make_pair<int, std::string>(500, e.what());
}

std::pair<int, std::string> CrumbIssuerApiJsonResource::handleUnspecifiedException()
{
    return std::make_pair<int, std::string>(500, "Unknown exception occurred");
}

void CrumbIssuerApiJsonResource::setResponseHeader(const std::shared_ptr<restbed::Session>& session, const std::string& header)
{
    session->set_header(header, "");
}

void CrumbIssuerApiJsonResource::returnResponse(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result, std::multimap<std::string, std::string>& responseHeaders)
{
    responseHeaders.insert(std::make_pair("Connection", "close"));
    session->close(status, result, responseHeaders);
}

void CrumbIssuerApiJsonResource::defaultSessionClose(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result)
{
    session->close(status, result, { {"Connection", "close"} });
}

void CrumbIssuerApiJsonResource::handler_GET_internal(const std::shared_ptr<restbed::Session> session)
{
    const auto request = session->get_request();
    
    int status_code = 500;
    DefaultCrumbIssuer resultObject = DefaultCrumbIssuer{};
    std::string result = "";
    
    try {
        std::tie(status_code, resultObject) =
            handler_GET();
    }
    catch(const BaseApiException& e) {
        std::tie(status_code, result) = handleBaseApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }
    
    std::multimap< std::string, std::string > responseHeaders {};
    static const std::vector<std::string> contentTypes{
        "application/json",
    };
    static const std::string acceptTypes{
    };
    
    if (status_code == 200) {
        responseHeaders.insert(std::make_pair("Content-Type", selectPreferredContentType(contentTypes)));
        if (!acceptTypes.empty()) {
            responseHeaders.insert(std::make_pair("Accept", acceptTypes));
        }
    
        result = resultObject.toJsonString();
        returnResponse(session, 200, result.empty() ? "{}" : result, responseHeaders);
        return;
    }
    if (status_code == 401) {
        responseHeaders.insert(std::make_pair("Content-Type", "text/plain"));
        result = "Authentication failed - incorrect username and/or password";
    
        returnResponse(session, 401, result.empty() ? "{}" : result, responseHeaders);
        return;
    }
    if (status_code == 403) {
        responseHeaders.insert(std::make_pair("Content-Type", "text/plain"));
        result = "Jenkins requires authentication - please set username and password";
    
        returnResponse(session, 403, result.empty() ? "{}" : result, responseHeaders);
        return;
    }
    defaultSessionClose(session, status_code, result);
    
    
}


std::pair<int, DefaultCrumbIssuer> CrumbIssuerApiJsonResource::handler_GET(
        )
{
    return handler_GET_func();
}


std::string CrumbIssuerApiJsonResource::extractBodyContent(const std::shared_ptr<restbed::Session>& session) {
  const auto request = session->get_request();
  int content_length = request->get_header("Content-Length", 0);
  std::string bodyContent;
  session->fetch(content_length,
                 [&bodyContent](const std::shared_ptr<restbed::Session> session,
                                const restbed::Bytes &body) {
                   bodyContent = restbed::String::format(
                       "%.*s\n", (int)body.size(), body.data());
                 });
  return bodyContent;
}

std::string CrumbIssuerApiJsonResource::extractFormParamsFromBody(const std::string& paramName, const std::string& body) {
    const auto uri = restbed::Uri("urlencoded?" + body, true);
    const auto params = uri.get_query_parameters();
    const auto result = params.find(paramName);
    if (result != params.cend()) {
        return result->second;
    }
    return "";
}

} /* namespace BaseApiResources */

BaseApi::BaseApi(std::shared_ptr<restbed::Service> const& restbedService)
: m_service(restbedService)
{
}

BaseApi::~BaseApi() {}

std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> BaseApi::getCrumbIssuerApiJsonResource() {
    if (!m_spCrumbIssuerApiJsonResource) {
        setResource(std::make_shared<BaseApiResources::CrumbIssuerApiJsonResource>());
    }
    return m_spCrumbIssuerApiJsonResource;
}
void BaseApi::setResource(std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> resource) {
    m_spCrumbIssuerApiJsonResource = resource;
    m_service->publish(m_spCrumbIssuerApiJsonResource);
}
void BaseApi::setBaseApiCrumbIssuerApiJsonResource(std::shared_ptr<BaseApiResources::CrumbIssuerApiJsonResource> spCrumbIssuerApiJsonResource) {
    m_spCrumbIssuerApiJsonResource = spCrumbIssuerApiJsonResource;
    m_service->publish(m_spCrumbIssuerApiJsonResource);
}


void BaseApi::publishDefaultResources() {
    if (!m_spCrumbIssuerApiJsonResource) {
        setResource(std::make_shared<BaseApiResources::CrumbIssuerApiJsonResource>());
    }
}

std::shared_ptr<restbed::Service> BaseApi::service() {
    return m_service;
}


}
}
}
}

