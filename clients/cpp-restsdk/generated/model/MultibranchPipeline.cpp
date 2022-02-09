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



#include "MultibranchPipeline.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




MultibranchPipeline::MultibranchPipeline()
{
    m_DisplayName = utility::conversions::to_string_t("");
    m_DisplayNameIsSet = false;
    m_EstimatedDurationInMillis = 0;
    m_EstimatedDurationInMillisIsSet = false;
    m_LatestRun = utility::conversions::to_string_t("");
    m_LatestRunIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Organization = utility::conversions::to_string_t("");
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
    m__class = utility::conversions::to_string_t("");
    m__classIsSet = false;
}

MultibranchPipeline::~MultibranchPipeline()
{
}

void MultibranchPipeline::validate()
{
    // TODO: implement validation
}

web::json::value MultibranchPipeline::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_DisplayNameIsSet)
    {
        val[utility::conversions::to_string_t(U("displayName"))] = ModelBase::toJson(m_DisplayName);
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        val[utility::conversions::to_string_t(U("estimatedDurationInMillis"))] = ModelBase::toJson(m_EstimatedDurationInMillis);
    }
    if(m_LatestRunIsSet)
    {
        val[utility::conversions::to_string_t(U("latestRun"))] = ModelBase::toJson(m_LatestRun);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_OrganizationIsSet)
    {
        val[utility::conversions::to_string_t(U("organization"))] = ModelBase::toJson(m_Organization);
    }
    if(m_WeatherScoreIsSet)
    {
        val[utility::conversions::to_string_t(U("weatherScore"))] = ModelBase::toJson(m_WeatherScore);
    }
    if(m_BranchNamesIsSet)
    {
        val[utility::conversions::to_string_t(U("branchNames"))] = ModelBase::toJson(m_BranchNames);
    }
    if(m_NumberOfFailingBranchesIsSet)
    {
        val[utility::conversions::to_string_t(U("numberOfFailingBranches"))] = ModelBase::toJson(m_NumberOfFailingBranches);
    }
    if(m_NumberOfFailingPullRequestsIsSet)
    {
        val[utility::conversions::to_string_t(U("numberOfFailingPullRequests"))] = ModelBase::toJson(m_NumberOfFailingPullRequests);
    }
    if(m_NumberOfSuccessfulBranchesIsSet)
    {
        val[utility::conversions::to_string_t(U("numberOfSuccessfulBranches"))] = ModelBase::toJson(m_NumberOfSuccessfulBranches);
    }
    if(m_NumberOfSuccessfulPullRequestsIsSet)
    {
        val[utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests"))] = ModelBase::toJson(m_NumberOfSuccessfulPullRequests);
    }
    if(m_TotalNumberOfBranchesIsSet)
    {
        val[utility::conversions::to_string_t(U("totalNumberOfBranches"))] = ModelBase::toJson(m_TotalNumberOfBranches);
    }
    if(m_TotalNumberOfPullRequestsIsSet)
    {
        val[utility::conversions::to_string_t(U("totalNumberOfPullRequests"))] = ModelBase::toJson(m_TotalNumberOfPullRequests);
    }
    if(m__classIsSet)
    {
        val[utility::conversions::to_string_t(U("_class"))] = ModelBase::toJson(m__class);
    }

    return val;
}

bool MultibranchPipeline::fromJson(const web::json::value& val)
{
    bool ok = true;
    
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
            utility::string_t refVal_latestRun;
            ok &= ModelBase::fromJson(fieldValue, refVal_latestRun);
            setLatestRun(refVal_latestRun);
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
    if(val.has_field(utility::conversions::to_string_t(U("branchNames"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("branchNames")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_branchNames;
            ok &= ModelBase::fromJson(fieldValue, refVal_branchNames);
            setBranchNames(refVal_branchNames);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("numberOfFailingBranches"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("numberOfFailingBranches")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_numberOfFailingBranches;
            ok &= ModelBase::fromJson(fieldValue, refVal_numberOfFailingBranches);
            setNumberOfFailingBranches(refVal_numberOfFailingBranches);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("numberOfFailingPullRequests"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("numberOfFailingPullRequests")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_numberOfFailingPullRequests;
            ok &= ModelBase::fromJson(fieldValue, refVal_numberOfFailingPullRequests);
            setNumberOfFailingPullRequests(refVal_numberOfFailingPullRequests);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("numberOfSuccessfulBranches"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("numberOfSuccessfulBranches")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_numberOfSuccessfulBranches;
            ok &= ModelBase::fromJson(fieldValue, refVal_numberOfSuccessfulBranches);
            setNumberOfSuccessfulBranches(refVal_numberOfSuccessfulBranches);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_numberOfSuccessfulPullRequests;
            ok &= ModelBase::fromJson(fieldValue, refVal_numberOfSuccessfulPullRequests);
            setNumberOfSuccessfulPullRequests(refVal_numberOfSuccessfulPullRequests);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("totalNumberOfBranches"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("totalNumberOfBranches")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_totalNumberOfBranches;
            ok &= ModelBase::fromJson(fieldValue, refVal_totalNumberOfBranches);
            setTotalNumberOfBranches(refVal_totalNumberOfBranches);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("totalNumberOfPullRequests"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("totalNumberOfPullRequests")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_totalNumberOfPullRequests;
            ok &= ModelBase::fromJson(fieldValue, refVal_totalNumberOfPullRequests);
            setTotalNumberOfPullRequests(refVal_totalNumberOfPullRequests);
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

void MultibranchPipeline::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_DisplayNameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("displayName")), m_DisplayName));
    }
    if(m_EstimatedDurationInMillisIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("estimatedDurationInMillis")), m_EstimatedDurationInMillis));
    }
    if(m_LatestRunIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("latestRun")), m_LatestRun));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_OrganizationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("organization")), m_Organization));
    }
    if(m_WeatherScoreIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("weatherScore")), m_WeatherScore));
    }
    if(m_BranchNamesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("branchNames")), m_BranchNames));
    }
    if(m_NumberOfFailingBranchesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("numberOfFailingBranches")), m_NumberOfFailingBranches));
    }
    if(m_NumberOfFailingPullRequestsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("numberOfFailingPullRequests")), m_NumberOfFailingPullRequests));
    }
    if(m_NumberOfSuccessfulBranchesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("numberOfSuccessfulBranches")), m_NumberOfSuccessfulBranches));
    }
    if(m_NumberOfSuccessfulPullRequestsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests")), m_NumberOfSuccessfulPullRequests));
    }
    if(m_TotalNumberOfBranchesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("totalNumberOfBranches")), m_TotalNumberOfBranches));
    }
    if(m_TotalNumberOfPullRequestsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("totalNumberOfPullRequests")), m_TotalNumberOfPullRequests));
    }
    if(m__classIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("_class")), m__class));
    }
}

