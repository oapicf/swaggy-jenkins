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
 * PipelineImpllinks.h
 *
 * 
 */

#ifndef PipelineImpllinks_H_
#define PipelineImpllinks_H_


#include <string>
#include "Link.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  PipelineImpllinks
{
public:
    PipelineImpllinks();
    virtual ~PipelineImpllinks() = default;


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

    bool operator==(const PipelineImpllinks& rhs) const;
    bool operator!=(const PipelineImpllinks& rhs) const;

    /////////////////////////////////////////////
    /// PipelineImpllinks members

    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getRuns() const;
    void setRuns(org::openapitools::server::model::Link const& value);
    bool runsIsSet() const;
    void unsetRuns();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getSelf() const;
    void setSelf(org::openapitools::server::model::Link const& value);
    bool selfIsSet() const;
    void unsetSelf();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getQueue() const;
    void setQueue(org::openapitools::server::model::Link const& value);
    bool queueIsSet() const;
    void unsetQueue();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getActions() const;
    void setActions(org::openapitools::server::model::Link const& value);
    bool actionsIsSet() const;
    void unsetActions();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const PipelineImpllinks& o);
    friend void from_json(const nlohmann::json& j, PipelineImpllinks& o);
protected:
    org::openapitools::server::model::Link m_Runs;
    bool m_RunsIsSet;
    org::openapitools::server::model::Link m_Self;
    bool m_SelfIsSet;
    org::openapitools::server::model::Link m_Queue;
    bool m_QueueIsSet;
    org::openapitools::server::model::Link m_Actions;
    bool m_ActionsIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* PipelineImpllinks_H_ */
