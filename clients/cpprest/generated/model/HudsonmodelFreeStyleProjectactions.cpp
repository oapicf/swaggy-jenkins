/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 0.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "HudsonmodelFreeStyleProjectactions.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

HudsonmodelFreeStyleProjectactions::HudsonmodelFreeStyleProjectactions()
{
    m__class = U("");
    m__classIsSet = false;
    
}

HudsonmodelFreeStyleProjectactions::~HudsonmodelFreeStyleProjectactions()
{
}

void HudsonmodelFreeStyleProjectactions::validate()
{
    // TODO: implement validation
}

web::json::value HudsonmodelFreeStyleProjectactions::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m__classIsSet)
    {
        val[U("_class")] = ModelBase::toJson(m__class);
    }
    

    return val;
}

void HudsonmodelFreeStyleProjectactions::fromJson(web::json::value& val)
{
    if(val.has_field(U("_class")))
    {
        setClass(ModelBase::stringFromJson(val[U("_class")]));
        
    }
    
}

void HudsonmodelFreeStyleProjectactions::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("_class"), m__class));
        
    }
    
}

void HudsonmodelFreeStyleProjectactions::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(multipart->hasContent(U("_class")))
    {
        setClass(ModelBase::stringFromHttpContent(multipart->getContent(U("_class"))));
        
    }
    
}


utility::string_t HudsonmodelFreeStyleProjectactions::getClass() const
{
    return m__class;
}
void HudsonmodelFreeStyleProjectactions::setClass(utility::string_t value)
{
    m__class = value;
    m__classIsSet = true;
}
bool HudsonmodelFreeStyleProjectactions::_classIsSet() const
{
    return m__classIsSet;
}
void HudsonmodelFreeStyleProjectactions::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}
