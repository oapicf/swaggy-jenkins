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



#include "FreeStyleProjecthealthReport.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

FreeStyleProjecthealthReport::FreeStyleProjecthealthReport()
{
    m_Description = utility::conversions::to_string_t("");
    m_DescriptionIsSet = false;
    m_IconClassName = utility::conversions::to_string_t("");
    m_IconClassNameIsSet = false;
    m_IconUrl = utility::conversions::to_string_t("");
    m_IconUrlIsSet = false;
    m_Score = 0;
    m_ScoreIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

FreeStyleProjecthealthReport::~FreeStyleProjecthealthReport()
{
}

void FreeStyleProjecthealthReport::validate()
{
    // TODO: implement validation
}

web::json::value FreeStyleProjecthealthReport::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_DescriptionIsSet)
    {
        val[utility::conversions::to_string_t("description")] = ModelBase::toJson(m_Description);
    }
    if(m_IconClassNameIsSet)
    {
        val[utility::conversions::to_string_t("iconClassName")] = ModelBase::toJson(m_IconClassName);
    }
    if(m_IconUrlIsSet)
    {
        val[utility::conversions::to_string_t("iconUrl")] = ModelBase::toJson(m_IconUrl);
    }
    if(m_ScoreIsSet)
    {
        val[utility::conversions::to_string_t("score")] = ModelBase::toJson(m_Score);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t("_class")] = ModelBase::toJson(m__class);
    }

    return val;
}

void FreeStyleProjecthealthReport::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("description")))
    {
        setDescription(ModelBase::stringFromJson(val[utility::conversions::to_string_t("description")]));
    }
    if(val.has_field(utility::conversions::to_string_t("iconClassName")))
    {
        setIconClassName(ModelBase::stringFromJson(val[utility::conversions::to_string_t("iconClassName")]));
    }
    if(val.has_field(utility::conversions::to_string_t("iconUrl")))
    {
        setIconUrl(ModelBase::stringFromJson(val[utility::conversions::to_string_t("iconUrl")]));
    }
    if(val.has_field(utility::conversions::to_string_t("score")))
    {
        setScore(ModelBase::int32_tFromJson(val[utility::conversions::to_string_t("score")]));
    }
    if(val.has_field(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromJson(val[utility::conversions::to_string_t("_class")]));
    }
}

void FreeStyleProjecthealthReport::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_DescriptionIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("description"), m_Description));
    }
    if(m_IconClassNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("iconClassName"), m_IconClassName));
    }
    if(m_IconUrlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("iconUrl"), m_IconUrl));
    }
    if(m_ScoreIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("score"), m_Score));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("_class"), m__class));
    }
}

void FreeStyleProjecthealthReport::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("description")))
    {
        setDescription(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("description"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("iconClassName")))
    {
        setIconClassName(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("iconClassName"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("iconUrl")))
    {
        setIconUrl(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("iconUrl"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("score")))
    {
        setScore(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("score"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("_class"))));
    }
}

utility::string_t FreeStyleProjecthealthReport::getDescription() const
{
    return m_Description;
}


void FreeStyleProjecthealthReport::setDescription(utility::string_t value)
{
    m_Description = value;
    m_DescriptionIsSet = true;
}
bool FreeStyleProjecthealthReport::descriptionIsSet() const
{
    return m_DescriptionIsSet;
}

void FreeStyleProjecthealthReport::unsetDescription()
{
    m_DescriptionIsSet = false;
}

utility::string_t FreeStyleProjecthealthReport::getIconClassName() const
{
    return m_IconClassName;
}


void FreeStyleProjecthealthReport::setIconClassName(utility::string_t value)
{
    m_IconClassName = value;
    m_IconClassNameIsSet = true;
}
bool FreeStyleProjecthealthReport::iconClassNameIsSet() const
{
    return m_IconClassNameIsSet;
}

void FreeStyleProjecthealthReport::unsetIconClassName()
{
    m_IconClassNameIsSet = false;
}

utility::string_t FreeStyleProjecthealthReport::getIconUrl() const
{
    return m_IconUrl;
}


void FreeStyleProjecthealthReport::setIconUrl(utility::string_t value)
{
    m_IconUrl = value;
    m_IconUrlIsSet = true;
}
bool FreeStyleProjecthealthReport::iconUrlIsSet() const
{
    return m_IconUrlIsSet;
}

void FreeStyleProjecthealthReport::unsetIconUrl()
{
    m_IconUrlIsSet = false;
}

int32_t FreeStyleProjecthealthReport::getScore() const
{
    return m_Score;
}


void FreeStyleProjecthealthReport::setScore(int32_t value)
{
    m_Score = value;
    m_ScoreIsSet = true;
}
bool FreeStyleProjecthealthReport::scoreIsSet() const
{
    return m_ScoreIsSet;
}

void FreeStyleProjecthealthReport::unsetScore()
{
    m_ScoreIsSet = false;
}

utility::string_t FreeStyleProjecthealthReport::getClass() const
{
    return m__class;
}


void FreeStyleProjecthealthReport::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool FreeStyleProjecthealthReport::_classIsSet() const
{
    return m__classIsSet;
}

void FreeStyleProjecthealthReport::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

