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
 * QueueBlockedItem.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_QueueBlockedItem_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_QueueBlockedItem_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/FreeStyleProject.h"
#include <cpprest/details/basic_types.h>
#include "CppRestOpenAPIClient/model/CauseAction.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class CauseAction;
class FreeStyleProject;

/// <summary>
/// 
/// </summary>
class  QueueBlockedItem
    : public ModelBase
{
public:
    QueueBlockedItem();
    virtual ~QueueBlockedItem();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// QueueBlockedItem members

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
    std::vector<std::shared_ptr<CauseAction>>& getActions();
    bool actionsIsSet() const;
    void unsetActions();

    void setActions(const std::vector<std::shared_ptr<CauseAction>>& value);

    /// <summary>
    /// 
    /// </summary>
    bool isBlocked() const;
    bool blockedIsSet() const;
    void unsetBlocked();

    void setBlocked(bool value);

    /// <summary>
    /// 
    /// </summary>
    bool isBuildable() const;
    bool buildableIsSet() const;
    void unsetBuildable();

    void setBuildable(bool value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getInQueueSince() const;
    bool inQueueSinceIsSet() const;
    void unsetInQueueSince();

    void setInQueueSince(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getParams() const;
    bool paramsIsSet() const;
    void unsetParams();

    void setParams(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    bool isStuck() const;
    bool stuckIsSet() const;
    void unsetStuck();

    void setStuck(bool value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<FreeStyleProject> getTask() const;
    bool taskIsSet() const;
    void unsetTask();

    void setTask(const std::shared_ptr<FreeStyleProject>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getUrl() const;
    bool urlIsSet() const;
    void unsetUrl();

    void setUrl(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getWhy() const;
    bool whyIsSet() const;
    void unsetWhy();

    void setWhy(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getBuildableStartMilliseconds() const;
    bool buildableStartMillisecondsIsSet() const;
    void unsetBuildableStartMilliseconds();

    void setBuildableStartMilliseconds(int32_t value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    std::vector<std::shared_ptr<CauseAction>> m_Actions;
    bool m_ActionsIsSet;
    bool m_Blocked;
    bool m_BlockedIsSet;
    bool m_Buildable;
    bool m_BuildableIsSet;
    int32_t m_Id;
    bool m_IdIsSet;
    int32_t m_InQueueSince;
    bool m_InQueueSinceIsSet;
    utility::string_t m_Params;
    bool m_ParamsIsSet;
    bool m_Stuck;
    bool m_StuckIsSet;
    std::shared_ptr<FreeStyleProject> m_Task;
    bool m_TaskIsSet;
    utility::string_t m_Url;
    bool m_UrlIsSet;
    utility::string_t m_Why;
    bool m_WhyIsSet;
    int32_t m_BuildableStartMilliseconds;
    bool m_BuildableStartMillisecondsIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_QueueBlockedItem_H_ */
