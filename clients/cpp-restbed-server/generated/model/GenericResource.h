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
 * GenericResource.h
 *
 * 
 */

#ifndef GenericResource_H_
#define GenericResource_H_



#include <string>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  GenericResource
{
public:
    GenericResource();
    virtual ~GenericResource();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// GenericResource members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getDisplayName() const;
    void setDisplayName(std::string value);
    /// <summary>
    /// 
    /// </summary>
    int32_t getDurationInMillis() const;
    void setDurationInMillis(int32_t value);
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getResult() const;
    void setResult(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::string getStartTime() const;
    void setStartTime(std::string value);

protected:
    std::string m__class;
    std::string m_DisplayName;
    int32_t m_DurationInMillis;
    std::string m_Id;
    std::string m_Result;
    std::string m_StartTime;
};

}
}
}
}

#endif /* GenericResource_H_ */
