/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * PipelineRun.h
 *
 * 
 */

#ifndef PipelineRun_H_
#define PipelineRun_H_



#include <string>
#include <vector>
#include "PipelineRunartifacts.h"
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>
#include "helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  PipelineRun 
{
public:
    PipelineRun() = default;
    explicit PipelineRun(boost::property_tree::ptree const& pt);
    virtual ~PipelineRun() = default;

    PipelineRun(const PipelineRun& other) = default; // copy constructor
    PipelineRun(PipelineRun&& other) noexcept = default; // move constructor

    PipelineRun& operator=(const PipelineRun& other) = default; // copy assignment
    PipelineRun& operator=(PipelineRun&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// PipelineRun members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<PipelineRunartifacts> getArtifacts() const;
    void setArtifacts(std::vector<PipelineRunartifacts> value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getDurationInMillis() const;
    void setDurationInMillis(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDurationInMillis() const;
    void setEstimatedDurationInMillis(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getEnQueueTime() const;
    void setEnQueueTime(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getEndTime() const;
    void setEndTime(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getOrganization() const;
    void setOrganization(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getPipeline() const;
    void setPipeline(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getResult() const;
    void setResult(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getRunSummary() const;
    void setRunSummary(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getStartTime() const;
    void setStartTime(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getState() const;
    void setState(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getCommitId() const;
    void setCommitId(std::string value);

protected:
    std::string m__class = "";
    std::vector<PipelineRunartifacts> m_Artifacts;
    int32_t m_DurationInMillis = 0;
    int32_t m_EstimatedDurationInMillis = 0;
    std::string m_EnQueueTime = "";
    std::string m_EndTime = "";
    std::string m_Id = "";
    std::string m_Organization = "";
    std::string m_Pipeline = "";
    std::string m_Result = "";
    std::string m_RunSummary = "";
    std::string m_StartTime = "";
    std::string m_State = "";
    std::string m_Type = "";
    std::string m_CommitId = "";
};

std::vector<PipelineRun> createPipelineRunVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<PipelineRun>(const PipelineRun& val) {
    return val.toPropertyTree();
}

template<>
inline PipelineRun fromPt<PipelineRun>(const boost::property_tree::ptree& pt) {
    PipelineRun ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* PipelineRun_H_ */
