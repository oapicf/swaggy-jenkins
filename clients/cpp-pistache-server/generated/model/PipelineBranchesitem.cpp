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


#include "PipelineBranchesitem.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

PipelineBranchesitem::PipelineBranchesitem()
{
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_WeatherScore = 0;
    m_WeatherScoreIsSet = false;
    m_LatestRunIsSet = false;
    m_Organization = "";
    m_OrganizationIsSet = false;
    m_PullRequestIsSet = false;
    m_TotalNumberOfPullRequests = 0;
    m_TotalNumberOfPullRequestsIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

PipelineBranchesitem::~PipelineBranchesitem()
{
}

void PipelineBranchesitem::validate()
{
    // TODO: implement validation
}

nlohmann::json PipelineBranchesitem::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m_DisplayNameIsSet)
    {
        val["displayName"] = ModelBase::toJson(m_DisplayName);
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        val["estimatedDurationInMillis"] = m_EstimatedDurationInMillis;
    }
    if(m_NameIsSet)
    {
        val["name"] = ModelBase::toJson(m_Name);
    }
    if(m_WeatherScoreIsSet)
    {
        val["weatherScore"] = m_WeatherScore;
    }
    if(m_LatestRunIsSet)
    {
        val["latestRun"] = ModelBase::toJson(m_LatestRun);
    }
    if(m_OrganizationIsSet)
    {
        val["organization"] = ModelBase::toJson(m_Organization);
    }
    if(m_PullRequestIsSet)
    {
        val["pullRequest"] = ModelBase::toJson(m_PullRequest);
    }
    if(m_TotalNumberOfPullRequestsIsSet)
    {
        val["totalNumberOfPullRequests"] = m_TotalNumberOfPullRequests;
    }
    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    

    return val;
}

void PipelineBranchesitem::fromJson(nlohmann::json& val)
{
    if(val.find("displayName") != val.end())
    {
        setDisplayName(val.at("displayName"));
    }
    if(val.find("estimatedDurationInMillis") != val.end())
    {
        setEstimatedDurationInMillis(val.at("estimatedDurationInMillis"));
    }
    if(val.find("name") != val.end())
    {
        setName(val.at("name"));
    }
    if(val.find("weatherScore") != val.end())
    {
        setWeatherScore(val.at("weatherScore"));
    }
    if(val.find("latestRun") != val.end())
    {
        if(!val["latestRun"].is_null())
        {
            PipelineBranchesitemlatestRun newItem;
            newItem.fromJson(val["latestRun"]);
            setLatestRun( newItem );
        }
        
    }
    if(val.find("organization") != val.end())
    {
        setOrganization(val.at("organization"));
    }
    if(val.find("pullRequest") != val.end())
    {
        if(!val["pullRequest"].is_null())
        {
            PipelineBranchesitempullRequest newItem;
            newItem.fromJson(val["pullRequest"]);
            setPullRequest( newItem );
        }
        
    }
    if(val.find("totalNumberOfPullRequests") != val.end())
    {
        setTotalNumberOfPullRequests(val.at("totalNumberOfPullRequests"));
    }
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    
}


std::string PipelineBranchesitem::getDisplayName() const
{
    return m_DisplayName;
}
void PipelineBranchesitem::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool PipelineBranchesitem::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void PipelineBranchesitem::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t PipelineBranchesitem::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}
void PipelineBranchesitem::setEstimatedDurationInMillis(int32_t const value)
{
    m_EstimatedDurationInMillis = value;
    m_EstimatedDurationInMillisIsSet = true;
}
bool PipelineBranchesitem::estimatedDurationInMillisIsSet() const
{
    return m_EstimatedDurationInMillisIsSet;
}
void PipelineBranchesitem::unsetEstimatedDurationInMillis()
{
    m_EstimatedDurationInMillisIsSet = false;
}
std::string PipelineBranchesitem::getName() const
{
    return m_Name;
}
void PipelineBranchesitem::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool PipelineBranchesitem::nameIsSet() const
{
    return m_NameIsSet;
}
void PipelineBranchesitem::unsetName()
{
    m_NameIsSet = false;
}
int32_t PipelineBranchesitem::getWeatherScore() const
{
    return m_WeatherScore;
}
void PipelineBranchesitem::setWeatherScore(int32_t const value)
{
    m_WeatherScore = value;
    m_WeatherScoreIsSet = true;
}
bool PipelineBranchesitem::weatherScoreIsSet() const
{
    return m_WeatherScoreIsSet;
}
void PipelineBranchesitem::unsetWeatherScore()
{
    m_WeatherScoreIsSet = false;
}
PipelineBranchesitemlatestRun PipelineBranchesitem::getLatestRun() const
{
    return m_LatestRun;
}
void PipelineBranchesitem::setLatestRun(PipelineBranchesitemlatestRun const& value)
{
    m_LatestRun = value;
    m_LatestRunIsSet = true;
}
bool PipelineBranchesitem::latestRunIsSet() const
{
    return m_LatestRunIsSet;
}
void PipelineBranchesitem::unsetLatestRun()
{
    m_LatestRunIsSet = false;
}
std::string PipelineBranchesitem::getOrganization() const
{
    return m_Organization;
}
void PipelineBranchesitem::setOrganization(std::string const& value)
{
    m_Organization = value;
    m_OrganizationIsSet = true;
}
bool PipelineBranchesitem::organizationIsSet() const
{
    return m_OrganizationIsSet;
}
void PipelineBranchesitem::unsetOrganization()
{
    m_OrganizationIsSet = false;
}
PipelineBranchesitempullRequest PipelineBranchesitem::getPullRequest() const
{
    return m_PullRequest;
}
void PipelineBranchesitem::setPullRequest(PipelineBranchesitempullRequest const& value)
{
    m_PullRequest = value;
    m_PullRequestIsSet = true;
}
bool PipelineBranchesitem::pullRequestIsSet() const
{
    return m_PullRequestIsSet;
}
void PipelineBranchesitem::unsetPullRequest()
{
    m_PullRequestIsSet = false;
}
int32_t PipelineBranchesitem::getTotalNumberOfPullRequests() const
{
    return m_TotalNumberOfPullRequests;
}
void PipelineBranchesitem::setTotalNumberOfPullRequests(int32_t const value)
{
    m_TotalNumberOfPullRequests = value;
    m_TotalNumberOfPullRequestsIsSet = true;
}
bool PipelineBranchesitem::totalNumberOfPullRequestsIsSet() const
{
    return m_TotalNumberOfPullRequestsIsSet;
}
void PipelineBranchesitem::unsetTotalNumberOfPullRequests()
{
    m_TotalNumberOfPullRequestsIsSet = false;
}
std::string PipelineBranchesitem::getClass() const
{
    return m__class;
}
void PipelineBranchesitem::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool PipelineBranchesitem::classIsSet() const
{
    return m__classIsSet;
}
void PipelineBranchesitem::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

