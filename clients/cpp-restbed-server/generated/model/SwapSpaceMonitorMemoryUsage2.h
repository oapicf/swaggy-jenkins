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
 * SwapSpaceMonitorMemoryUsage2.h
 *
 * 
 */

#ifndef SwapSpaceMonitorMemoryUsage2_H_
#define SwapSpaceMonitorMemoryUsage2_H_



#include <string>
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>
#include "helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  SwapSpaceMonitorMemoryUsage2 
{
public:
    SwapSpaceMonitorMemoryUsage2() = default;
    explicit SwapSpaceMonitorMemoryUsage2(boost::property_tree::ptree const& pt);
    virtual ~SwapSpaceMonitorMemoryUsage2() = default;

    SwapSpaceMonitorMemoryUsage2(const SwapSpaceMonitorMemoryUsage2& other) = default; // copy constructor
    SwapSpaceMonitorMemoryUsage2(SwapSpaceMonitorMemoryUsage2&& other) noexcept = default; // move constructor

    SwapSpaceMonitorMemoryUsage2& operator=(const SwapSpaceMonitorMemoryUsage2& other) = default; // copy assignment
    SwapSpaceMonitorMemoryUsage2& operator=(SwapSpaceMonitorMemoryUsage2&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// SwapSpaceMonitorMemoryUsage2 members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getAvailablePhysicalMemory() const;
    void setAvailablePhysicalMemory(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getAvailableSwapSpace() const;
    void setAvailableSwapSpace(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalPhysicalMemory() const;
    void setTotalPhysicalMemory(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTotalSwapSpace() const;
    void setTotalSwapSpace(int32_t value);

protected:
    std::string m__class = "";
    int32_t m_AvailablePhysicalMemory = 0;
    int32_t m_AvailableSwapSpace = 0;
    int32_t m_TotalPhysicalMemory = 0;
    int32_t m_TotalSwapSpace = 0;
};

std::vector<SwapSpaceMonitorMemoryUsage2> createSwapSpaceMonitorMemoryUsage2VectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<SwapSpaceMonitorMemoryUsage2>(const SwapSpaceMonitorMemoryUsage2& val) {
    return val.toPropertyTree();
}

template<>
inline SwapSpaceMonitorMemoryUsage2 fromPt<SwapSpaceMonitorMemoryUsage2>(const boost::property_tree::ptree& pt) {
    SwapSpaceMonitorMemoryUsage2 ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* SwapSpaceMonitorMemoryUsage2_H_ */
