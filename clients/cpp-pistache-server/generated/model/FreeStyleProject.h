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
 * FreeStyleProject.h
 *
 * 
 */

#ifndef FreeStyleProject_H_
#define FreeStyleProject_H_


#include "NullSCM.h"
#include "FreeStyleBuild.h"
#include <string>
#include <vector>
#include "FreeStyleProjectactions.h"
#include "FreeStyleProjecthealthReport.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  FreeStyleProject
{
public:
    FreeStyleProject();
    virtual ~FreeStyleProject() = default;


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

    bool operator==(const FreeStyleProject& rhs) const;
    bool operator!=(const FreeStyleProject& rhs) const;

    /////////////////////////////////////////////
    /// FreeStyleProject members

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
    std::string getName() const;
    void setName(std::string const& value);
    bool nameIsSet() const;
    void unsetName();
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
    std::string getColor() const;
    void setColor(std::string const& value);
    bool colorIsSet() const;
    void unsetColor();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::FreeStyleProjectactions> getActions() const;
    void setActions(std::vector<org::openapitools::server::model::FreeStyleProjectactions> const& value);
    bool actionsIsSet() const;
    void unsetActions();
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
    std::string getDisplayNameOrNull() const;
    void setDisplayNameOrNull(std::string const& value);
    bool displayNameOrNullIsSet() const;
    void unsetDisplayNameOrNull();
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
    std::string getFullName() const;
    void setFullName(std::string const& value);
    bool fullNameIsSet() const;
    void unsetFullName();
    /// <summary>
    /// 
    /// </summary>
    bool isBuildable() const;
    void setBuildable(bool const value);
    bool buildableIsSet() const;
    void unsetBuildable();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::FreeStyleBuild> getBuilds() const;
    void setBuilds(std::vector<org::openapitools::server::model::FreeStyleBuild> const& value);
    bool buildsIsSet() const;
    void unsetBuilds();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getFirstBuild() const;
    void setFirstBuild(org::openapitools::server::model::FreeStyleBuild const& value);
    bool firstBuildIsSet() const;
    void unsetFirstBuild();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::FreeStyleProjecthealthReport> getHealthReport() const;
    void setHealthReport(std::vector<org::openapitools::server::model::FreeStyleProjecthealthReport> const& value);
    bool healthReportIsSet() const;
    void unsetHealthReport();
    /// <summary>
    /// 
    /// </summary>
    bool isInQueue() const;
    void setInQueue(bool const value);
    bool inQueueIsSet() const;
    void unsetInQueue();
    /// <summary>
    /// 
    /// </summary>
    bool isKeepDependencies() const;
    void setKeepDependencies(bool const value);
    bool keepDependenciesIsSet() const;
    void unsetKeepDependencies();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getLastBuild() const;
    void setLastBuild(org::openapitools::server::model::FreeStyleBuild const& value);
    bool lastBuildIsSet() const;
    void unsetLastBuild();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getLastCompletedBuild() const;
    void setLastCompletedBuild(org::openapitools::server::model::FreeStyleBuild const& value);
    bool lastCompletedBuildIsSet() const;
    void unsetLastCompletedBuild();
    /// <summary>
    /// 
    /// </summary>
    std::string getLastFailedBuild() const;
    void setLastFailedBuild(std::string const& value);
    bool lastFailedBuildIsSet() const;
    void unsetLastFailedBuild();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getLastStableBuild() const;
    void setLastStableBuild(org::openapitools::server::model::FreeStyleBuild const& value);
    bool lastStableBuildIsSet() const;
    void unsetLastStableBuild();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::FreeStyleBuild getLastSuccessfulBuild() const;
    void setLastSuccessfulBuild(org::openapitools::server::model::FreeStyleBuild const& value);
    bool lastSuccessfulBuildIsSet() const;
    void unsetLastSuccessfulBuild();
    /// <summary>
    /// 
    /// </summary>
    std::string getLastUnstableBuild() const;
    void setLastUnstableBuild(std::string const& value);
    bool lastUnstableBuildIsSet() const;
    void unsetLastUnstableBuild();
    /// <summary>
    /// 
    /// </summary>
    std::string getLastUnsuccessfulBuild() const;
    void setLastUnsuccessfulBuild(std::string const& value);
    bool lastUnsuccessfulBuildIsSet() const;
    void unsetLastUnsuccessfulBuild();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNextBuildNumber() const;
    void setNextBuildNumber(int32_t const value);
    bool nextBuildNumberIsSet() const;
    void unsetNextBuildNumber();
    /// <summary>
    /// 
    /// </summary>
    std::string getQueueItem() const;
    void setQueueItem(std::string const& value);
    bool queueItemIsSet() const;
    void unsetQueueItem();
    /// <summary>
    /// 
    /// </summary>
    bool isConcurrentBuild() const;
    void setConcurrentBuild(bool const value);
    bool concurrentBuildIsSet() const;
    void unsetConcurrentBuild();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::NullSCM getScm() const;
    void setScm(org::openapitools::server::model::NullSCM const& value);
    bool scmIsSet() const;
    void unsetScm();

    friend  void to_json(nlohmann::json& j, const FreeStyleProject& o);
    friend  void from_json(const nlohmann::json& j, FreeStyleProject& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_Name;
    bool m_NameIsSet;
    std::string m_Url;
    bool m_UrlIsSet;
    std::string m_Color;
    bool m_ColorIsSet;
    std::vector<org::openapitools::server::model::FreeStyleProjectactions> m_Actions;
    bool m_ActionsIsSet;
    std::string m_Description;
    bool m_DescriptionIsSet;
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    std::string m_DisplayNameOrNull;
    bool m_DisplayNameOrNullIsSet;
    std::string m_FullDisplayName;
    bool m_FullDisplayNameIsSet;
    std::string m_FullName;
    bool m_FullNameIsSet;
    bool m_Buildable;
    bool m_BuildableIsSet;
    std::vector<org::openapitools::server::model::FreeStyleBuild> m_Builds;
    bool m_BuildsIsSet;
    org::openapitools::server::model::FreeStyleBuild m_FirstBuild;
    bool m_FirstBuildIsSet;
    std::vector<org::openapitools::server::model::FreeStyleProjecthealthReport> m_HealthReport;
    bool m_HealthReportIsSet;
    bool m_InQueue;
    bool m_InQueueIsSet;
    bool m_KeepDependencies;
    bool m_KeepDependenciesIsSet;
    org::openapitools::server::model::FreeStyleBuild m_LastBuild;
    bool m_LastBuildIsSet;
    org::openapitools::server::model::FreeStyleBuild m_LastCompletedBuild;
    bool m_LastCompletedBuildIsSet;
    std::string m_LastFailedBuild;
    bool m_LastFailedBuildIsSet;
    org::openapitools::server::model::FreeStyleBuild m_LastStableBuild;
    bool m_LastStableBuildIsSet;
    org::openapitools::server::model::FreeStyleBuild m_LastSuccessfulBuild;
    bool m_LastSuccessfulBuildIsSet;
    std::string m_LastUnstableBuild;
    bool m_LastUnstableBuildIsSet;
    std::string m_LastUnsuccessfulBuild;
    bool m_LastUnsuccessfulBuildIsSet;
    int32_t m_NextBuildNumber;
    bool m_NextBuildNumberIsSet;
    std::string m_QueueItem;
    bool m_QueueItemIsSet;
    bool m_ConcurrentBuild;
    bool m_ConcurrentBuildIsSet;
    org::openapitools::server::model::NullSCM m_Scm;
    bool m_ScmIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* FreeStyleProject_H_ */
