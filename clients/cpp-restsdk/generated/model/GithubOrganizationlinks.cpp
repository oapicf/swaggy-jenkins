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



#include "GithubOrganizationlinks.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

GithubOrganizationlinks::GithubOrganizationlinks()
{
    m_RepositoriesIsSet = false;
    m_SelfIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

GithubOrganizationlinks::~GithubOrganizationlinks()
{
}

void GithubOrganizationlinks::validate()
{
    // TODO: implement validation
}

web::json::value GithubOrganizationlinks::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_RepositoriesIsSet)
    {
        val[utility::conversions::to_string_t("repositories")] = ModelBase::toJson(m_Repositories);
    }
    if(m_SelfIsSet)
    {
        val[utility::conversions::to_string_t("self")] = ModelBase::toJson(m_Self);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t("_class")] = ModelBase::toJson(m__class);
    }

    return val;
}

void GithubOrganizationlinks::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("repositories")))
    {
        if(!val[utility::conversions::to_string_t("repositories")].is_null())
        {
            std::shared_ptr<Link> newItem(new Link());
            newItem->fromJson(val[utility::conversions::to_string_t("repositories")]);
            setRepositories( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("self")))
    {
        if(!val[utility::conversions::to_string_t("self")].is_null())
        {
            std::shared_ptr<Link> newItem(new Link());
            newItem->fromJson(val[utility::conversions::to_string_t("self")]);
            setSelf( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromJson(val[utility::conversions::to_string_t("_class")]));
    }
}

void GithubOrganizationlinks::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_RepositoriesIsSet)
    {
        if (m_Repositories.get())
        {
            m_Repositories->toMultipart(multipart, utility::conversions::to_string_t("repositories."));
        }
    }
    if(m_SelfIsSet)
    {
        if (m_Self.get())
        {
            m_Self->toMultipart(multipart, utility::conversions::to_string_t("self."));
        }
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("_class"), m__class));
    }
}

void GithubOrganizationlinks::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("repositories")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("repositories")))
        {
            std::shared_ptr<Link> newItem(new Link());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("repositories."));
            setRepositories( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("self")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("self")))
        {
            std::shared_ptr<Link> newItem(new Link());
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("self."));
            setSelf( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("_class"))));
    }
}

std::shared_ptr<Link> GithubOrganizationlinks::getRepositories() const
{
    return m_Repositories;
}


void GithubOrganizationlinks::setRepositories(std::shared_ptr<Link> value)
{
    m_Repositories = value;
    m_RepositoriesIsSet = true;
}
bool GithubOrganizationlinks::repositoriesIsSet() const
{
    return m_RepositoriesIsSet;
}

void GithubOrganizationlinks::unsetRepositories()
{
    m_RepositoriesIsSet = false;
}

std::shared_ptr<Link> GithubOrganizationlinks::getSelf() const
{
    return m_Self;
}


void GithubOrganizationlinks::setSelf(std::shared_ptr<Link> value)
{
    m_Self = value;
    m_SelfIsSet = true;
}
bool GithubOrganizationlinks::selfIsSet() const
{
    return m_SelfIsSet;
}

void GithubOrganizationlinks::unsetSelf()
{
    m_SelfIsSet = false;
}

utility::string_t GithubOrganizationlinks::getClass() const
{
    return m__class;
}


void GithubOrganizationlinks::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool GithubOrganizationlinks::_classIsSet() const
{
    return m__classIsSet;
}

void GithubOrganizationlinks::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

