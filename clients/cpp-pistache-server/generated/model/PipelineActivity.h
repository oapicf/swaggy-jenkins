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
/*
 * PipelineActivity.h
 *
 * 
 */

#ifndef PipelineActivity_H_
#define PipelineActivity_H_


#include "PipelineActivityartifacts.h"
#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  PipelineActivity
{
public:
    PipelineActivity();
    virtual ~PipelineActivity() = default;


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

    bool operator==(const PipelineActivity& rhs) const;
    bool operator!=(const PipelineActivity& rhs) const;

    /////////////////////////////////////////////
    /// PipelineActivity members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    std::vector<PipelineActivityartifacts> getArtifacts() const;
    void setArtifacts(std::vector<PipelineActivityartifacts> const& value);
    bool artifactsIsSet() const;
    void unsetArtifacts();
    /// <summary>
    /// 
    /// </summary>
    int32_t getDurationInMillis() const;
    void setDurationInMillis(int32_t const value);
    bool durationInMillisIsSet() const;
    void unsetDurationInMillis();
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
    std::string getEnQueueTime() const;
    void setEnQueueTime(std::string const& value);
    bool enQueueTimeIsSet() const;
    void unsetEnQueueTime();
    /// <summary>
    /// 
    /// </summary>
    std::string getEndTime() const;
    void setEndTime(std::string const& value);
    bool endTimeIsSet() const;
    void unsetEndTime();
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
    bool idIsSet() const;
    void unsetId();
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
    std::string getPipeline() const;
    void setPipeline(std::string const& value);
    bool pipelineIsSet() const;
    void unsetPipeline();
    /// <summary>
    /// 
    /// </summary>
    std::string getResult() const;
    void setResult(std::string const& value);
    bool resultIsSet() const;
    void unsetResult();
    /// <summary>
    /// 
    /// </summary>
    std::string getRunSummary() const;
    void setRunSummary(std::string const& value);
    bool runSummaryIsSet() const;
    void unsetRunSummary();
    /// <summary>
    /// 
    /// </summary>
    std::string getStartTime() const;
    void setStartTime(std::string const& value);
    bool startTimeIsSet() const;
    void unsetStartTime();
    /// <summary>
    /// 
    /// </summary>
    std::string getState() const;
    void setState(std::string const& value);
    bool stateIsSet() const;
    void unsetState();
    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string const& value);
    bool typeIsSet() const;
    void unsetType();
    /// <summary>
    /// 
    /// </summary>
    std::string getCommitId() const;
    void setCommitId(std::string const& value);
    bool commitIdIsSet() const;
    void unsetCommitId();

    friend void to_json(nlohmann::json& j, const PipelineActivity& o);
    friend void from_json(const nlohmann::json& j, PipelineActivity& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::vector<PipelineActivityartifacts> m_Artifacts;
    bool m_ArtifactsIsSet;
    int32_t m_DurationInMillis;
    bool m_DurationInMillisIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    std::string m_EnQueueTime;
    bool m_EnQueueTimeIsSet;
    std::string m_EndTime;
    bool m_EndTimeIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    std::string m_Organization;
    bool m_OrganizationIsSet;
    std::string m_Pipeline;
    bool m_PipelineIsSet;
    std::string m_Result;
    bool m_ResultIsSet;
    std::string m_RunSummary;
    bool m_RunSummaryIsSet;
    std::string m_StartTime;
    bool m_StartTimeIsSet;
    std::string m_State;
    bool m_StateIsSet;
    std::string m_Type;
    bool m_TypeIsSet;
    std::string m_CommitId;
    bool m_CommitIdIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* PipelineActivity_H_ */
