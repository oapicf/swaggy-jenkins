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
 * Hudson.h
 *
 * 
 */

#ifndef Hudson_H_
#define Hudson_H_


#include "AllView.h"
#include "UnlabeledLoadStatistics.h"
#include <string>
#include "FreeStyleProject.h"
#include <vector>
#include "HudsonassignedLabels.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  Hudson
{
public:
    Hudson();
    virtual ~Hudson() = default;


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

    bool operator==(const Hudson& rhs) const;
    bool operator!=(const Hudson& rhs) const;

    /////////////////////////////////////////////
    /// Hudson members

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
    std::vector<org::openapitools::server::model::HudsonassignedLabels> getAssignedLabels() const;
    void setAssignedLabels(std::vector<org::openapitools::server::model::HudsonassignedLabels> const& value);
    bool assignedLabelsIsSet() const;
    void unsetAssignedLabels();
    /// <summary>
    /// 
    /// </summary>
    std::string getMode() const;
    void setMode(std::string const& value);
    bool modeIsSet() const;
    void unsetMode();
    /// <summary>
    /// 
    /// </summary>
    std::string getNodeDescription() const;
    void setNodeDescription(std::string const& value);
    bool nodeDescriptionIsSet() const;
    void unsetNodeDescription();
    /// <summary>
    /// 
    /// </summary>
    std::string getNodeName() const;
    void setNodeName(std::string const& value);
    bool nodeNameIsSet() const;
    void unsetNodeName();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumExecutors() const;
    void setNumExecutors(int32_t const value);
    bool numExecutorsIsSet() const;
    void unsetNumExecutors();
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
    std::vector<org::openapitools::server::model::FreeStyleProject> getJobs() const;
    void setJobs(std::vector<org::openapitools::server::model::FreeStyleProject> const& value);
    bool jobsIsSet() const;
    void unsetJobs();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::AllView getPrimaryView() const;
    void setPrimaryView(org::openapitools::server::model::AllView const& value);
    bool primaryViewIsSet() const;
    void unsetPrimaryView();
    /// <summary>
    /// 
    /// </summary>
    bool isQuietingDown() const;
    void setQuietingDown(bool const value);
    bool quietingDownIsSet() const;
    void unsetQuietingDown();
    /// <summary>
    /// 
    /// </summary>
    int32_t getSlaveAgentPort() const;
    void setSlaveAgentPort(int32_t const value);
    bool slaveAgentPortIsSet() const;
    void unsetSlaveAgentPort();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::UnlabeledLoadStatistics getUnlabeledLoad() const;
    void setUnlabeledLoad(org::openapitools::server::model::UnlabeledLoadStatistics const& value);
    bool unlabeledLoadIsSet() const;
    void unsetUnlabeledLoad();
    /// <summary>
    /// 
    /// </summary>
    bool isUseCrumbs() const;
    void setUseCrumbs(bool const value);
    bool useCrumbsIsSet() const;
    void unsetUseCrumbs();
    /// <summary>
    /// 
    /// </summary>
    bool isUseSecurity() const;
    void setUseSecurity(bool const value);
    bool useSecurityIsSet() const;
    void unsetUseSecurity();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::AllView> getViews() const;
    void setViews(std::vector<org::openapitools::server::model::AllView> const& value);
    bool viewsIsSet() const;
    void unsetViews();

    friend  void to_json(nlohmann::json& j, const Hudson& o);
    friend  void from_json(const nlohmann::json& j, Hudson& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    std::vector<org::openapitools::server::model::HudsonassignedLabels> m_AssignedLabels;
    bool m_AssignedLabelsIsSet;
    std::string m_Mode;
    bool m_ModeIsSet;
    std::string m_NodeDescription;
    bool m_NodeDescriptionIsSet;
    std::string m_NodeName;
    bool m_NodeNameIsSet;
    int32_t m_NumExecutors;
    bool m_NumExecutorsIsSet;
    std::string m_Description;
    bool m_DescriptionIsSet;
    std::vector<org::openapitools::server::model::FreeStyleProject> m_Jobs;
    bool m_JobsIsSet;
    org::openapitools::server::model::AllView m_PrimaryView;
    bool m_PrimaryViewIsSet;
    bool m_QuietingDown;
    bool m_QuietingDownIsSet;
    int32_t m_SlaveAgentPort;
    bool m_SlaveAgentPortIsSet;
    org::openapitools::server::model::UnlabeledLoadStatistics m_UnlabeledLoad;
    bool m_UnlabeledLoadIsSet;
    bool m_UseCrumbs;
    bool m_UseCrumbsIsSet;
    bool m_UseSecurity;
    bool m_UseSecurityIsSet;
    std::vector<org::openapitools::server::model::AllView> m_Views;
    bool m_ViewsIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* Hudson_H_ */
