/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "BranchImpl.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

BranchImpl::BranchImpl()
{
    m__class = "";
    m__classIsSet = false;
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_FullDisplayName = "";
    m_FullDisplayNameIsSet = false;
    m_FullName = "";
    m_FullNameIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_Organization = "";
    m_OrganizationIsSet = false;
    m_ParametersIsSet = false;
    m_PermissionsIsSet = false;
    m_WeatherScore = 0;
    m_WeatherScoreIsSet = false;
    m_PullRequest = "";
    m_PullRequestIsSet = false;
    m__linksIsSet = false;
    m_LatestRunIsSet = false;
    
}

BranchImpl::~BranchImpl()
{
}

void BranchImpl::validate()
{
    // TODO: implement validation
}

nlohmann::json BranchImpl::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    if(m_DisplayNameIsSet)
    {
        val["displayName"] = ModelBase::toJson(m_DisplayName);
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        val["estimatedDurationInMillis"] = m_EstimatedDurationInMillis;
    }
    if(m_FullDisplayNameIsSet)
    {
        val["fullDisplayName"] = ModelBase::toJson(m_FullDisplayName);
    }
    if(m_FullNameIsSet)
    {
        val["fullName"] = ModelBase::toJson(m_FullName);
    }
    if(m_NameIsSet)
    {
        val["name"] = ModelBase::toJson(m_Name);
    }
    if(m_OrganizationIsSet)
    {
        val["organization"] = ModelBase::toJson(m_Organization);
    }
    {
        nlohmann::json jsonArray;
        for( auto& item : m_Parameters )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            val["parameters"] = jsonArray;
        }
    }
    if(m_PermissionsIsSet)
    {
        val["permissions"] = ModelBase::toJson(m_Permissions);
    }
    if(m_WeatherScoreIsSet)
    {
        val["weatherScore"] = m_WeatherScore;
    }
    if(m_PullRequestIsSet)
    {
        val["pullRequest"] = ModelBase::toJson(m_PullRequest);
    }
    if(m__linksIsSet)
    {
        val["_links"] = ModelBase::toJson(m__links);
    }
    if(m_LatestRunIsSet)
    {
        val["latestRun"] = ModelBase::toJson(m_LatestRun);
    }
    

    return val;
}

void BranchImpl::fromJson(nlohmann::json& val)
{
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    if(val.find("displayName") != val.end())
    {
        setDisplayName(val.at("displayName"));
    }
    if(val.find("estimatedDurationInMillis") != val.end())
    {
        setEstimatedDurationInMillis(val.at("estimatedDurationInMillis"));
    }
    if(val.find("fullDisplayName") != val.end())
    {
        setFullDisplayName(val.at("fullDisplayName"));
    }
    if(val.find("fullName") != val.end())
    {
        setFullName(val.at("fullName"));
    }
    if(val.find("name") != val.end())
    {
        setName(val.at("name"));
    }
    if(val.find("organization") != val.end())
    {
        setOrganization(val.at("organization"));
    }
    {
        m_Parameters.clear();
        nlohmann::json jsonArray;
        if(val.find("parameters") != val.end())
        {
        for( auto& item : val["parameters"] )
        {
            
            if(item.is_null())
            {
                m_Parameters.push_back( StringParameterDefinition() );
            }
            else
            {
                StringParameterDefinition newItem;
                newItem.fromJson(item);
                m_Parameters.push_back( newItem );
            }
            
        }
        }
    }
    if(val.find("permissions") != val.end())
    {
        if(!val["permissions"].is_null())
        {
            BranchImplpermissions newItem;
            newItem.fromJson(val["permissions"]);
            setPermissions( newItem );
        }
        
    }
    if(val.find("weatherScore") != val.end())
    {
        setWeatherScore(val.at("weatherScore"));
    }
    if(val.find("pullRequest") != val.end())
    {
        setPullRequest(val.at("pullRequest"));
    }
    if(val.find("_links") != val.end())
    {
        if(!val["_links"].is_null())
        {
            BranchImpllinks newItem;
            newItem.fromJson(val["_links"]);
            setLinks( newItem );
        }
        
    }
    if(val.find("latestRun") != val.end())
    {
        if(!val["latestRun"].is_null())
        {
            PipelineRunImpl newItem;
            newItem.fromJson(val["latestRun"]);
            setLatestRun( newItem );
        }
        
    }
    
}


