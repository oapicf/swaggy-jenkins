/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineRunSteps.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

PipelineRunSteps::PipelineRunSteps()
{
}

PipelineRunSteps::~PipelineRunSteps()
{
}

void PipelineRunSteps::validate()
{
    // TODO: implement validation
}

web::json::value PipelineRunSteps::toJson() const
{
    web::json::value val = this->null<GenericResource>::toJson();


    return val;
}

void PipelineRunSteps::fromJson(web::json::value& val)
{
    this->null<GenericResource>::fromJson(val);

}

void PipelineRunSteps::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

}

void PipelineRunSteps::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

}

}
}
}
}

