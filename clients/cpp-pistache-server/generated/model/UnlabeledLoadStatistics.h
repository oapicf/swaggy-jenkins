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
 * UnlabeledLoadStatistics.h
 *
 * 
 */

#ifndef UnlabeledLoadStatistics_H_
#define UnlabeledLoadStatistics_H_


#include "ModelBase.h"

#include <string>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  UnlabeledLoadStatistics
    : public ModelBase
{
public:
    UnlabeledLoadStatistics();
    virtual ~UnlabeledLoadStatistics();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// UnlabeledLoadStatistics members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool classIsSet() const;
    void unset_class();

protected:
    std::string m__class;
    bool m__classIsSet;
};

}
}
}
}

#endif /* UnlabeledLoadStatistics_H_ */
