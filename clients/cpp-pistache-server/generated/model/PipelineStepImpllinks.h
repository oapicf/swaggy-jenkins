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
 * PipelineStepImpllinks.h
 *
 * 
 */

#ifndef PipelineStepImpllinks_H_
#define PipelineStepImpllinks_H_


#include <string>
#include "Link.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  PipelineStepImpllinks
{
public:
    PipelineStepImpllinks();
    virtual ~PipelineStepImpllinks() = default;


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

    bool operator==(const PipelineStepImpllinks& rhs) const;
    bool operator!=(const PipelineStepImpllinks& rhs) const;

    /////////////////////////////////////////////
    /// PipelineStepImpllinks members

    /// <summary>
    /// 
    /// </summary>
    Link getSelf() const;
    void setSelf(Link const& value);
    bool selfIsSet() const;
    void unsetSelf();
    /// <summary>
    /// 
    /// </summary>
    Link getActions() const;
    void setActions(Link const& value);
    bool actionsIsSet() const;
    void unsetActions();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const PipelineStepImpllinks& o);
    friend void from_json(const nlohmann::json& j, PipelineStepImpllinks& o);
protected:
    Link m_Self;
    bool m_SelfIsSet;
    Link m_Actions;
    bool m_ActionsIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* PipelineStepImpllinks_H_ */
