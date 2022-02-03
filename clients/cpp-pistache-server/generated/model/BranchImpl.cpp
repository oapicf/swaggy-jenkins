/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "BranchImpl.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

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

void BranchImpl::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool BranchImpl::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool BranchImpl::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "BranchImpl" : pathPrefix;

                                     
    if (parametersIsSet())
    {
        const std::vector<StringParameterDefinition>& value = m_Parameters;
        const std::string currentValuePath = _pathPrefix + ".parameters";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const StringParameterDefinition& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".parameters") && success;
 
                i++;
            }
        }

    }
                        
    return success;
}

bool BranchImpl::operator==(const BranchImpl& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!displayNameIsSet() && !rhs.displayNameIsSet()) || (displayNameIsSet() && rhs.displayNameIsSet() && getDisplayName() == rhs.getDisplayName())) &&
    
    
    ((!estimatedDurationInMillisIsSet() && !rhs.estimatedDurationInMillisIsSet()) || (estimatedDurationInMillisIsSet() && rhs.estimatedDurationInMillisIsSet() && getEstimatedDurationInMillis() == rhs.getEstimatedDurationInMillis())) &&
    
    
    ((!fullDisplayNameIsSet() && !rhs.fullDisplayNameIsSet()) || (fullDisplayNameIsSet() && rhs.fullDisplayNameIsSet() && getFullDisplayName() == rhs.getFullDisplayName())) &&
    
    
    ((!fullNameIsSet() && !rhs.fullNameIsSet()) || (fullNameIsSet() && rhs.fullNameIsSet() && getFullName() == rhs.getFullName())) &&
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!organizationIsSet() && !rhs.organizationIsSet()) || (organizationIsSet() && rhs.organizationIsSet() && getOrganization() == rhs.getOrganization())) &&
    
    
    ((!parametersIsSet() && !rhs.parametersIsSet()) || (parametersIsSet() && rhs.parametersIsSet() && getParameters() == rhs.getParameters())) &&
    
    
    ((!permissionsIsSet() && !rhs.permissionsIsSet()) || (permissionsIsSet() && rhs.permissionsIsSet() && getPermissions() == rhs.getPermissions())) &&
    
    
    ((!weatherScoreIsSet() && !rhs.weatherScoreIsSet()) || (weatherScoreIsSet() && rhs.weatherScoreIsSet() && getWeatherScore() == rhs.getWeatherScore())) &&
    
    
    ((!pullRequestIsSet() && !rhs.pullRequestIsSet()) || (pullRequestIsSet() && rhs.pullRequestIsSet() && getPullRequest() == rhs.getPullRequest())) &&
    
    
    ((!linksIsSet() && !rhs.linksIsSet()) || (linksIsSet() && rhs.linksIsSet() && getLinks() == rhs.getLinks())) &&
    
    
    ((!latestRunIsSet() && !rhs.latestRunIsSet()) || (latestRunIsSet() && rhs.latestRunIsSet() && getLatestRun() == rhs.getLatestRun()))
    
    ;
}

bool BranchImpl::operator!=(const BranchImpl& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const BranchImpl& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.displayNameIsSet())
        j["displayName"] = o.m_DisplayName;
    if(o.estimatedDurationInMillisIsSet())
        j["estimatedDurationInMillis"] = o.m_EstimatedDurationInMillis;
    if(o.fullDisplayNameIsSet())
        j["fullDisplayName"] = o.m_FullDisplayName;
    if(o.fullNameIsSet())
        j["fullName"] = o.m_FullName;
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    if(o.organizationIsSet())
        j["organization"] = o.m_Organization;
    if(o.parametersIsSet() || !o.m_Parameters.empty())
        j["parameters"] = o.m_Parameters;
    if(o.permissionsIsSet())
        j["permissions"] = o.m_Permissions;
    if(o.weatherScoreIsSet())
        j["weatherScore"] = o.m_WeatherScore;
    if(o.pullRequestIsSet())
        j["pullRequest"] = o.m_PullRequest;
    if(o.linksIsSet())
        j["_links"] = o.m__links;
    if(o.latestRunIsSet())
        j["latestRun"] = o.m_LatestRun;
    
}

void from_json(const nlohmann::json& j, BranchImpl& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("displayName") != j.end())
    {
        j.at("displayName").get_to(o.m_DisplayName);
        o.m_DisplayNameIsSet = true;
    } 
    if(j.find("estimatedDurationInMillis") != j.end())
    {
        j.at("estimatedDurationInMillis").get_to(o.m_EstimatedDurationInMillis);
        o.m_EstimatedDurationInMillisIsSet = true;
    } 
    if(j.find("fullDisplayName") != j.end())
    {
        j.at("fullDisplayName").get_to(o.m_FullDisplayName);
        o.m_FullDisplayNameIsSet = true;
    } 
    if(j.find("fullName") != j.end())
    {
        j.at("fullName").get_to(o.m_FullName);
        o.m_FullNameIsSet = true;
    } 
    if(j.find("name") != j.end())
    {
        j.at("name").get_to(o.m_Name);
        o.m_NameIsSet = true;
    } 
    if(j.find("organization") != j.end())
    {
        j.at("organization").get_to(o.m_Organization);
        o.m_OrganizationIsSet = true;
    } 
    if(j.find("parameters") != j.end())
    {
        j.at("parameters").get_to(o.m_Parameters);
        o.m_ParametersIsSet = true;
    } 
    if(j.find("permissions") != j.end())
    {
        j.at("permissions").get_to(o.m_Permissions);
        o.m_PermissionsIsSet = true;
    } 
    if(j.find("weatherScore") != j.end())
    {
        j.at("weatherScore").get_to(o.m_WeatherScore);
        o.m_WeatherScoreIsSet = true;
    } 
    if(j.find("pullRequest") != j.end())
    {
        j.at("pullRequest").get_to(o.m_PullRequest);
        o.m_PullRequestIsSet = true;
    } 
    if(j.find("_links") != j.end())
    {
        j.at("_links").get_to(o.m__links);
        o.m__linksIsSet = true;
    } 
    if(j.find("latestRun") != j.end())
    {
        j.at("latestRun").get_to(o.m_LatestRun);
        o.m_LatestRunIsSet = true;
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
bool BranchImpl::r_classIsSet() const
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
std::vector<StringParameterDefinition> BranchImpl::getParameters() const
{
    return m_Parameters;
}
void BranchImpl::setParameters(std::vector<StringParameterDefinition> const& value)
{
    m_Parameters = value;
    m_ParametersIsSet = true;
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


} // namespace org::openapitools::server::model

