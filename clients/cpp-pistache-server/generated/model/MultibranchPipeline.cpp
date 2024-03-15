/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "MultibranchPipeline.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

MultibranchPipeline::MultibranchPipeline()
{
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_LatestRun = "";
    m_LatestRunIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_Organization = "";
    m_OrganizationIsSet = false;
    m_WeatherScore = 0;
    m_WeatherScoreIsSet = false;
    m_BranchNamesIsSet = false;
    m_NumberOfFailingBranches = 0;
    m_NumberOfFailingBranchesIsSet = false;
    m_NumberOfFailingPullRequests = 0;
    m_NumberOfFailingPullRequestsIsSet = false;
    m_NumberOfSuccessfulBranches = 0;
    m_NumberOfSuccessfulBranchesIsSet = false;
    m_NumberOfSuccessfulPullRequests = 0;
    m_NumberOfSuccessfulPullRequestsIsSet = false;
    m_TotalNumberOfBranches = 0;
    m_TotalNumberOfBranchesIsSet = false;
    m_TotalNumberOfPullRequests = 0;
    m_TotalNumberOfPullRequestsIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void MultibranchPipeline::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool MultibranchPipeline::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool MultibranchPipeline::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "MultibranchPipeline" : pathPrefix;

                                 
    if (branchNamesIsSet())
    {
        const std::vector<std::string>& value = m_BranchNames;
        const std::string currentValuePath = _pathPrefix + ".branchNames";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const std::string& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        
 
                i++;
            }
        }

    }
                                
    return success;
}

