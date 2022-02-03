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
 * DiskSpaceMonitorDescriptorDiskSpace.h
 *
 * 
 */

#ifndef DiskSpaceMonitorDescriptorDiskSpace_H_
#define DiskSpaceMonitorDescriptorDiskSpace_H_



#include <string>
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  DiskSpaceMonitorDescriptorDiskSpace 
{
public:
    DiskSpaceMonitorDescriptorDiskSpace() = default;
    explicit DiskSpaceMonitorDescriptorDiskSpace(boost::property_tree::ptree const& pt);
    virtual ~DiskSpaceMonitorDescriptorDiskSpace() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// DiskSpaceMonitorDescriptorDiskSpace members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getTimestamp() const;
    void setTimestamp(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    std::string getPath() const;
    void setPath(std::string value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getSize() const;
    void setSize(int32_t value);

protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    std::string m__class = "";
    int32_t m_Timestamp = 0;
    std::string m_Path = "";
    int32_t m_Size = 0;
};

std::vector<DiskSpaceMonitorDescriptorDiskSpace> createDiskSpaceMonitorDescriptorDiskSpaceVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* DiskSpaceMonitorDescriptorDiskSpace_H_ */
