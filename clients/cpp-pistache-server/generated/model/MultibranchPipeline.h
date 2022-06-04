/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.5.1-pre.0
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


#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  MultibranchPipeline
{
public:
    MultibranchPipeline();
    virtual ~MultibranchPipeline() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    /// <summary>
    /// Helper overload for validate. Used when one model stores another model and calls it's validate.
    /// Not meant to be called outside that case.
    /// </summary>
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;

    bool operator==(const MultibranchPipeline& rhs) const;
    bool operator!=(const MultibranchPipeline& rhs) const;

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
    std::vector<std::string> getBranchNames() const;
    void setBranchNames(std::vector<std::string> const& value);
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
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const MultibranchPipeline& o);
    friend void from_json(const nlohmann::json& j, MultibranchPipeline& o);
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

} // namespace org::openapitools::server::model

#endif /* MultibranchPipeline_H_ */
