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



#include "HudsonMasterComputerexecutors.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




HudsonMasterComputerexecutors::HudsonMasterComputerexecutors()
{
    m_CurrentExecutableIsSet = false;
    m_Idle = false;
    m_IdleIsSet = false;
    m_LikelyStuck = false;
    m_LikelyStuckIsSet = false;
    m_number = 0;
    m_numberIsSet = false;
    m_Progress = 0;
    m_ProgressIsSet = false;
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

HudsonMasterComputerexecutors::~HudsonMasterComputerexecutors()
{
}

void HudsonMasterComputerexecutors::validate()
{
    // TODO: implement validation
}

web::json::value HudsonMasterComputerexecutors::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_CurrentExecutableIsSet)
    {
        val[utility::conversions::to_string_t(U("currentExecutable"))] = ModelBase::toJson(m_CurrentExecutable);
    }
    if(m_IdleIsSet)
    {
        val[utility::conversions::to_string_t(U("idle"))] = ModelBase::toJson(m_Idle);
    }
    if(m_LikelyStuckIsSet)
    {
        val[utility::conversions::to_string_t(U("likelyStuck"))] = ModelBase::toJson(m_LikelyStuck);
    }
    if(m_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("number"))] = ModelBase::toJson(m_number);
    }
    if(m_ProgressIsSet)
    {
        val[utility::conversions::to_string_t(U("progress"))] = ModelBase::toJson(m_Progress);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }

    return val;
}

bool HudsonMasterComputerexecutors::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("currentExecutable"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("currentExecutable")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<FreeStyleBuild> refVal_currentExecutable;
            ok &= ModelBase::fromJson(fieldValue, refVal_currentExecutable);
            setCurrentExecutable(refVal_currentExecutable);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("idle"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("idle")));
        if(!fieldValue.is_null())
        {
            bool refVal_idle;
            ok &= ModelBase::fromJson(fieldValue, refVal_idle);
            setIdle(refVal_idle);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("likelyStuck"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("likelyStuck")));
        if(!fieldValue.is_null())
        {
            bool refVal_likelyStuck;
            ok &= ModelBase::fromJson(fieldValue, refVal_likelyStuck);
            setLikelyStuck(refVal_likelyStuck);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("number")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_number;
            ok &= ModelBase::fromJson(fieldValue, refVal_number);
            setNumber(refVal_number);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("progress"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("progress")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_progress;
            ok &= ModelBase::fromJson(fieldValue, refVal_progress);
            setProgress(refVal_progress);
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

void HudsonMasterComputerexecutors::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_CurrentExecutableIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("currentExecutable")), m_CurrentExecutable));
    }
    if(m_IdleIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("idle")), m_Idle));
    }
    if(m_LikelyStuckIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("likelyStuck")), m_LikelyStuck));
    }
    if(m_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("number")), m_number));
    }
    if(m_ProgressIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("progress")), m_Progress));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
}

bool HudsonMasterComputerexecutors::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("currentExecutable"))))
    {
        std::shared_ptr<FreeStyleBuild> refVal_currentExecutable;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("currentExecutable"))), refVal_currentExecutable );
        setCurrentExecutable(refVal_currentExecutable);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("idle"))))
    {
        bool refVal_idle;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("idle"))), refVal_idle );
        setIdle(refVal_idle);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("likelyStuck"))))
    {
        bool refVal_likelyStuck;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("likelyStuck"))), refVal_likelyStuck );
        setLikelyStuck(refVal_likelyStuck);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("number"))))
    {
        int32_t refVal_number;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("number"))), refVal_number );
        setNumber(refVal_number);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("progress"))))
    {
        int32_t refVal_progress;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("progress"))), refVal_progress );
        setProgress(refVal_progress);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    return ok;
}

std::shared_ptr<FreeStyleBuild> HudsonMasterComputerexecutors::getCurrentExecutable() const
{
    return m_CurrentExecutable;
}

void HudsonMasterComputerexecutors::setCurrentExecutable(const std::shared_ptr<FreeStyleBuild>& value)
{
    m_CurrentExecutable = value;
    m_CurrentExecutableIsSet = true;
}

bool HudsonMasterComputerexecutors::currentExecutableIsSet() const
{
    return m_CurrentExecutableIsSet;
}

void HudsonMasterComputerexecutors::unsetCurrentExecutable()
{
    m_CurrentExecutableIsSet = false;
}
bool HudsonMasterComputerexecutors::isIdle() const
{
    return m_Idle;
}

void HudsonMasterComputerexecutors::setIdle(bool value)
{
    m_Idle = value;
    m_IdleIsSet = true;
}

bool HudsonMasterComputerexecutors::idleIsSet() const
{
    return m_IdleIsSet;
}

void HudsonMasterComputerexecutors::unsetIdle()
{
    m_IdleIsSet = false;
}
bool HudsonMasterComputerexecutors::isLikelyStuck() const
{
    return m_LikelyStuck;
}

void HudsonMasterComputerexecutors::setLikelyStuck(bool value)
{
    m_LikelyStuck = value;
    m_LikelyStuckIsSet = true;
}

bool HudsonMasterComputerexecutors::likelyStuckIsSet() const
{
    return m_LikelyStuckIsSet;
}

void HudsonMasterComputerexecutors::unsetLikelyStuck()
{
    m_LikelyStuckIsSet = false;
}
int32_t HudsonMasterComputerexecutors::getNumber() const
{
    return m_number;
}

void HudsonMasterComputerexecutors::setNumber(int32_t value)
{
    m_number = value;
    m_numberIsSet = true;
}

bool HudsonMasterComputerexecutors::numberIsSet() const
{
    return m_numberIsSet;
}

void HudsonMasterComputerexecutors::unsetnumber()
{
    m_numberIsSet = false;
}
int32_t HudsonMasterComputerexecutors::getProgress() const
{
    return m_Progress;
}

void HudsonMasterComputerexecutors::setProgress(int32_t value)
{
    m_Progress = value;
    m_ProgressIsSet = true;
}

bool HudsonMasterComputerexecutors::progressIsSet() const
{
    return m_ProgressIsSet;
}

void HudsonMasterComputerexecutors::unsetProgress()
{
    m_ProgressIsSet = false;
}
utility::string_t HudsonMasterComputerexecutors::getClass() const
{
    return m__class;
}

void HudsonMasterComputerexecutors::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool HudsonMasterComputerexecutors::r_classIsSet() const
{
    return m__classIsSet;
}

void HudsonMasterComputerexecutors::unset_class()
{
    m__classIsSet = false;
}
}
}
}
}


