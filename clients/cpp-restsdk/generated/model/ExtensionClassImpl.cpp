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



#include "ExtensionClassImpl.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ExtensionClassImpl::ExtensionClassImpl()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m__linksIsSet = false;
    m_ClassesIsSet = false;
}

ExtensionClassImpl::~ExtensionClassImpl()
{
}

void ExtensionClassImpl::validate()
{
    // TODO: implement validation
}

web::json::value ExtensionClassImpl::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m__linksIsSet)
    {
        val[utility::conversions::to_string_t(U("_links"))] = ModelBase::toJson(m__links);
    }
    if(m_ClassesIsSet)
    {
        val[utility::conversions::to_string_t(U("classes"))] = ModelBase::toJson(m_Classes);
    }

    return val;
}

bool ExtensionClassImpl::fromJson(const web::json::value& val)
{
    bool ok = true;
    
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
    if(val.has_field(utility::conversions::to_string_t(U("_links"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("_links")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<ExtensionClassImpllinks> refVal__links;
            ok &= ModelBase::fromJson(fieldValue, refVal__links);
            setLinks(refVal__links);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("classes"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("classes")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_classes;
            ok &= ModelBase::fromJson(fieldValue, refVal_classes);
            setClasses(refVal_classes);
        }
    }
    return ok;
}

void ExtensionClassImpl::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
    if(m__linksIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_links")), m__links));
    }
    if(m_ClassesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("classes")), m_Classes));
    }
}

bool ExtensionClassImpl::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_links"))))
    {
        std::shared_ptr<ExtensionClassImpllinks> refVal__links;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_links"))), refVal__links );
        setLinks(refVal__links);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("classes"))))
    {
        std::vector<utility::string_t> refVal_classes;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("classes"))), refVal_classes );
        setClasses(refVal_classes);
    }
    return ok;
}

utility::string_t ExtensionClassImpl::getClass() const
{
    return m__class;
}

void ExtensionClassImpl::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool ExtensionClassImpl::r_classIsSet() const
{
    return m__classIsSet;
}

void ExtensionClassImpl::unset_class()
{
    m__classIsSet = false;
}
std::shared_ptr<ExtensionClassImpllinks> ExtensionClassImpl::getLinks() const
{
    return m__links;
}

void ExtensionClassImpl::setLinks(const std::shared_ptr<ExtensionClassImpllinks>& value)
{
    m__links = value;
    m__linksIsSet = true;
}

bool ExtensionClassImpl::linksIsSet() const
{
    return m__linksIsSet;
}

void ExtensionClassImpl::unset_links()
{
    m__linksIsSet = false;
}
std::vector<utility::string_t>& ExtensionClassImpl::getClasses()
{
    return m_Classes;
}

void ExtensionClassImpl::setClasses(const std::vector<utility::string_t>& value)
{
    m_Classes = value;
    m_ClassesIsSet = true;
}

bool ExtensionClassImpl::classesIsSet() const
{
    return m_ClassesIsSet;
}

void ExtensionClassImpl::unsetClasses()
{
    m_ClassesIsSet = false;
}
}
}
}
}


