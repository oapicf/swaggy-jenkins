/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * PipelineRunNode.h
 *
 * 
 */

#ifndef PipelineRunNode_H_
#define PipelineRunNode_H_


#include "PipelineRunNodeedges.h"
#include <string>
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  PipelineRunNode
{
public:
    PipelineRunNode();
    virtual ~PipelineRunNode() = default;


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

    bool operator==(const PipelineRunNode& rhs) const;
    bool operator!=(const PipelineRunNode& rhs) const;

    /////////////////////////////////////////////
    /// PipelineRunNode members

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
    std::string getDisplayName() const;
    void setDisplayName(std::string const& value);
    bool displayNameIsSet() const;
    void unsetDisplayName();
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
    std::vector<PipelineRunNodeedges> getEdges() const;
    void setEdges(std::vector<PipelineRunNodeedges> const& value);
    bool edgesIsSet() const;
    void unsetEdges();
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
    std::string getResult() const;
    void setResult(std::string const& value);
    bool resultIsSet() const;
    void unsetResult();
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

    friend void to_json(nlohmann::json& j, const PipelineRunNode& o);
    friend void from_json(const nlohmann::json& j, PipelineRunNode& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_DurationInMillis;
    bool m_DurationInMillisIsSet;
    std::vector<PipelineRunNodeedges> m_Edges;
    bool m_EdgesIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    std::string m_Result;
    bool m_ResultIsSet;
    std::string m_StartTime;
    bool m_StartTimeIsSet;
    std::string m_State;
    bool m_StateIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* PipelineRunNode_H_ */
