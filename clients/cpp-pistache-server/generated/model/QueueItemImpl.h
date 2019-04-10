/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * QueueItemImpl.h
 *
 * 
 */

#ifndef QueueItemImpl_H_
#define QueueItemImpl_H_


#include "ModelBase.h"

#include <string>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  QueueItemImpl
    : public ModelBase
{
public:
    QueueItemImpl();
    virtual ~QueueItemImpl();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// QueueItemImpl members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    int32_t getExpectedBuildNumber() const;
    void setExpectedBuildNumber(int32_t const value);
    bool expectedBuildNumberIsSet() const;
    void unsetExpectedBuildNumber();
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
    std::string getPipeline() const;
    void setPipeline(std::string const& value);
    bool pipelineIsSet() const;
    void unsetPipeline();
    /// <summary>
    /// 
    /// </summary>
    int32_t getQueuedTime() const;
    void setQueuedTime(int32_t const value);
    bool queuedTimeIsSet() const;
    void unsetQueuedTime();

protected:
    std::string m__class;
    bool m__classIsSet;
    int32_t m_ExpectedBuildNumber;
    bool m_ExpectedBuildNumberIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    std::string m_Pipeline;
    bool m_PipelineIsSet;
    int32_t m_QueuedTime;
    bool m_QueuedTimeIsSet;
};

}
}
}
}

#endif /* QueueItemImpl_H_ */
