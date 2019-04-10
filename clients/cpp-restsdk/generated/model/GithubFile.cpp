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



#include "GithubFile.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

GithubFile::GithubFile()
{
    m_ContentIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

GithubFile::~GithubFile()
{
}

void GithubFile::validate()
{
    // TODO: implement validation
}

web::json::value GithubFile::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_ContentIsSet)
    {
        val[utility::conversions::to_string_t("content")] = ModelBase::toJson(m_Content);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t("_class")] = ModelBase::toJson(m__class);
    }

    return val;
}

void GithubFile::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("content")))
    {
        if(!val[utility::conversions::to_string_t("content")].is_null())
        {
            std::shared_ptr<GithubContent> newItem(new GithubContent());
            newItem->fromJson(val[utility::conversions::to_string_t("content")]);
            setContent( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromJson(val[utility::conversions::to_string_t("_class")]));
    }
}

void GithubFile::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_ContentIsSet)
    {
        if (m_Content.get())
        {
            m_Content->toMultipart(multipart, utility::conversions::to_string_t("content."));
        }
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("_class"), m__class));
    }
}

void GithubFile::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("content")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("content")))
        {
            std::shared_ptr<GithubContent> newItem(new GithubContent());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("content."));
            setContent( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("_class"))));
    }
}

std::shared_ptr<GithubContent> GithubFile::getContent() const
{
    return m_Content;
}


void GithubFile::setContent(std::shared_ptr<GithubContent> value)
{
    m_Content = value;
    m_ContentIsSet = true;
}
bool GithubFile::contentIsSet() const
{
    return m_ContentIsSet;
}

void GithubFile::unsetContent()
{
    m_ContentIsSet = false;
}

utility::string_t GithubFile::getClass() const
{
    return m__class;
}


void GithubFile::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool GithubFile::_classIsSet() const
{
    return m__classIsSet;
}

void GithubFile::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

