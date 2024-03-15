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
 * OAIHudsonMasterComputermonitorData.h
 *
 * 
 */

#ifndef OAIHudsonMasterComputermonitorData_H
#define OAIHudsonMasterComputermonitorData_H

#include <QJsonObject>

#include "OAIClockDifference.h"
#include "OAIDiskSpaceMonitorDescriptorDiskSpace.h"
#include "OAIResponseTimeMonitorData.h"
#include "OAISwapSpaceMonitorMemoryUsage2.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIHudsonMasterComputermonitorData : public OAIObject {
public:
    OAIHudsonMasterComputermonitorData();
    OAIHudsonMasterComputermonitorData(QString json);
    ~OAIHudsonMasterComputermonitorData() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAISwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() const;
    void setHudsonNodeMonitorsSwapSpaceMonitor(const OAISwapSpaceMonitorMemoryUsage2 &hudson_node_monitors_swap_space_monitor);
    bool is_hudson_node_monitors_swap_space_monitor_Set() const;
    bool is_hudson_node_monitors_swap_space_monitor_Valid() const;

    OAIDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() const;
    void setHudsonNodeMonitorsTemporarySpaceMonitor(const OAIDiskSpaceMonitorDescriptorDiskSpace &hudson_node_monitors_temporary_space_monitor);
    bool is_hudson_node_monitors_temporary_space_monitor_Set() const;
    bool is_hudson_node_monitors_temporary_space_monitor_Valid() const;

    OAIDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() const;
    void setHudsonNodeMonitorsDiskSpaceMonitor(const OAIDiskSpaceMonitorDescriptorDiskSpace &hudson_node_monitors_disk_space_monitor);
    bool is_hudson_node_monitors_disk_space_monitor_Set() const;
    bool is_hudson_node_monitors_disk_space_monitor_Valid() const;

    QString getHudsonNodeMonitorsArchitectureMonitor() const;
    void setHudsonNodeMonitorsArchitectureMonitor(const QString &hudson_node_monitors_architecture_monitor);
    bool is_hudson_node_monitors_architecture_monitor_Set() const;
    bool is_hudson_node_monitors_architecture_monitor_Valid() const;

    OAIResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() const;
    void setHudsonNodeMonitorsResponseTimeMonitor(const OAIResponseTimeMonitorData &hudson_node_monitors_response_time_monitor);
    bool is_hudson_node_monitors_response_time_monitor_Set() const;
    bool is_hudson_node_monitors_response_time_monitor_Valid() const;

    OAIClockDifference getHudsonNodeMonitorsClockMonitor() const;
    void setHudsonNodeMonitorsClockMonitor(const OAIClockDifference &hudson_node_monitors_clock_monitor);
    bool is_hudson_node_monitors_clock_monitor_Set() const;
    bool is_hudson_node_monitors_clock_monitor_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAISwapSpaceMonitorMemoryUsage2 hudson_node_monitors_swap_space_monitor;
    bool m_hudson_node_monitors_swap_space_monitor_isSet;
    bool m_hudson_node_monitors_swap_space_monitor_isValid;

    OAIDiskSpaceMonitorDescriptorDiskSpace hudson_node_monitors_temporary_space_monitor;
    bool m_hudson_node_monitors_temporary_space_monitor_isSet;
    bool m_hudson_node_monitors_temporary_space_monitor_isValid;

    OAIDiskSpaceMonitorDescriptorDiskSpace hudson_node_monitors_disk_space_monitor;
    bool m_hudson_node_monitors_disk_space_monitor_isSet;
    bool m_hudson_node_monitors_disk_space_monitor_isValid;

    QString hudson_node_monitors_architecture_monitor;
    bool m_hudson_node_monitors_architecture_monitor_isSet;
    bool m_hudson_node_monitors_architecture_monitor_isValid;

    OAIResponseTimeMonitorData hudson_node_monitors_response_time_monitor;
    bool m_hudson_node_monitors_response_time_monitor_isSet;
    bool m_hudson_node_monitors_response_time_monitor_isValid;

    OAIClockDifference hudson_node_monitors_clock_monitor;
    bool m_hudson_node_monitors_clock_monitor_isSet;
    bool m_hudson_node_monitors_clock_monitor_isValid;

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIHudsonMasterComputermonitorData)

#endif // OAIHudsonMasterComputermonitorData_H
