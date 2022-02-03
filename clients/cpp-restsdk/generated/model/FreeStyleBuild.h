/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * FreeStyleBuild.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_FreeStyleBuild_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_FreeStyleBuild_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>
#include <vector>
#include "model/CauseAction.h"
#include "model/EmptyChangeLogSet.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  FreeStyleBuild
    : public ModelBase
{
public:
    FreeStyleBuild();
    virtual ~FreeStyleBuild();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// FreeStyleBuild members

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
    int32_t getNumber() const;
    bool numberIsSet() const;
    void unsetnumber();

    void setNumber(int32_t value);

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
    std::vector<std::shared_ptr<CauseAction>>& getActions();
    bool actionsIsSet() const;
    void unsetActions();

    void setActions(const std::vector<std::shared_ptr<CauseAction>>& value);

    /// <summary>
    /// 
    /// </summary>
    bool isBuilding() const;
    bool buildingIsSet() const;
    void unsetBuilding();

    void setBuilding(bool value);

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
    utility::string_t getDisplayName() const;
    bool displayNameIsSet() const;
    void unsetDisplayName();

    void setDisplayName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getDuration() const;
    bool durationIsSet() const;
    void unsetDuration();

    void setDuration(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getEstimatedDuration() const;
    bool estimatedDurationIsSet() const;
    void unsetEstimatedDuration();

    void setEstimatedDuration(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getExecutor() const;
    bool executorIsSet() const;
    void unsetExecutor();

    void setExecutor(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getFullDisplayName() const;
    bool fullDisplayNameIsSet() const;
    void unsetFullDisplayName();

    void setFullDisplayName(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    bool isKeepLog() const;
    bool keepLogIsSet() const;
    void unsetKeepLog();

    void setKeepLog(bool value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getQueueId() const;
    bool queueIdIsSet() const;
    void unsetQueueId();

    void setQueueId(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getResult() const;
    bool resultIsSet() const;
    void unsetResult();

    void setResult(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTimestamp() const;
    bool timestampIsSet() const;
    void unsetTimestamp();

    void setTimestamp(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getBuiltOn() const;
    bool builtOnIsSet() const;
    void unsetBuiltOn();

    void setBuiltOn(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<EmptyChangeLogSet> getChangeSet() const;
    bool changeSetIsSet() const;
    void unsetChangeSet();

    void setChangeSet(const std::shared_ptr<EmptyChangeLogSet>& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    int32_t m_number;
    bool m_numberIsSet;
    utility::string_t m_Url;
    bool m_UrlIsSet;
    std::vector<std::shared_ptr<CauseAction>> m_Actions;
    bool m_ActionsIsSet;
    bool m_Building;
    bool m_BuildingIsSet;
    utility::string_t m_Description;
    bool m_DescriptionIsSet;
    utility::string_t m_DisplayName;
    bool m_DisplayNameIsSet;
    int32_t m_Duration;
    bool m_DurationIsSet;
    int32_t m_EstimatedDuration;
    bool m_EstimatedDurationIsSet;
    utility::string_t m_Executor;
    bool m_ExecutorIsSet;
    utility::string_t m_FullDisplayName;
    bool m_FullDisplayNameIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    bool m_KeepLog;
    bool m_KeepLogIsSet;
    int32_t m_QueueId;
    bool m_QueueIdIsSet;
    utility::string_t m_Result;
    bool m_ResultIsSet;
    int32_t m_Timestamp;
    bool m_TimestampIsSet;
    utility::string_t m_BuiltOn;
    bool m_BuiltOnIsSet;
    std::shared_ptr<EmptyChangeLogSet> m_ChangeSet;
    bool m_ChangeSetIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_FreeStyleBuild_H_ */
