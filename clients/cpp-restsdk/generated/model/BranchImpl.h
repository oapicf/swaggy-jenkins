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

/*
 * BranchImpl.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_BranchImpl_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_BranchImpl_H_


#include "ModelBase.h"

#include "model/BranchImpllinks.h"
#include "model/BranchImplpermissions.h"
#include "model/PipelineRunImpl.h"
#include <cpprest/details/basic_types.h>
#include <vector>
#include "model/StringParameterDefinition.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  BranchImpl
    : public ModelBase
{
public:
    BranchImpl();
    virtual ~BranchImpl();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// BranchImpl members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getDisplayName() const;
    bool displayNameIsSet() const;
    void unsetDisplayName();

    void setDisplayName(const utility::string_t& value);

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
    utility::string_t getFullDisplayName() const;
    bool fullDisplayNameIsSet() const;
    void unsetFullDisplayName();

    void setFullDisplayName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getFullName() const;
    bool fullNameIsSet() const;
    void unsetFullName();

    void setFullName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getName() const;
    bool nameIsSet() const;
    void unsetName();

    void setName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getOrganization() const;
    bool organizationIsSet() const;
    void unsetOrganization();

    void setOrganization(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<StringParameterDefinition>>& getParameters();
    bool parametersIsSet() const;
    void unsetParameters();

    void setParameters(const std::vector<std::shared_ptr<StringParameterDefinition>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<BranchImplpermissions> getPermissions() const;
    bool permissionsIsSet() const;
    void unsetPermissions();

    void setPermissions(const std::shared_ptr<BranchImplpermissions>& value);

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
    utility::string_t getPullRequest() const;
    bool pullRequestIsSet() const;
    void unsetPullRequest();

    void setPullRequest(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<BranchImpllinks> getLinks() const;
    bool linksIsSet() const;
    void unset_links();

    void setLinks(const std::shared_ptr<BranchImpllinks>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<PipelineRunImpl> getLatestRun() const;
    bool latestRunIsSet() const;
    void unsetLatestRun();

    void setLatestRun(const std::shared_ptr<PipelineRunImpl>& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    utility::string_t m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    utility::string_t m_FullDisplayName;
    bool m_FullDisplayNameIsSet;
    utility::string_t m_FullName;
    bool m_FullNameIsSet;
    utility::string_t m_Name;
    bool m_NameIsSet;
    utility::string_t m_Organization;
    bool m_OrganizationIsSet;
    std::vector<std::shared_ptr<StringParameterDefinition>> m_Parameters;
    bool m_ParametersIsSet;
    std::shared_ptr<BranchImplpermissions> m_Permissions;
    bool m_PermissionsIsSet;
    int32_t m_WeatherScore;
    bool m_WeatherScoreIsSet;
    utility::string_t m_PullRequest;
    bool m_PullRequestIsSet;
    std::shared_ptr<BranchImpllinks> m__links;
    bool m__linksIsSet;
    std::shared_ptr<PipelineRunImpl> m_LatestRun;
    bool m_LatestRunIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_BranchImpl_H_ */
