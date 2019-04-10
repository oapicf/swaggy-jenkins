/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * MultibranchPipeline.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_MultibranchPipeline_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_MultibranchPipeline_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
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

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// MultibranchPipeline members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getDisplayName() const;
    bool displayNameIsSet() const;
    void unsetDisplayName();
    void setDisplayName(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDurationInMillis() const;
    bool estimatedDurationInMillisIsSet() const;
    void unsetEstimatedDurationInMillis();
    void setEstimatedDurationInMillis(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getLatestRun() const;
    bool latestRunIsSet() const;
    void unsetLatestRun();
    void setLatestRun(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getName() const;
    bool nameIsSet() const;
    void unsetName();
    void setName(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getOrganization() const;
    bool organizationIsSet() const;
    void unsetOrganization();
    void setOrganization(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getWeatherScore() const;
    bool weatherScoreIsSet() const;
    void unsetWeatherScore();
    void setWeatherScore(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<utility::string_t>& getBranchNames();
    bool branchNamesIsSet() const;
    void unsetBranchNames();
    void setBranchNames(std::vector<utility::string_t> value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingBranches() const;
    bool numberOfFailingBranchesIsSet() const;
    void unsetNumberOfFailingBranches();
    void setNumberOfFailingBranches(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfFailingPullRequests() const;
    bool numberOfFailingPullRequestsIsSet() const;
    void unsetNumberOfFailingPullRequests();
    void setNumberOfFailingPullRequests(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulBranches() const;
    bool numberOfSuccessfulBranchesIsSet() const;
    void unsetNumberOfSuccessfulBranches();
    void setNumberOfSuccessfulBranches(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumberOfSuccessfulPullRequests() const;
    bool numberOfSuccessfulPullRequestsIsSet() const;
    void unsetNumberOfSuccessfulPullRequests();
    void setNumberOfSuccessfulPullRequests(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfBranches() const;
    bool totalNumberOfBranchesIsSet() const;
    void unsetTotalNumberOfBranches();
    void setTotalNumberOfBranches(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalNumberOfPullRequests() const;
    bool totalNumberOfPullRequestsIsSet() const;
    void unsetTotalNumberOfPullRequests();
    void setTotalNumberOfPullRequests(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool _classIsSet() const;
    void unset_class();
    void setClass(utility::string_t value);

protected:
    utility::string_t m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    utility::string_t m_LatestRun;
    bool m_LatestRunIsSet;
    utility::string_t m_Name;
    bool m_NameIsSet;
    utility::string_t m_Organization;
    bool m_OrganizationIsSet;
    int32_t m_WeatherScore;
    bool m_WeatherScoreIsSet;
    std::vector<utility::string_t> m_BranchNames;
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
    utility::string_t m__class;
    bool m__classIsSet;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_MultibranchPipeline_H_ */
