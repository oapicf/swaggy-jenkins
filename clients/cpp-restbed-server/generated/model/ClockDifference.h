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
 * ClockDifference.h
 *
 * 
 */

#ifndef ClockDifference_H_
#define ClockDifference_H_



#include <string>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ClockDifference
{
public:
    ClockDifference();
    virtual ~ClockDifference();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ClockDifference members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getDiff() const;
    void setDiff(int32_t value);

protected:
    std::string m__class;
    int32_t m_Diff;
};

}
}
}
}

#endif /* ClockDifference_H_ */
