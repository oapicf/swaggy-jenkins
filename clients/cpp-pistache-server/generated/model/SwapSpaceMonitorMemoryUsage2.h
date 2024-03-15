/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * SwapSpaceMonitorMemoryUsage2.h
 *
 * 
 */

#ifndef SwapSpaceMonitorMemoryUsage2_H_
#define SwapSpaceMonitorMemoryUsage2_H_


#include <string>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  SwapSpaceMonitorMemoryUsage2
{
public:
    SwapSpaceMonitorMemoryUsage2();
    virtual ~SwapSpaceMonitorMemoryUsage2() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    /// <summary>
    /// Helper overload for validate. Used when one model stores another model and calls it's validate.
    /// Not meant to be called outside that case.
    /// </summary>
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;

    bool operator==(const SwapSpaceMonitorMemoryUsage2& rhs) const;
    bool operator!=(const SwapSpaceMonitorMemoryUsage2& rhs) const;

    /////////////////////////////////////////////
    /// SwapSpaceMonitorMemoryUsage2 members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    int32_t getAvailablePhysicalMemory() const;
    void setAvailablePhysicalMemory(int32_t const value);
    bool availablePhysicalMemoryIsSet() const;
    void unsetAvailablePhysicalMemory();
    /// <summary>
    /// 
    /// </summary>
    int32_t getAvailableSwapSpace() const;
    void setAvailableSwapSpace(int32_t const value);
    bool availableSwapSpaceIsSet() const;
    void unsetAvailableSwapSpace();
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalPhysicalMemory() const;
    void setTotalPhysicalMemory(int32_t const value);
    bool totalPhysicalMemoryIsSet() const;
    void unsetTotalPhysicalMemory();
    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalSwapSpace() const;
    void setTotalSwapSpace(int32_t const value);
    bool totalSwapSpaceIsSet() const;
    void unsetTotalSwapSpace();

    friend  void to_json(nlohmann::json& j, const SwapSpaceMonitorMemoryUsage2& o);
    friend  void from_json(const nlohmann::json& j, SwapSpaceMonitorMemoryUsage2& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    int32_t m_AvailablePhysicalMemory;
    bool m_AvailablePhysicalMemoryIsSet;
    int32_t m_AvailableSwapSpace;
    bool m_AvailableSwapSpaceIsSet;
    int32_t m_TotalPhysicalMemory;
    bool m_TotalPhysicalMemoryIsSet;
    int32_t m_TotalSwapSpace;
    bool m_TotalSwapSpaceIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* SwapSpaceMonitorMemoryUsage2_H_ */