bool MultibranchPipeline::operator==(const MultibranchPipeline& rhs) const
{
    return
    
    
    
    ((!displayNameIsSet() && !rhs.displayNameIsSet()) || (displayNameIsSet() && rhs.displayNameIsSet() && getDisplayName() == rhs.getDisplayName())) &&
    
    
    ((!estimatedDurationInMillisIsSet() && !rhs.estimatedDurationInMillisIsSet()) || (estimatedDurationInMillisIsSet() && rhs.estimatedDurationInMillisIsSet() && getEstimatedDurationInMillis() == rhs.getEstimatedDurationInMillis())) &&
    
    
    ((!latestRunIsSet() && !rhs.latestRunIsSet()) || (latestRunIsSet() && rhs.latestRunIsSet() && getLatestRun() == rhs.getLatestRun())) &&
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!organizationIsSet() && !rhs.organizationIsSet()) || (organizationIsSet() && rhs.organizationIsSet() && getOrganization() == rhs.getOrganization())) &&
    
    
    ((!weatherScoreIsSet() && !rhs.weatherScoreIsSet()) || (weatherScoreIsSet() && rhs.weatherScoreIsSet() && getWeatherScore() == rhs.getWeatherScore())) &&
    
    
    ((!branchNamesIsSet() && !rhs.branchNamesIsSet()) || (branchNamesIsSet() && rhs.branchNamesIsSet() && getBranchNames() == rhs.getBranchNames())) &&
    
    
    ((!numberOfFailingBranchesIsSet() && !rhs.numberOfFailingBranchesIsSet()) || (numberOfFailingBranchesIsSet() && rhs.numberOfFailingBranchesIsSet() && getNumberOfFailingBranches() == rhs.getNumberOfFailingBranches())) &&
    
    
    ((!numberOfFailingPullRequestsIsSet() && !rhs.numberOfFailingPullRequestsIsSet()) || (numberOfFailingPullRequestsIsSet() && rhs.numberOfFailingPullRequestsIsSet() && getNumberOfFailingPullRequests() == rhs.getNumberOfFailingPullRequests())) &&
    
    
    ((!numberOfSuccessfulBranchesIsSet() && !rhs.numberOfSuccessfulBranchesIsSet()) || (numberOfSuccessfulBranchesIsSet() && rhs.numberOfSuccessfulBranchesIsSet() && getNumberOfSuccessfulBranches() == rhs.getNumberOfSuccessfulBranches())) &&
    
    
    ((!numberOfSuccessfulPullRequestsIsSet() && !rhs.numberOfSuccessfulPullRequestsIsSet()) || (numberOfSuccessfulPullRequestsIsSet() && rhs.numberOfSuccessfulPullRequestsIsSet() && getNumberOfSuccessfulPullRequests() == rhs.getNumberOfSuccessfulPullRequests())) &&
    
    
    ((!totalNumberOfBranchesIsSet() && !rhs.totalNumberOfBranchesIsSet()) || (totalNumberOfBranchesIsSet() && rhs.totalNumberOfBranchesIsSet() && getTotalNumberOfBranches() == rhs.getTotalNumberOfBranches())) &&
    
    
    ((!totalNumberOfPullRequestsIsSet() && !rhs.totalNumberOfPullRequestsIsSet()) || (totalNumberOfPullRequestsIsSet() && rhs.totalNumberOfPullRequestsIsSet() && getTotalNumberOfPullRequests() == rhs.getTotalNumberOfPullRequests())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool MultibranchPipeline::operator!=(const MultibranchPipeline& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const MultibranchPipeline& o)
{
    j = nlohmann::json::object();
    if(o.displayNameIsSet())
        j["displayName"] = o.m_DisplayName;
    if(o.estimatedDurationInMillisIsSet())
        j["estimatedDurationInMillis"] = o.m_EstimatedDurationInMillis;
    if(o.latestRunIsSet())
        j["latestRun"] = o.m_LatestRun;
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    if(o.organizationIsSet())
        j["organization"] = o.m_Organization;
    if(o.weatherScoreIsSet())
        j["weatherScore"] = o.m_WeatherScore;
    if(o.branchNamesIsSet() || !o.m_BranchNames.empty())
        j["branchNames"] = o.m_BranchNames;
    if(o.numberOfFailingBranchesIsSet())
        j["numberOfFailingBranches"] = o.m_NumberOfFailingBranches;
    if(o.numberOfFailingPullRequestsIsSet())
        j["numberOfFailingPullRequests"] = o.m_NumberOfFailingPullRequests;
    if(o.numberOfSuccessfulBranchesIsSet())
        j["numberOfSuccessfulBranches"] = o.m_NumberOfSuccessfulBranches;
    if(o.numberOfSuccessfulPullRequestsIsSet())
        j["numberOfSuccessfulPullRequests"] = o.m_NumberOfSuccessfulPullRequests;
    if(o.totalNumberOfBranchesIsSet())
        j["totalNumberOfBranches"] = o.m_TotalNumberOfBranches;
    if(o.totalNumberOfPullRequestsIsSet())
        j["totalNumberOfPullRequests"] = o.m_TotalNumberOfPullRequests;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, MultibranchPipeline& o)
{
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
    if(j.find("latestRun") != j.end())
    {
        j.at("latestRun").get_to(o.m_LatestRun);
        o.m_LatestRunIsSet = true;
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
    if(j.find("weatherScore") != j.end())
    {
        j.at("weatherScore").get_to(o.m_WeatherScore);
        o.m_WeatherScoreIsSet = true;
    } 
    if(j.find("branchNames") != j.end())
    {
        j.at("branchNames").get_to(o.m_BranchNames);
        o.m_BranchNamesIsSet = true;
    } 
    if(j.find("numberOfFailingBranches") != j.end())
    {
        j.at("numberOfFailingBranches").get_to(o.m_NumberOfFailingBranches);
        o.m_NumberOfFailingBranchesIsSet = true;
    } 
    if(j.find("numberOfFailingPullRequests") != j.end())
    {
        j.at("numberOfFailingPullRequests").get_to(o.m_NumberOfFailingPullRequests);
        o.m_NumberOfFailingPullRequestsIsSet = true;
    } 
    if(j.find("numberOfSuccessfulBranches") != j.end())
    {
        j.at("numberOfSuccessfulBranches").get_to(o.m_NumberOfSuccessfulBranches);
        o.m_NumberOfSuccessfulBranchesIsSet = true;
    } 
    if(j.find("numberOfSuccessfulPullRequests") != j.end())
    {
        j.at("numberOfSuccessfulPullRequests").get_to(o.m_NumberOfSuccessfulPullRequests);
        o.m_NumberOfSuccessfulPullRequestsIsSet = true;
    } 
    if(j.find("totalNumberOfBranches") != j.end())
    {
        j.at("totalNumberOfBranches").get_to(o.m_TotalNumberOfBranches);
        o.m_TotalNumberOfBranchesIsSet = true;
    } 
    if(j.find("totalNumberOfPullRequests") != j.end())
    {
        j.at("totalNumberOfPullRequests").get_to(o.m_TotalNumberOfPullRequests);
        o.m_TotalNumberOfPullRequestsIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

std::string MultibranchPipeline::getDisplayName() const
{
    return m_DisplayName;
}
void MultibranchPipeline::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool MultibranchPipeline::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void MultibranchPipeline::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t MultibranchPipeline::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}
void MultibranchPipeline::setEstimatedDurationInMillis(int32_t const value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}
bool MultibranchPipeline::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}
void MultibranchPipeline::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
std::string MultibranchPipeline::getLatestRun() const
{
    return m_LatestRun;
}
void MultibranchPipeline::setLatestRun(std::string const& value)
{
    m_LatestRun = value;
    m_LatestRunIsSet = true;
}
bool MultibranchPipeline::latestRunIsSet() const
{
    return m_LatestRunIsSet;
}
void MultibranchPipeline::unsetLatestRun()
{
    m_LatestRunIsSet = false;
}
std::string MultibranchPipeline::getName() const
{
    return m_Name;
}
void MultibranchPipeline::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool MultibranchPipeline::nameIsSet() const
{
    return m_NameIsSet;
}
void MultibranchPipeline::unsetName()
{
    m_NameIsSet = false;
}
std::string MultibranchPipeline::getOrganization() const
{
    return m_Organization;
}
void MultibranchPipeline::setOrganization(std::string const& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}
bool MultibranchPipeline::organizationIsSet() const
{
    return m_OrganizationIsSet;
}
void MultibranchPipeline::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
int32_t MultibranchPipeline::getWeatherScore() const
{
    return m_WeatherScore;
}
void MultibranchPipeline::setWeatherScore(int32_t const value)
{
    m_WeatherScore = value;
    m_WeatherScoreIsSet = true;
}
bool MultibranchPipeline::weatherScoreIsSet() const
{
    return m_WeatherScoreIsSet;
}
void MultibranchPipeline::unsetWeatherScore()
{
    m_WeatherScoreIsSet = false;
}
std::vector<std::string> MultibranchPipeline::getBranchNames() const
{
    return m_BranchNames;
}
void MultibranchPipeline::setBranchNames(std::vector<std::string> const& value)
{
    m_BranchNames = value;
    m_BranchNamesIsSet = true;
}
bool MultibranchPipeline::branchNamesIsSet() const
{
    return m_BranchNamesIsSet;
}
void MultibranchPipeline::unsetBranchNames()
{
    m_BranchNamesIsSet = false;
}
int32_t MultibranchPipeline::getNumberOfFailingBranches() const
{
    return m_NumberOfFailingBranches;
}
void MultibranchPipeline::setNumberOfFailingBranches(int32_t const value)
{
    m_NumberOfFailingBranches = value;
    m_NumberOfFailingBranchesIsSet = true;
}
bool MultibranchPipeline::numberOfFailingBranchesIsSet() const
{
    return m_NumberOfFailingBranchesIsSet;
}
void MultibranchPipeline::unsetNumberOfFailingBranches()
{
    m_NumberOfFailingBranchesIsSet = false;
}
int32_t MultibranchPipeline::getNumberOfFailingPullRequests() const
{
    return m_NumberOfFailingPullRequests;
}
void MultibranchPipeline::setNumberOfFailingPullRequests(int32_t const value)
{
    m_NumberOfFailingPullRequests = value;
    m_NumberOfFailingPullRequestsIsSet = true;
}
bool MultibranchPipeline::numberOfFailingPullRequestsIsSet() const
{
    return m_NumberOfFailingPullRequestsIsSet;
}
void MultibranchPipeline::unsetNumberOfFailingPullRequests()
{
    m_NumberOfFailingPullRequestsIsSet = false;
}
int32_t MultibranchPipeline::getNumberOfSuccessfulBranches() const
{
    return m_NumberOfSuccessfulBranches;
}
void MultibranchPipeline::setNumberOfSuccessfulBranches(int32_t const value)
{
    m_NumberOfSuccessfulBranches = value;
    m_NumberOfSuccessfulBranchesIsSet = true;
}
bool MultibranchPipeline::numberOfSuccessfulBranchesIsSet() const
{
    return m_NumberOfSuccessfulBranchesIsSet;
}
void MultibranchPipeline::unsetNumberOfSuccessfulBranches()
{
    m_NumberOfSuccessfulBranchesIsSet = false;
}
int32_t MultibranchPipeline::getNumberOfSuccessfulPullRequests() const
{
    return m_NumberOfSuccessfulPullRequests;
}
void MultibranchPipeline::setNumberOfSuccessfulPullRequests(int32_t const value)
{
    m_NumberOfSuccessfulPullRequests = value;
    m_NumberOfSuccessfulPullRequestsIsSet = true;
}
bool MultibranchPipeline::numberOfSuccessfulPullRequestsIsSet() const
{
    return m_NumberOfSuccessfulPullRequestsIsSet;
}
void MultibranchPipeline::unsetNumberOfSuccessfulPullRequests()
{
    m_NumberOfSuccessfulPullRequestsIsSet = false;
}
int32_t MultibranchPipeline::getTotalNumberOfBranches() const
{
    return m_TotalNumberOfBranches;
}
void MultibranchPipeline::setTotalNumberOfBranches(int32_t const value)
{
    m_TotalNumberOfBranches = value;
    m_TotalNumberOfBranchesIsSet = true;
}
bool MultibranchPipeline::totalNumberOfBranchesIsSet() const
{
    return m_TotalNumberOfBranchesIsSet;
}
void MultibranchPipeline::unsetTotalNumberOfBranches()
{
    m_TotalNumberOfBranchesIsSet = false;
}
int32_t MultibranchPipeline::getTotalNumberOfPullRequests() const
{
    return m_TotalNumberOfPullRequests;
}
void MultibranchPipeline::setTotalNumberOfPullRequests(int32_t const value)
{
    m_TotalNumberOfPullRequests = value;
    m_TotalNumberOfPullRequestsIsSet = true;
}
bool MultibranchPipeline::totalNumberOfPullRequestsIsSet() const
{
    return m_TotalNumberOfPullRequestsIsSet;
}
void MultibranchPipeline::unsetTotalNumberOfPullRequests()
{
    m_TotalNumberOfPullRequestsIsSet = false;
}
std::string MultibranchPipeline::getClass() const
{
    return m__class;
}
void MultibranchPipeline::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool MultibranchPipeline::r_classIsSet() const
{
    return m__classIsSet;
}
void MultibranchPipeline::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

