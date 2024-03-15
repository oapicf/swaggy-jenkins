/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * Pipeline.h
 *
 * 
 */

#ifndef Pipeline_H_
#define Pipeline_H_


#include <string>
#include "PipelinelatestRun.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  Pipeline
{
public:
    Pipeline();
    virtual ~Pipeline() = default;


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

    bool operator==(const Pipeline& rhs) const;
    bool operator!=(const Pipeline& rhs) const;

    /////////////////////////////////////////////
    /// Pipeline members

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
    std::string getOrganization() const;
    void setOrganization(std::string const& value);
    bool organizationIsSet() const;
    void unsetOrganization();
    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string const& value);
    bool nameIsSet() const;
    void unsetName();
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
    std::string getFullName() const;
    void setFullName(std::string const& value);
    bool fullNameIsSet() const;
    void unsetFullName();
    /// <summary>
    /// 
    /// </summary>
    int32_t getWeatherScore() const;
    void setWeatherScore(int32_t const value);
    bool weatherScoreIsSet() const;
    void unsetWeatherScore();
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
    org::openapitools::server::model::PipelinelatestRun getLatestRun() const;
    void setLatestRun(org::openapitools::server::model::PipelinelatestRun const& value);
    bool latestRunIsSet() const;
    void unsetLatestRun();

    friend  void to_json(nlohmann::json& j, const Pipeline& o);
    friend  void from_json(const nlohmann::json& j, Pipeline& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_Organization;
    bool m_OrganizationIsSet;
    std::string m_Name;
    bool m_NameIsSet;
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    std::string m_FullName;
    bool m_FullNameIsSet;
    int32_t m_WeatherScore;
    bool m_WeatherScoreIsSet;
    int32_t m_EstimatedDurationInMillis;
    bool m_EstimatedDurationInMillisIsSet;
    org::openapitools::server::model::PipelinelatestRun m_LatestRun;
    bool m_LatestRunIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* Pipeline_H_ */
