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



#include "CppRestOpenAPIClient/model/PipelineBranchesitempullRequestlinks.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



PipelineBranchesitempullRequestlinks::PipelineBranchesitempullRequestlinks()
{
    m_Self = utility::conversions::to_string_t("");
    m_SelfIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

PipelineBranchesitempullRequestlinks::~PipelineBranchesitempullRequestlinks()
{
}

void PipelineBranchesitempullRequestlinks::validate()
{
    // TODO: implement validation
}

web::json::value PipelineBranchesitempullRequestlinks::toJson() const
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

bool PipelineBranchesitempullRequestlinks::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("self"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("self")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSelf;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSelf);
            setSelf(refVal_setSelf);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("_class"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("_class")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setClass;
            ok &= ModelBase::fromJson(fieldValue, refVal_setClass);
            setClass(refVal_setClass);
        }
    }
    return ok;
}

void PipelineBranchesitempullRequestlinks::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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

bool PipelineBranchesitempullRequestlinks::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("self"))))
    {
        utility::string_t refVal_setSelf;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("self"))), refVal_setSelf );
        setSelf(refVal_setSelf);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal_setClass;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal_setClass );
        setClass(refVal_setClass);
    }
    return ok;
}

utility::string_t PipelineBranchesitempullRequestlinks::getSelf() const
{
    return m_Self;
}

void PipelineBranchesitempullRequestlinks::setSelf(const utility::string_t& value)
{
    m_Self = value;
    m_SelfIsSet = true;
}

bool PipelineBranchesitempullRequestlinks::selfIsSet() const
{
    return m_SelfIsSet;
}

void PipelineBranchesitempullRequestlinks::unsetSelf()
{
    m_SelfIsSet = false;
}
utility::string_t PipelineBranchesitempullRequestlinks::getClass() const
{
    return m__class;
}

void PipelineBranchesitempullRequestlinks::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool PipelineBranchesitempullRequestlinks::r_classIsSet() const
{
    return m__classIsSet;
}

void PipelineBranchesitempullRequestlinks::unset_class()
{
    m__classIsSet = false;
}
}
}
}
}