bool MultibranchPipeline::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("displayName"))))
    {
        utility::string_t refVal_displayName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("displayName"))), refVal_displayName );
        setDisplayName(refVal_displayName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))))
    {
        int32_t refVal_estimatedDurationInMillis;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("estimatedDurationInMillis"))), refVal_estimatedDurationInMillis );
        setEstimatedDurationInMillis(refVal_estimatedDurationInMillis);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("latestRun"))))
    {
        utility::string_t refVal_latestRun;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("latestRun"))), refVal_latestRun );
        setLatestRun(refVal_latestRun);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_name;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_name );
        setName(refVal_name);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("organization"))))
    {
        utility::string_t refVal_organization;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("organization"))), refVal_organization );
        setOrganization(refVal_organization);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("weatherScore"))))
    {
        int32_t refVal_weatherScore;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("weatherScore"))), refVal_weatherScore );
        setWeatherScore(refVal_weatherScore);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("branchNames"))))
    {
        std::vector<utility::string_t> refVal_branchNames;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("branchNames"))), refVal_branchNames );
        setBranchNames(refVal_branchNames);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("numberOfFailingBranches"))))
    {
        int32_t refVal_numberOfFailingBranches;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("numberOfFailingBranches"))), refVal_numberOfFailingBranches );
        setNumberOfFailingBranches(refVal_numberOfFailingBranches);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("numberOfFailingPullRequests"))))
    {
        int32_t refVal_numberOfFailingPullRequests;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("numberOfFailingPullRequests"))), refVal_numberOfFailingPullRequests );
        setNumberOfFailingPullRequests(refVal_numberOfFailingPullRequests);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("numberOfSuccessfulBranches"))))
    {
        int32_t refVal_numberOfSuccessfulBranches;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("numberOfSuccessfulBranches"))), refVal_numberOfSuccessfulBranches );
        setNumberOfSuccessfulBranches(refVal_numberOfSuccessfulBranches);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests"))))
    {
        int32_t refVal_numberOfSuccessfulPullRequests;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("numberOfSuccessfulPullRequests"))), refVal_numberOfSuccessfulPullRequests );
        setNumberOfSuccessfulPullRequests(refVal_numberOfSuccessfulPullRequests);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("totalNumberOfBranches"))))
    {
        int32_t refVal_totalNumberOfBranches;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("totalNumberOfBranches"))), refVal_totalNumberOfBranches );
        setTotalNumberOfBranches(refVal_totalNumberOfBranches);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("totalNumberOfPullRequests"))))
    {
        int32_t refVal_totalNumberOfPullRequests;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("totalNumberOfPullRequests"))), refVal_totalNumberOfPullRequests );
        setTotalNumberOfPullRequests(refVal_totalNumberOfPullRequests);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("_class"))))
    {
        utility::string_t refVal__class;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("_class"))), refVal__class );
        setClass(refVal__class);
    }
    return ok;
}

utility::string_t MultibranchPipeline::getDisplayName() const
{
    return m_DisplayName;
}

void MultibranchPipeline::setDisplayName(const utility::string_t& value)
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

void MultibranchPipeline::setEstimatedDurationInMillis(int32_t value)
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
utility::string_t MultibranchPipeline::getLatestRun() const
{
    return m_LatestRun;
}

void MultibranchPipeline::setLatestRun(const utility::string_t& value)
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
utility::string_t MultibranchPipeline::getName() const
{
    return m_Name;
}

void MultibranchPipeline::setName(const utility::string_t& value)
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
utility::string_t MultibranchPipeline::getOrganization() const
{
    return m_Organization;
}

void MultibranchPipeline::setOrganization(const utility::string_t& value)
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

void MultibranchPipeline::setWeatherScore(int32_t value)
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
std::vector<utility::string_t>& MultibranchPipeline::getBranchNames()
{
    return m_BranchNames;
}

void MultibranchPipeline::setBranchNames(const std::vector<utility::string_t>& value)
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

void MultibranchPipeline::setNumberOfFailingBranches(int32_t value)
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

void MultibranchPipeline::setNumberOfFailingPullRequests(int32_t value)
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

void MultibranchPipeline::setNumberOfSuccessfulBranches(int32_t value)
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

void MultibranchPipeline::setNumberOfSuccessfulPullRequests(int32_t value)
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

void MultibranchPipeline::setTotalNumberOfBranches(int32_t value)
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

void MultibranchPipeline::setTotalNumberOfPullRequests(int32_t value)
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
utility::string_t MultibranchPipeline::getClass() const
{
    return m__class;
}

void MultibranchPipeline::setClass(const utility::string_t& value)
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
}
}
}
}


