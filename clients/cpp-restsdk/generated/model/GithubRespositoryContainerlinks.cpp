/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "GithubRespositoryContainerlinks.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




GithubRespositoryContainerlinks::GithubRespositoryContainerlinks()
{
    m_SelfIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

GithubRespositoryContainerlinks::~GithubRespositoryContainerlinks()
{
}

void GithubRespositoryContainerlinks::validate()
{
    // TODO: implement validation
}

web::json::value GithubRespositoryContainerlinks::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_SelfIsSet)
    {
        val[utility::conversions::to_string_t(U("self"))] = ModelBase::toJson(m_Self);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }

    return val;
}

bool GithubRespositoryContainerlinks::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("self"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("self")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Link> refVal_self;
            ok &= ModelBase::fromJson(fieldValue, refVal_self);
            setSelf(refVal_self);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("_class"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("_class")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal__class;
            ok &= ModelBase::fromJson(fieldValue, refVal__class);
            setClass(refVal__class);
        }
    }
    return ok;
}

void GithubRespositoryContainerlinks::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_SelfIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("self")), m_Self));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
}

bool GithubRespositoryContainerlinks::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("self"))))
    {
        std::shared_ptr<Link> refVal_self;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("self"))), refVal_self );
        setSelf(refVal_self);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    return ok;
}

std::shared_ptr<Link> GithubRespositoryContainerlinks::getSelf() const
{
    return m_Self;
}

void GithubRespositoryContainerlinks::setSelf(const std::shared_ptr<Link>& value)
{
    m_Self = value;
    m_SelfIsSet = true;
}

bool GithubRespositoryContainerlinks::selfIsSet() const
{
    return m_SelfIsSet;
}

void GithubRespositoryContainerlinks::unsetSelf()
{
    m_SelfIsSet = false;
}
utility::string_t GithubRespositoryContainerlinks::getClass() const
{
    return m__class;
}

void GithubRespositoryContainerlinks::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool GithubRespositoryContainerlinks::r_classIsSet() const
{
    return m__classIsSet;
}

void GithubRespositoryContainerlinks::unset_class()
{
    m__classIsSet = false;
}
}
}
}
}


