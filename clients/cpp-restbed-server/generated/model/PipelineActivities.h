/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * PipelineActivities.h
 *
 * 
 */

#ifndef PipelineActivities_H_
#define PipelineActivities_H_



#include "PipelineActivity.h"
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  PipelineActivities
{
public:
    PipelineActivities();
    virtual ~PipelineActivities();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// PipelineActivities members
    

protected:
};

}
}
}
}

#endif /* PipelineActivities_H_ */
