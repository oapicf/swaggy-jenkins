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
 * HudsonMasterComputermonitorData.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_HudsonMasterComputermonitorData_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_HudsonMasterComputermonitorData_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/SwapSpaceMonitorMemoryUsage2.h"
#include "CppRestOpenAPIClient/model/DiskSpaceMonitorDescriptorDiskSpace.h"
#include <cpprest/details/basic_types.h>
#include "CppRestOpenAPIClient/model/ClockDifference.h"
#include "CppRestOpenAPIClient/model/ResponseTimeMonitorData.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

class SwapSpaceMonitorMemoryUsage2;
class DiskSpaceMonitorDescriptorDiskSpace;
class ResponseTimeMonitorData;
class ClockDifference;

/// <summary>
/// 
/// </summary>
class  HudsonMasterComputermonitorData
    : public ModelBase
{
public:
    HudsonMasterComputermonitorData();
    virtual ~HudsonMasterComputermonitorData();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// HudsonMasterComputermonitorData members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<SwapSpaceMonitorMemoryUsage2> getHudsonNodeMonitorsSwapSpaceMonitor() const;
    bool hudsonNodeMonitorsSwapSpaceMonitorIsSet() const;
    void unsetHudson_node_monitors_SwapSpaceMonitor();

    void setHudsonNodeMonitorsSwapSpaceMonitor(const std::shared_ptr<SwapSpaceMonitorMemoryUsage2>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace> getHudsonNodeMonitorsTemporarySpaceMonitor() const;
    bool hudsonNodeMonitorsTemporarySpaceMonitorIsSet() const;
    void unsetHudson_node_monitors_TemporarySpaceMonitor();

    void setHudsonNodeMonitorsTemporarySpaceMonitor(const std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace> getHudsonNodeMonitorsDiskSpaceMonitor() const;
    bool hudsonNodeMonitorsDiskSpaceMonitorIsSet() const;
    void unsetHudson_node_monitors_DiskSpaceMonitor();

    void setHudsonNodeMonitorsDiskSpaceMonitor(const std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getHudsonNodeMonitorsArchitectureMonitor() const;
    bool hudsonNodeMonitorsArchitectureMonitorIsSet() const;
    void unsetHudson_node_monitors_ArchitectureMonitor();

    void setHudsonNodeMonitorsArchitectureMonitor(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ResponseTimeMonitorData> getHudsonNodeMonitorsResponseTimeMonitor() const;
    bool hudsonNodeMonitorsResponseTimeMonitorIsSet() const;
    void unsetHudson_node_monitors_ResponseTimeMonitor();

    void setHudsonNodeMonitorsResponseTimeMonitor(const std::shared_ptr<ResponseTimeMonitorData>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ClockDifference> getHudsonNodeMonitorsClockMonitor() const;
    bool hudsonNodeMonitorsClockMonitorIsSet() const;
    void unsetHudson_node_monitors_ClockMonitor();

    void setHudsonNodeMonitorsClockMonitor(const std::shared_ptr<ClockDifference>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);


protected:
    std::shared_ptr<SwapSpaceMonitorMemoryUsage2> m_Hudson_node_monitors_SwapSpaceMonitor;
    bool m_Hudson_node_monitors_SwapSpaceMonitorIsSet;
    std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace> m_Hudson_node_monitors_TemporarySpaceMonitor;
    bool m_Hudson_node_monitors_TemporarySpaceMonitorIsSet;
    std::shared_ptr<DiskSpaceMonitorDescriptorDiskSpace> m_Hudson_node_monitors_DiskSpaceMonitor;
    bool m_Hudson_node_monitors_DiskSpaceMonitorIsSet;
    utility::string_t m_Hudson_node_monitors_ArchitectureMonitor;
    bool m_Hudson_node_monitors_ArchitectureMonitorIsSet;
    std::shared_ptr<ResponseTimeMonitorData> m_Hudson_node_monitors_ResponseTimeMonitor;
    bool m_Hudson_node_monitors_ResponseTimeMonitorIsSet;
    std::shared_ptr<ClockDifference> m_Hudson_node_monitors_ClockMonitor;
    bool m_Hudson_node_monitors_ClockMonitorIsSet;
    utility::string_t m__class;
    bool m__classIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_HudsonMasterComputermonitorData_H_ */
