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
/*
 * MultibranchPipeline.h
 *
 * 
 */

#ifndef MultibranchPipeline_H_
#define MultibranchPipeline_H_


#include "ModelBase.h"

#include <string>
#include <vector>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  MultibranchPipeline
    : public ModelBase
{
public:
    MultibranchPipeline();
    virtual ~MultibranchPipeline();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// MultibranchPipeline members

    /// <summary>
    /// 
    /// </summary>
    std::string getDisplayName() const;
    void setDisplayName(std::string const& value);
    bool displayNameIsSet() const;
    void unsetDisplayName();
    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDurationInMillis() const;
    void setEstimatedDurationInMillis(int32_t const value);
    bool estimatedDurationInMillisIsSet() const;
    void unsetEstimatedDurationInMillis();
    /// <summary>
    /// 
    /// </summary>
    std::string getLatestRun() const;
    void setLatestRun(std::string const& value);
    bool latestRunIsSet() const;
    void unsetLatestRun();
    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string const& value);
    bool nameIsSet() const;
    void unsetName();
    /// <summary>
    /// 
    /// </summary>
    std::string getOrganization() const;
    void setOrganization(std::string const& value);
    bool organizationIsSet() const;
    void unsetOrganization();
    /// <summary>
    /// 
    /// </summary>
    int32_t getWeatherScore() const;
    void setWeatherScore(int32_t const value);
    bool weatherScoreIsSet() const;
    void unsetWeatherScore();
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::string>& getBranchNames();
    bool branchNamesIsSet() const;
    void unsetBranchNames();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingBranches() const;
    void setNumberOfFailingBranches(int32_t const value);
    bool numberOfFailingBranchesIsSet() const;
    void unsetNumberOfFailingBranches();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingPullRequests() const;
    void setNumberOfFailingPullRequests(int32_t const value);
    bool numberOfFailingPullRequestsIsSet() const;
    void unsetNumberOfFailingPullRequests();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulBranches() const;
    void setNumberOfSuccessfulBranches(int32_t const value);
    bool numberOfSuccessfulBranchesIsSet() const;
    void unsetNumberOfSuccessfulBranches();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulPullRequests() const;
    void setNumberOfSuccessfulPullRequests(int32_t const value);
    bool numberOfSuccessfulPullRequestsIsSet() const;
    void unsetNumberOfSuccessfulPullRequests();
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfBranches() const;
    void setTotalNumberOfBranches(int32_t const value);
    bool totalNumberOfBranchesIsSet() const;
    void unsetTotalNumberOfBranches();
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfPullRequests() const;
    void setTotalNumberOfPullRequests(int32_t const value);
    bool totalNumberOfPullRequestsIsSet() const;
    void unsetTotalNumberOfPullRequests();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool classIsSet() const;
    void unset_class();

protected:
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    std::string m_LatestRun;
    bool m_LatestRunIsSet;
    std::string m_Name;
    bool m_NameIsSet;
    std::string m_Organization;
    bool m_OrganizationIsSet;
    int32_t m_WeatherScore;
    bool m_WeatherScoreIsSet;
    std::vector<std::string> m_BranchNames;
    bool m_BranchNamesIsSet;
    int32_t m_NumberOfFailingBranches;
    bool m_NumberOfFailingBranchesIsSet;
    int32_t m_NumberOfFailingPullRequests;
    bool m_NumberOfFailingPullRequestsIsSet;
    int32_t m_NumberOfSuccessfulBranches;
    bool m_NumberOfSuccessfulBranchesIsSet;
    int32_t m_NumberOfSuccessfulPullRequests;
    bool m_NumberOfSuccessfulPullRequestsIsSet;
    int32_t m_TotalNumberOfBranches;
    bool m_TotalNumberOfBranchesIsSet;
    int32_t m_TotalNumberOfPullRequests;
    bool m_TotalNumberOfPullRequestsIsSet;
    std::string m__class;
    bool m__classIsSet;
};

}
}
}
}

#endif /* MultibranchPipeline_H_ */
