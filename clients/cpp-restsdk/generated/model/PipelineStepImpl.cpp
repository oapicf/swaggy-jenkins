/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineStepImpl.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




PipelineStepImpl::PipelineStepImpl()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m__linksIsSet = false;
    m_DisplayName = utility::conversions::to_string_t("");
    m_DisplayNameIsSet = false;
    m_DurationInMillis = 0;
    m_DurationInMillisIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_InputIsSet = false;
    m_Result = utility::conversions::to_string_t("");
    m_ResultIsSet = false;
    m_StartTime = utility::conversions::to_string_t("");
    m_StartTimeIsSet = false;
    m_State = utility::conversions::to_string_t("");
    m_StateIsSet = false;
}

PipelineStepImpl::~PipelineStepImpl()
{
}

void PipelineStepImpl::validate()
{
    // TODO: implement validation
}

web::json::value PipelineStepImpl::toJson() const
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
    if(m_DisplayNameIsSet)
    {
        val[utility::conversions::to_string_t(U("displayName"))] = ModelBase::toJson(m_DisplayName);
    }
    if(m_DurationInMillisIsSet)
    {
        val[utility::conversions::to_string_t(U("durationInMillis"))] = ModelBase::toJson(m_DurationInMillis);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_InputIsSet)
    {
        val[utility::conversions::to_string_t(U("input"))] = ModelBase::toJson(m_Input);
    }
    if(m_ResultIsSet)
    {
        val[utility::conversions::to_string_t(U("result"))] = ModelBase::toJson(m_Result);
    }
    if(m_StartTimeIsSet)
    {
        val[utility::conversions::to_string_t(U("startTime"))] = ModelBase::toJson(m_StartTime);
    }
    if(m_StateIsSet)
    {
        val[utility::conversions::to_string_t(U("state"))] = ModelBase::toJson(m_State);
    }

    return val;
}

bool PipelineStepImpl::fromJson(const web::json::value& val)
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
            std::shared_ptr<PipelineStepImpllinks> refVal__links;
            ok &= ModelBase::fromJson(fieldValue, refVal__links);
            setLinks(refVal__links);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("displayName"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("displayName")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_displayName;
            ok &= ModelBase::fromJson(fieldValue, refVal_displayName);
            setDisplayName(refVal_displayName);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("durationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_durationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_durationInMillis);
            setDurationInMillis(refVal_durationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("input"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("input")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<InputStepImpl> refVal_input;
            ok &= ModelBase::fromJson(fieldValue, refVal_input);
            setInput(refVal_input);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("result"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("result")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_result;
            ok &= ModelBase::fromJson(fieldValue, refVal_result);
            setResult(refVal_result);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("startTime"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("startTime")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_startTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_startTime);
            setStartTime(refVal_startTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("state"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("state")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_state;
            ok &= ModelBase::fromJson(fieldValue, refVal_state);
            setState(refVal_state);
        }
    }
    return ok;
}

void PipelineStepImpl::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_DisplayNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("displayName")), m_DisplayName));
    }
    if(m_DurationInMillisIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("durationInMillis")), m_DurationInMillis));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_InputIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("input")), m_Input));
    }
    if(m_ResultIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("result")), m_Result));
    }
    if(m_StartTimeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("startTime")), m_StartTime));
    }
    if(m_StateIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("state")), m_State));
    }
}

bool PipelineStepImpl::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
        std::shared_ptr<PipelineStepImpllinks> refVal__links;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_links"))), refVal__links );
        setLinks(refVal__links);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("displayName"))))
    {
        utility::string_t refVal_displayName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("displayName"))), refVal_displayName );
        setDisplayName(refVal_displayName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("durationInMillis"))))
    {
        int32_t refVal_durationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("durationInMillis"))), refVal_durationInMillis );
        setDurationInMillis(refVal_durationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("input"))))
    {
        std::shared_ptr<InputStepImpl> refVal_input;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("input"))), refVal_input );
        setInput(refVal_input);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("result"))))
    {
        utility::string_t refVal_result;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("result"))), refVal_result );
        setResult(refVal_result);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("startTime"))))
    {
        utility::string_t refVal_startTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("startTime"))), refVal_startTime );
        setStartTime(refVal_startTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("state"))))
    {
        utility::string_t refVal_state;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("state"))), refVal_state );
        setState(refVal_state);
    }
    return ok;
}