std::string BranchImpl::getClass() const
{
    return m__class;
}
void BranchImpl::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool BranchImpl::classIsSet() const
{
    return m__classIsSet;
}
void BranchImpl::unset_class()
{
    m__classIsSet = false;
}
std::string BranchImpl::getDisplayName() const
{
    return m_DisplayName;
}
void BranchImpl::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool BranchImpl::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void BranchImpl::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t BranchImpl::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}
void BranchImpl::setEstimatedDurationInMillis(int32_t const value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}
bool BranchImpl::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}
void BranchImpl::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
std::string BranchImpl::getFullDisplayName() const
{
    return m_FullDisplayName;
}
void BranchImpl::setFullDisplayName(std::string const& value)
{
    m_FullDisplayName = value;
    m_FullDisplayNameIsSet = true;
}
bool BranchImpl::fullDisplayNameIsSet() const
{
    return m_FullDisplayNameIsSet;
}
void BranchImpl::unsetFullDisplayName()
{
    m_FullDisplayNameIsSet = false;
}
std::string BranchImpl::getFullName() const
{
    return m_FullName;
}
void BranchImpl::setFullName(std::string const& value)
{
    m_FullName = value;
    m_FullNameIsSet = true;
}
bool BranchImpl::fullNameIsSet() const
{
    return m_FullNameIsSet;
}
void BranchImpl::unsetFullName()
{
    m_FullNameIsSet = false;
}
std::string BranchImpl::getName() const
{
    return m_Name;
}
void BranchImpl::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool BranchImpl::nameIsSet() const
{
    return m_NameIsSet;
}
void BranchImpl::unsetName()
{
    m_NameIsSet = false;
}
std::string BranchImpl::getOrganization() const
{
    return m_Organization;
}
void BranchImpl::setOrganization(std::string const& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}
bool BranchImpl::organizationIsSet() const
{
    return m_OrganizationIsSet;
}
void BranchImpl::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
std::vector<StringParameterDefinition>& BranchImpl::getParameters()
{
    return m_Parameters;
}
bool BranchImpl::parametersIsSet() const
{
    return m_ParametersIsSet;
}
void BranchImpl::unsetParameters()
{
    m_ParametersIsSet = false;
}
BranchImplpermissions BranchImpl::getPermissions() const
{
    return m_Permissions;
}
void BranchImpl::setPermissions(BranchImplpermissions const& value)
{
    m_Permissions = value;
    m_PermissionsIsSet = true;
}
bool BranchImpl::permissionsIsSet() const
{
    return m_PermissionsIsSet;
}
void BranchImpl::unsetPermissions()
{
    m_PermissionsIsSet = false;
}
int32_t BranchImpl::getWeatherScore() const
{
    return m_WeatherScore;
}
void BranchImpl::setWeatherScore(int32_t const value)
{
    m_WeatherScore = value;
    m_WeatherScoreIsSet = true;
}
bool BranchImpl::weatherScoreIsSet() const
{
    return m_WeatherScoreIsSet;
}
void BranchImpl::unsetWeatherScore()
{
    m_WeatherScoreIsSet = false;
}
std::string BranchImpl::getPullRequest() const
{
    return m_PullRequest;
}
void BranchImpl::setPullRequest(std::string const& value)
{
    m_PullRequest = value;
    m_PullRequestIsSet = true;
}
bool BranchImpl::pullRequestIsSet() const
{
    return m_PullRequestIsSet;
}
void BranchImpl::unsetPullRequest()
{
    m_PullRequestIsSet = false;
}
BranchImpllinks BranchImpl::getLinks() const
{
    return m__links;
}
void BranchImpl::setLinks(BranchImpllinks const& value)
{
    m__links = value;
    m__linksIsSet = true;
}
bool BranchImpl::linksIsSet() const
{
    return m__linksIsSet;
}
void BranchImpl::unset_links()
{
    m__linksIsSet = false;
}
PipelineRunImpl BranchImpl::getLatestRun() const
{
    return m_LatestRun;
}
void BranchImpl::setLatestRun(PipelineRunImpl const& value)
{
    m_LatestRun = value;
    m_LatestRunIsSet = true;
}
bool BranchImpl::latestRunIsSet() const
{
    return m_LatestRunIsSet;
}
void BranchImpl::unsetLatestRun()
{
    m_LatestRunIsSet = false;
}

}
}
}
}

