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
 * FreeStyleBuild.h
 *
 * 
 */

#ifndef FreeStyleBuild_H_
#define FreeStyleBuild_H_


#include "EmptyChangeLogSet.h"
#include <string>
#include "CauseAction.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  FreeStyleBuild
{
public:
    FreeStyleBuild();
    virtual ~FreeStyleBuild() = default;


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

    bool operator==(const FreeStyleBuild& rhs) const;
    bool operator!=(const FreeStyleBuild& rhs) const;

    /////////////////////////////////////////////
    /// FreeStyleBuild members

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
    int32_t getNumber() const;
    void setNumber(int32_t const value);
    bool numberIsSet() const;
    void unsetnumber();
    /// <summary>
    /// 
    /// </summary>
    std::string getUrl() const;
    void setUrl(std::string const& value);
    bool urlIsSet() const;
    void unsetUrl();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::CauseAction> getActions() const;
    void setActions(std::vector<org::openapitools::server::model::CauseAction> const& value);
    bool actionsIsSet() const;
    void unsetActions();
    /// <summary>
    /// 
    /// </summary>
    bool isBuilding() const;
    void setBuilding(bool const value);
    bool buildingIsSet() const;
    void unsetBuilding();
    /// <summary>
    /// 
    /// </summary>
    std::string getDescription() const;
    void setDescription(std::string const& value);
    bool descriptionIsSet() const;
    void unsetDescription();
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
    int32_t getDuration() const;
    void setDuration(int32_t const value);
    bool durationIsSet() const;
    void unsetDuration();
    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDuration() const;
    void setEstimatedDuration(int32_t const value);
    bool estimatedDurationIsSet() const;
    void unsetEstimatedDuration();
    /// <summary>
    /// 
    /// </summary>
    std::string getExecutor() const;
    void setExecutor(std::string const& value);
    bool executorIsSet() const;
    void unsetExecutor();
    /// <summary>
    /// 
    /// </summary>
    std::string getFullDisplayName() const;
    void setFullDisplayName(std::string const& value);
    bool fullDisplayNameIsSet() const;
    void unsetFullDisplayName();
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
    bool isKeepLog() const;
    void setKeepLog(bool const value);
    bool keepLogIsSet() const;
    void unsetKeepLog();
    /// <summary>
    /// 
    /// </summary>
    int32_t getQueueId() const;
    void setQueueId(int32_t const value);
    bool queueIdIsSet() const;
    void unsetQueueId();
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
    int32_t getTimestamp() const;
    void setTimestamp(int32_t const value);
    bool timestampIsSet() const;
    void unsetTimestamp();
    /// <summary>
    /// 
    /// </summary>
    std::string getBuiltOn() const;
    void setBuiltOn(std::string const& value);
    bool builtOnIsSet() const;
    void unsetBuiltOn();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::EmptyChangeLogSet getChangeSet() const;
    void setChangeSet(org::openapitools::server::model::EmptyChangeLogSet const& value);
    bool changeSetIsSet() const;
    void unsetChangeSet();

    friend void to_json(nlohmann::json& j, const FreeStyleBuild& o);
    friend void from_json(const nlohmann::json& j, FreeStyleBuild& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    int32_t m_number;
    bool m_numberIsSet;
    std::string m_Url;
    bool m_UrlIsSet;
    std::vector<org::openapitools::server::model::CauseAction> m_Actions;
    bool m_ActionsIsSet;
    bool m_Building;
    bool m_BuildingIsSet;
    std::string m_Description;
    bool m_DescriptionIsSet;
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_Duration;
    bool m_DurationIsSet;
    int32_t m_EstimatedDuration;
    bool m_EstimatedDurationIsSet;
    std::string m_Executor;
    bool m_ExecutorIsSet;
    std::string m_FullDisplayName;
    bool m_FullDisplayNameIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    bool m_KeepLog;
    bool m_KeepLogIsSet;
    int32_t m_QueueId;
    bool m_QueueIdIsSet;
    std::string m_Result;
    bool m_ResultIsSet;
    int32_t m_Timestamp;
    bool m_TimestampIsSet;
    std::string m_BuiltOn;
    bool m_BuiltOnIsSet;
    org::openapitools::server::model::EmptyChangeLogSet m_ChangeSet;
    bool m_ChangeSetIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* FreeStyleBuild_H_ */