utility::string_t PipelineStepImpl::getClass() const
{
    return m__class;
}

void PipelineStepImpl::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool PipelineStepImpl::r_classIsSet() const
{
    return m__classIsSet;
}

void PipelineStepImpl::unset_class()
{
    m__classIsSet = false;
}
std::shared_ptr<PipelineStepImpllinks> PipelineStepImpl::getLinks() const
{
    return m__links;
}

void PipelineStepImpl::setLinks(const std::shared_ptr<PipelineStepImpllinks>& value)
{
    m__links = value;
    m__linksIsSet = true;
}

bool PipelineStepImpl::linksIsSet() const
{
    return m__linksIsSet;
}

void PipelineStepImpl::unset_links()
{
    m__linksIsSet = false;
}
utility::string_t PipelineStepImpl::getDisplayName() const
{
    return m_DisplayName;
}

void PipelineStepImpl::setDisplayName(const utility::string_t& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}

bool PipelineStepImpl::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}

void PipelineStepImpl::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t PipelineStepImpl::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void PipelineStepImpl::setDurationInMillis(int32_t value)
{
    m_DurationInMillis = value;
    m_DurationInMillisIsSet = true;
}

bool PipelineStepImpl::durationInMillisIsSet() const
{
    return m_DurationInMillisIsSet;
}

void PipelineStepImpl::unsetDurationInMillis()
{
    m_DurationInMillisIsSet = false;
}
utility::string_t PipelineStepImpl::getId() const
{
    return m_Id;
}

void PipelineStepImpl::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool PipelineStepImpl::idIsSet() const
{
    return m_IdIsSet;
}

void PipelineStepImpl::unsetId()
{
    m_IdIsSet = false;
}
std::shared_ptr<InputStepImpl> PipelineStepImpl::getInput() const
{
    return m_Input;
}

void PipelineStepImpl::setInput(const std::shared_ptr<InputStepImpl>& value)
{
    m_Input = value;
    m_InputIsSet = true;
}

bool PipelineStepImpl::inputIsSet() const
{
    return m_InputIsSet;
}

void PipelineStepImpl::unsetInput()
{
    m_InputIsSet = false;
}
utility::string_t PipelineStepImpl::getResult() const
{
    return m_Result;
}

void PipelineStepImpl::setResult(const utility::string_t& value)
{
    m_Result = value;
    m_ResultIsSet = true;
}

bool PipelineStepImpl::resultIsSet() const
{
    return m_ResultIsSet;
}

void PipelineStepImpl::unsetResult()
{
    m_ResultIsSet = false;
}
utility::string_t PipelineStepImpl::getStartTime() const
{
    return m_StartTime;
}

void PipelineStepImpl::setStartTime(const utility::string_t& value)
{
    m_StartTime = value;
    m_StartTimeIsSet = true;
}

bool PipelineStepImpl::startTimeIsSet() const
{
    return m_StartTimeIsSet;
}

void PipelineStepImpl::unsetStartTime()
{
    m_StartTimeIsSet = false;
}
utility::string_t PipelineStepImpl::getState() const
{
    return m_State;
}

void PipelineStepImpl::setState(const utility::string_t& value)
{
    m_State = value;
    m_StateIsSet = true;
}

bool PipelineStepImpl::stateIsSet() const
{
    return m_StateIsSet;
}

void PipelineStepImpl::unsetState()
{
    m_StateIsSet = false;
}
}
}
}
}


