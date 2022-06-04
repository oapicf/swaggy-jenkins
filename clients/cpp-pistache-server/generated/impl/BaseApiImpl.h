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
* BaseApiImpl.h
*
* 
*/

#ifndef BASE_API_IMPL_H_
#define BASE_API_IMPL_H_


#include <pistache/endpoint.h>
#include <pistache/http.h>
#include <pistache/router.h>
#include <memory>
#include <optional>

#include <BaseApi.h>


#include "DefaultCrumbIssuer.h"

namespace org::openapitools::server::api
{

using namespace org::openapitools::server::model;

class BaseApiImpl : public org::openapitools::server::api::BaseApi {
public:
    explicit BaseApiImpl(const std::shared_ptr<Pistache::Rest::Router>& rtr);
    ~BaseApiImpl() override = default;

    void get_crumb(Pistache::Http::ResponseWriter &response);

};

} // namespace org::openapitools::server::api



#endif
