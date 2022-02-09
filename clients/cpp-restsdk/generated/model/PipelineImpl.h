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
 * PipelineImpl.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineImpl_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineImpl_H_


#include "ModelBase.h"

#include "model/PipelineImpllinks.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  PipelineImpl
    : public ModelBase
{
public:
    PipelineImpl();
    virtual ~PipelineImpl();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// PipelineImpl members

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
    utility::string_t getFullName() const;
    bool fullNameIsSet() const;
    void unsetFullName();

    void setFullName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getLatestRun() const;
    bool latestRunIsSet() const;
    void unsetLatestRun();

    void setLatestRun(const utility::string_t& value);

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
    int32_t getWeatherScore() const;
    bool weatherScoreIsSet() const;
    void unsetWeatherScore();

    void setWeatherScore(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<PipelineImpllinks> getLinks() const;
    bool linksIsSet() const;
    void unset_links();

    void setLinks(const std::shared_ptr<PipelineImpllinks>& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    utility::string_t m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    utility::string_t m_FullName;
    bool m_FullNameIsSet;
    utility::string_t m_LatestRun;
    bool m_LatestRunIsSet;
    utility::string_t m_Name;
    bool m_NameIsSet;
    utility::string_t m_Organization;
    bool m_OrganizationIsSet;
    int32_t m_WeatherScore;
    bool m_WeatherScoreIsSet;
    std::shared_ptr<PipelineImpllinks> m__links;
    bool m__linksIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineImpl_H_ */
