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



#include "EmptyChangeLogSet.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




EmptyChangeLogSet::EmptyChangeLogSet()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_Kind = utility::conversions::to_string_t("");
    m_KindIsSet = false;
}

EmptyChangeLogSet::~EmptyChangeLogSet()
{
}

void EmptyChangeLogSet::validate()
{
    // TODO: implement validation
}

web::json::value EmptyChangeLogSet::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_KindIsSet)
    {
        val[utility::conversions::to_string_t(U("kind"))] = ModelBase::toJson(m_Kind);
    }

    return val;
}

bool EmptyChangeLogSet::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("kind"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("kind")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_kind;
            ok &= ModelBase::fromJson(fieldValue, refVal_kind);
            setKind(refVal_kind);
        }
    }
    return ok;
}

void EmptyChangeLogSet::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_KindIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("kind")), m_Kind));
    }
}

bool EmptyChangeLogSet::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("kind"))))
    {
        utility::string_t refVal_kind;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("kind"))), refVal_kind );
        setKind(refVal_kind);
    }
    return ok;
}

utility::string_t EmptyChangeLogSet::getClass() const
{
    return m__class;
}

void EmptyChangeLogSet::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool EmptyChangeLogSet::r_classIsSet() const
{
    return m__classIsSet;
}

void EmptyChangeLogSet::unset_class()
{
    m__classIsSet = false;
}
utility::string_t EmptyChangeLogSet::getKind() const
{
    return m_Kind;
}

void EmptyChangeLogSet::setKind(const utility::string_t& value)
{
    m_Kind = value;
    m_KindIsSet = true;
}

bool EmptyChangeLogSet::kindIsSet() const
{
    return m_KindIsSet;
}

void EmptyChangeLogSet::unsetKind()
{
    m_KindIsSet = false;
}
}
}
}
}


