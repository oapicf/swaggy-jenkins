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
 * PipelineQueue.h
 *
 * 
 */

#ifndef PipelineQueue_H_
#define PipelineQueue_H_


#include "ModelBase.h"

#include "QueueItemImpl.h"
#include <vector>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  PipelineQueue
    : public ModelBase
{
public:
    PipelineQueue();
    virtual ~PipelineQueue();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// PipelineQueue members


protected:
};

}
}
}
}

#endif /* PipelineQueue_H_ */
