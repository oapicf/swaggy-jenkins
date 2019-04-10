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
 * HudsonMasterComputer.h
 *
 * 
 */

#ifndef HudsonMasterComputer_H_
#define HudsonMasterComputer_H_


#include "ModelBase.h"

#include <string>
#include "HudsonMasterComputermonitorData.h"
#include "Label1.h"
#include <vector>
#include "HudsonMasterComputerexecutors.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  HudsonMasterComputer
    : public ModelBase
{
public:
    HudsonMasterComputer();
    virtual ~HudsonMasterComputer();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// HudsonMasterComputer members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    std::string getDisplayName() const;
    void setDisplayName(std::string const& value);
    bool displayNameIsSet() const;
    void unsetDisplayName();
    /// <summary>
    /// 
    /// </summary>
    std::vector<HudsonMasterComputerexecutors>& getExecutors();
    bool executorsIsSet() const;
    void unsetExecutors();
    /// <summary>
    /// 
    /// </summary>
    std::string getIcon() const;
    void setIcon(std::string const& value);
    bool iconIsSet() const;
    void unsetIcon();
    /// <summary>
    /// 
    /// </summary>
    std::string getIconClassName() const;
    void setIconClassName(std::string const& value);
    bool iconClassNameIsSet() const;
    void unsetIconClassName();
    /// <summary>
    /// 
    /// </summary>
    bool isIdle() const;
    void setIdle(bool const value);
    bool idleIsSet() const;
    void unsetIdle();
    /// <summary>
    /// 
    /// </summary>
    bool isJnlpAgent() const;
    void setJnlpAgent(bool const value);
    bool jnlpAgentIsSet() const;
    void unsetJnlpAgent();
    /// <summary>
    /// 
    /// </summary>
    bool isLaunchSupported() const;
    void setLaunchSupported(bool const value);
    bool launchSupportedIsSet() const;
    void unsetLaunchSupported();
    /// <summary>
    /// 
    /// </summary>
    Label1 getLoadStatistics() const;
    void setLoadStatistics(Label1 const& value);
    bool loadStatisticsIsSet() const;
    void unsetLoadStatistics();
    /// <summary>
    /// 
    /// </summary>
    bool isManualLaunchAllowed() const;
    void setManualLaunchAllowed(bool const value);
    bool manualLaunchAllowedIsSet() const;
    void unsetManualLaunchAllowed();
    /// <summary>
    /// 
    /// </summary>
    HudsonMasterComputermonitorData getMonitorData() const;
    void setMonitorData(HudsonMasterComputermonitorData const& value);
    bool monitorDataIsSet() const;
    void unsetMonitorData();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNumExecutors() const;
    void setNumExecutors(int32_t const value);
    bool numExecutorsIsSet() const;
    void unsetNumExecutors();
    /// <summary>
    /// 
    /// </summary>
    bool isOffline() const;
    void setOffline(bool const value);
    bool offlineIsSet() const;
    void unsetOffline();
    /// <summary>
    /// 
    /// </summary>
    std::string getOfflineCause() const;
    void setOfflineCause(std::string const& value);
    bool offlineCauseIsSet() const;
    void unsetOfflineCause();
    /// <summary>
    /// 
    /// </summary>
    std::string getOfflineCauseReason() const;
    void setOfflineCauseReason(std::string const& value);
    bool offlineCauseReasonIsSet() const;
    void unsetOfflineCauseReason();
    /// <summary>
    /// 
    /// </summary>
    bool isTemporarilyOffline() const;
    void setTemporarilyOffline(bool const value);
    bool temporarilyOfflineIsSet() const;
    void unsetTemporarilyOffline();

protected:
    std::string m__class;
    bool m__classIsSet;
    std::string m_DisplayName;
    bool m_DisplayNameIsSet;
    std::vector<HudsonMasterComputerexecutors> m_Executors;
    bool m_ExecutorsIsSet;
    std::string m_Icon;
    bool m_IconIsSet;
    std::string m_IconClassName;
    bool m_IconClassNameIsSet;
    bool m_Idle;
    bool m_IdleIsSet;
    bool m_JnlpAgent;
    bool m_JnlpAgentIsSet;
    bool m_LaunchSupported;
    bool m_LaunchSupportedIsSet;
    Label1 m_LoadStatistics;
    bool m_LoadStatisticsIsSet;
    bool m_ManualLaunchAllowed;
    bool m_ManualLaunchAllowedIsSet;
    HudsonMasterComputermonitorData m_MonitorData;
    bool m_MonitorDataIsSet;
    int32_t m_NumExecutors;
    bool m_NumExecutorsIsSet;
    bool m_Offline;
    bool m_OfflineIsSet;
    std::string m_OfflineCause;
    bool m_OfflineCauseIsSet;
    std::string m_OfflineCauseReason;
    bool m_OfflineCauseReasonIsSet;
    bool m_TemporarilyOffline;
    bool m_TemporarilyOfflineIsSet;
};

}
}
}
}

#endif /* HudsonMasterComputer_H_ */
