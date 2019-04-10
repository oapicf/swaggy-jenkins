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
 * ResponseTimeMonitorData.h
 *
 * 
 */

#ifndef ResponseTimeMonitorData_H_
#define ResponseTimeMonitorData_H_



#include <string>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseTimeMonitorData
{
public:
    ResponseTimeMonitorData();
    virtual ~ResponseTimeMonitorData();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ResponseTimeMonitorData members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getTimestamp() const;
    void setTimestamp(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getAverage() const;
    void setAverage(int32_t value);

protected:
    std::string m__class;
    int32_t m_Timestamp;
    int32_t m_Average;
};

}
}
}
}

#endif /* ResponseTimeMonitorData_H_ */
