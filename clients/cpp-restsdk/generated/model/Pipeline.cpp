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



#include "Pipeline.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




Pipeline::Pipeline()
{
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
    m_Organization = utility::conversions::to_string_t("");
    m_OrganizationIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_DisplayName = utility::conversions::to_string_t("");
    m_DisplayNameIsSet = false;
    m_FullName = utility::conversions::to_string_t("");
    m_FullNameIsSet = false;
    m_WeatherScore = 0;
    m_WeatherScoreIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_LatestRunIsSet = false;
}

Pipeline::~Pipeline()
{
}

void Pipeline::validate()
{
    // TODO: implement validation
}

web::json::value Pipeline::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }
    if(m_OrganizationIsSet)
    {
        val[utility::conversions::to_string_t(U("organization"))] = ModelBase::toJson(m_Organization);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_DisplayNameIsSet)
    {
        val[utility::conversions::to_string_t(U("displayName"))] = ModelBase::toJson(m_DisplayName);
    }
    if(m_FullNameIsSet)
    {
        val[utility::conversions::to_string_t(U("fullName"))] = ModelBase::toJson(m_FullName);
    }
    if(m_WeatherScoreIsSet)
    {
        val[utility::conversions::to_string_t(U("weatherScore"))] = ModelBase::toJson(m_WeatherScore);
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        val[utility::conversions::to_string_t(U("estimatedDurationInMillis"))] = ModelBase::toJson(m_EstimatedDurationInMillis);
    }
    if(m_LatestRunIsSet)
    {
        val[utility::conversions::to_string_t(U("latestRun"))] = ModelBase::toJson(m_LatestRun);
    }

    return val;
}

bool Pipeline::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("organization"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("organization")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_organization;
            ok &= ModelBase::fromJson(fieldValue, refVal_organization);
            setOrganization(refVal_organization);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("name"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("name")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_name;
            ok &= ModelBase::fromJson(fieldValue, refVal_name);
            setName(refVal_name);
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
    if(val.has_field(utility::conversions::to_string_t(U("fullName"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fullName")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_fullName;
            ok &= ModelBase::fromJson(fieldValue, refVal_fullName);
            setFullName(refVal_fullName);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("weatherScore"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("weatherScore")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_weatherScore;
            ok &= ModelBase::fromJson(fieldValue, refVal_weatherScore);
            setWeatherScore(refVal_weatherScore);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("estimatedDurationInMillis")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_estimatedDurationInMillis;
            ok &= ModelBase::fromJson(fieldValue, refVal_estimatedDurationInMillis);
            setEstimatedDurationInMillis(refVal_estimatedDurationInMillis);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("latestRun"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("latestRun")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<PipelinelatestRun> refVal_latestRun;
            ok &= ModelBase::fromJson(fieldValue, refVal_latestRun);
            setLatestRun(refVal_latestRun);
        }
    }
    return ok;
}

void Pipeline::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_OrganizationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("organization")), m_Organization));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_DisplayNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("displayName")), m_DisplayName));
    }
    if(m_FullNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fullName")), m_FullName));
    }
    if(m_WeatherScoreIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("weatherScore")), m_WeatherScore));
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("estimatedDurationInMillis")), m_EstimatedDurationInMillis));
    }
    if(m_LatestRunIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("latestRun")), m_LatestRun));
    }
}

bool Pipeline::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("organization"))))
    {
        utility::string_t refVal_organization;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("organization"))), refVal_organization );
        setOrganization(refVal_organization);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_name;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_name );
        setName(refVal_name);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("displayName"))))
    {
        utility::string_t refVal_displayName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("displayName"))), refVal_displayName );
        setDisplayName(refVal_displayName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fullName"))))
    {
        utility::string_t refVal_fullName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fullName"))), refVal_fullName );
        setFullName(refVal_fullName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("weatherScore"))))
    {
        int32_t refVal_weatherScore;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("weatherScore"))), refVal_weatherScore );
        setWeatherScore(refVal_weatherScore);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        int32_t refVal_estimatedDurationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))), refVal_estimatedDurationInMillis );
        setEstimatedDurationInMillis(refVal_estimatedDurationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("latestRun"))))
    {
        std::shared_ptr<PipelinelatestRun> refVal_latestRun;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("latestRun"))), refVal_latestRun );
        setLatestRun(refVal_latestRun);
    }
    return ok;
}

utility::string_t Pipeline::getClass() const
{
    return m__class;
}

void Pipeline::setClass(const utility::string_t& value)
{
    m__class = value;
    m__classIsSet = true;
}

bool Pipeline::r_classIsSet() const
{
    return m__classIsSet;
}

void Pipeline::unset_class()
{
    m__classIsSet = false;
}
utility::string_t Pipeline::getOrganization() const
{
    return m_Organization;
}

void Pipeline::setOrganization(const utility::string_t& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}

bool Pipeline::organizationIsSet() const
{
    return m_OrganizationIsSet;
}

void Pipeline::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
utility::string_t Pipeline::getName() const
{
    return m_Name;
}

void Pipeline::setName(const utility::string_t& value)
{
    m_Name = value;
    m_NameIsSet = true;
}

bool Pipeline::nameIsSet() const
{
    return m_NameIsSet;
}

void Pipeline::unsetName()
{
    m_NameIsSet = false;
}
utility::string_t Pipeline::getDisplayName() const
{
    return m_DisplayName;
}

void Pipeline::setDisplayName(const utility::string_t& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}

bool Pipeline::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}

void Pipeline::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
utility::string_t Pipeline::getFullName() const
{
    return m_FullName;
}

void Pipeline::setFullName(const utility::string_t& value)
{
    m_FullName = value;
    m_FullNameIsSet = true;
}

bool Pipeline::fullNameIsSet() const
{
    return m_FullNameIsSet;
}

void Pipeline::unsetFullName()
{
    m_FullNameIsSet = false;
}
int32_t Pipeline::getWeatherScore() const
{
    return m_WeatherScore;
}

void Pipeline::setWeatherScore(int32_t value)
{
    m_WeatherScore = value;
    m_WeatherScoreIsSet = true;
}

bool Pipeline::weatherScoreIsSet() const
{
    return m_WeatherScoreIsSet;
}

void Pipeline::unsetWeatherScore()
{
    m_WeatherScoreIsSet = false;
}
int32_t Pipeline::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}

void Pipeline::setEstimatedDurationInMillis(int32_t value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}

bool Pipeline::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}

void Pipeline::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
std::shared_ptr<PipelinelatestRun> Pipeline::getLatestRun() const
{
    return m_LatestRun;
}

void Pipeline::setLatestRun(const std::shared_ptr<PipelinelatestRun>& value)
{
    m_LatestRun = value;
    m_LatestRunIsSet = true;
}

bool Pipeline::latestRunIsSet() const
{
    return m_LatestRunIsSet;
}

void Pipeline::unsetLatestRun()
{
    m_LatestRunIsSet = false;
}
}
}
}
}


