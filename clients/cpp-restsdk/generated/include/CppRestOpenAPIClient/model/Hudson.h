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
 * Hudson.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Hudson_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Hudson_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/FreeStyleProject.h"
#include "CppRestOpenAPIClient/model/AllView.h"
#include "CppRestOpenAPIClient/model/HudsonassignedLabels.h"
#include "CppRestOpenAPIClient/model/UnlabeledLoadStatistics.h"
#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class HudsonassignedLabels;
class FreeStyleProject;
class AllView;
class UnlabeledLoadStatistics;

/// <summary>
/// 
/// </summary>
class  Hudson
    : public ModelBase
{
public:
    Hudson();
    virtual ~Hudson();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Hudson members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<HudsonassignedLabels>>& getAssignedLabels();
    bool assignedLabelsIsSet() const;
    void unsetAssignedLabels();

    void setAssignedLabels(const std::vector<std::shared_ptr<HudsonassignedLabels>>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getMode() const;
    bool modeIsSet() const;
    void unsetMode();

    void setMode(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getNodeDescription() const;
    bool nodeDescriptionIsSet() const;
    void unsetNodeDescription();

    void setNodeDescription(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getNodeName() const;
    bool nodeNameIsSet() const;
    void unsetNodeName();

    void setNodeName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNumExecutors() const;
    bool numExecutorsIsSet() const;
    void unsetNumExecutors();

    void setNumExecutors(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getDescription() const;
    bool descriptionIsSet() const;
    void unsetDescription();

    void setDescription(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<FreeStyleProject>>& getJobs();
    bool jobsIsSet() const;
    void unsetJobs();

    void setJobs(const std::vector<std::shared_ptr<FreeStyleProject>>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<AllView> getPrimaryView() const;
    bool primaryViewIsSet() const;
    void unsetPrimaryView();

    void setPrimaryView(const std::shared_ptr<AllView>& value);

    /// <summary>
    /// 
    /// </summary>
    bool isQuietingDown() const;
    bool quietingDownIsSet() const;
    void unsetQuietingDown();

    void setQuietingDown(bool value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getSlaveAgentPort() const;
    bool slaveAgentPortIsSet() const;
    void unsetSlaveAgentPort();

    void setSlaveAgentPort(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<UnlabeledLoadStatistics> getUnlabeledLoad() const;
    bool unlabeledLoadIsSet() const;
    void unsetUnlabeledLoad();

    void setUnlabeledLoad(const std::shared_ptr<UnlabeledLoadStatistics>& value);

    /// <summary>
    /// 
    /// </summary>
    bool isUseCrumbs() const;
    bool useCrumbsIsSet() const;
    void unsetUseCrumbs();

    void setUseCrumbs(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isUseSecurity() const;
    bool useSecurityIsSet() const;
    void unsetUseSecurity();

    void setUseSecurity(bool value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<AllView>>& getViews();
    bool viewsIsSet() const;
    void unsetViews();

    void setViews(const std::vector<std::shared_ptr<AllView>>& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    std::vector<std::shared_ptr<HudsonassignedLabels>> m_AssignedLabels;
    bool m_AssignedLabelsIsSet;
    utility::string_t m_Mode;
    bool m_ModeIsSet;
    utility::string_t m_NodeDescription;
    bool m_NodeDescriptionIsSet;
    utility::string_t m_NodeName;
    bool m_NodeNameIsSet;
    int32_t m_NumExecutors;
    bool m_NumExecutorsIsSet;
    utility::string_t m_Description;
    bool m_DescriptionIsSet;
    std::vector<std::shared_ptr<FreeStyleProject>> m_Jobs;
    bool m_JobsIsSet;
    std::shared_ptr<AllView> m_PrimaryView;
    bool m_PrimaryViewIsSet;
    bool m_QuietingDown;
    bool m_QuietingDownIsSet;
    int32_t m_SlaveAgentPort;
    bool m_SlaveAgentPortIsSet;
    std::shared_ptr<UnlabeledLoadStatistics> m_UnlabeledLoad;
    bool m_UnlabeledLoadIsSet;
    bool m_UseCrumbs;
    bool m_UseCrumbsIsSet;
    bool m_UseSecurity;
    bool m_UseSecurityIsSet;
    std::vector<std::shared_ptr<AllView>> m_Views;
    bool m_ViewsIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Hudson_H_ */
