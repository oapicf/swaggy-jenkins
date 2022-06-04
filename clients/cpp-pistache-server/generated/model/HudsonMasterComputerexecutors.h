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
 * HudsonMasterComputerexecutors.h
 *
 * 
 */

#ifndef HudsonMasterComputerexecutors_H_
#define HudsonMasterComputerexecutors_H_


#include "FreeStyleBuild.h"
#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  HudsonMasterComputerexecutors
{
public:
    HudsonMasterComputerexecutors();
    virtual ~HudsonMasterComputerexecutors() = default;


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

    bool operator==(const HudsonMasterComputerexecutors& rhs) const;
    bool operator!=(const HudsonMasterComputerexecutors& rhs) const;

    /////////////////////////////////////////////
    /// HudsonMasterComputerexecutors members

    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getCurrentExecutable() const;
    void setCurrentExecutable(org::openapitools::server::model::FreeStyleBuild const& value);
    bool currentExecutableIsSet() const;
    void unsetCurrentExecutable();
    /// <summary>
    /// 
    /// </summary>
    bool isIdle() const;
    void setIdle(bool const value);
    bool idleIsSet() const;
    void unsetIdle();
    /// <summary>
    /// 
    /// </summary>
    bool isLikelyStuck() const;
    void setLikelyStuck(bool const value);
    bool likelyStuckIsSet() const;
    void unsetLikelyStuck();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumber() const;
    void setNumber(int32_t const value);
    bool numberIsSet() const;
    void unsetnumber();
    /// <summary>
    /// 
    /// </summary>
    int32_t getProgress() const;
    void setProgress(int32_t const value);
    bool progressIsSet() const;
    void unsetProgress();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend void to_json(nlohmann::json& j, const HudsonMasterComputerexecutors& o);
    friend void from_json(const nlohmann::json& j, HudsonMasterComputerexecutors& o);
protected:
    org::openapitools::server::model::FreeStyleBuild m_CurrentExecutable;
    bool m_CurrentExecutableIsSet;
    bool m_Idle;
    bool m_IdleIsSet;
    bool m_LikelyStuck;
    bool m_LikelyStuckIsSet;
    int32_t m_number;
    bool m_numberIsSet;
    int32_t m_Progress;
    bool m_ProgressIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* HudsonMasterComputerexecutors_H_ */
