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
 * PipelineRunImpl.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineRunImpl_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineRunImpl_H_


#include "ModelBase.h"

#include "model/PipelineRunImpllinks.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  PipelineRunImpl
    : public ModelBase
{
public:
    PipelineRunImpl();
    virtual ~PipelineRunImpl();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// PipelineRunImpl members

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
    std::shared_ptr<PipelineRunImpllinks> getLinks() const;
    bool linksIsSet() const;
    void unset_links();

    void setLinks(const std::shared_ptr<PipelineRunImpllinks>& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getDurationInMillis() const;
    bool durationInMillisIsSet() const;
    void unsetDurationInMillis();

    void setDurationInMillis(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getEnQueueTime() const;
    bool enQueueTimeIsSet() const;
    void unsetEnQueueTime();

    void setEnQueueTime(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getEndTime() const;
    bool endTimeIsSet() const;
    void unsetEndTime();

    void setEndTime(const utility::string_t& value);

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
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

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
    utility::string_t getPipeline() const;
    bool pipelineIsSet() const;
    void unsetPipeline();

    void setPipeline(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getResult() const;
    bool resultIsSet() const;
    void unsetResult();

    void setResult(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getRunSummary() const;
    bool runSummaryIsSet() const;
    void unsetRunSummary();

    void setRunSummary(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getStartTime() const;
    bool startTimeIsSet() const;
    void unsetStartTime();

    void setStartTime(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getState() const;
    bool stateIsSet() const;
    void unsetState();

    void setState(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getType() const;
    bool typeIsSet() const;
    void unsetType();

    void setType(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCommitId() const;
    bool commitIdIsSet() const;
    void unsetCommitId();

    void setCommitId(const utility::string_t& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    std::shared_ptr<PipelineRunImpllinks> m__links;
    bool m__linksIsSet;
    int32_t m_DurationInMillis;
    bool m_DurationInMillisIsSet;
    utility::string_t m_EnQueueTime;
    bool m_EnQueueTimeIsSet;
    utility::string_t m_EndTime;
    bool m_EndTimeIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_Organization;
    bool m_OrganizationIsSet;
    utility::string_t m_Pipeline;
    bool m_PipelineIsSet;
    utility::string_t m_Result;
    bool m_ResultIsSet;
    utility::string_t m_RunSummary;
    bool m_RunSummaryIsSet;
    utility::string_t m_StartTime;
    bool m_StartTimeIsSet;
    utility::string_t m_State;
    bool m_StateIsSet;
    utility::string_t m_Type;
    bool m_TypeIsSet;
    utility::string_t m_CommitId;
    bool m_CommitIdIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_PipelineRunImpl_H_ */
