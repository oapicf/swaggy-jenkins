
/*
 * HudsonMasterComputer.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_HudsonMasterComputer_H_
#define TINY_CPP_CLIENT_HudsonMasterComputer_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "HudsonMasterComputerexecutors.h"
#include "HudsonMasterComputermonitorData.h"
#include "Label1.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HudsonMasterComputer{
public:

    /*! \brief Constructor.
	 */
    HudsonMasterComputer();
    HudsonMasterComputer(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~HudsonMasterComputer();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	std::list<HudsonMasterComputerexecutors> getExecutors();

	/*! \brief Set 
	 */
	void setExecutors(std::list <HudsonMasterComputerexecutors> executors);
	/*! \brief Get 
	 */
	std::string getIcon();

	/*! \brief Set 
	 */
	void setIcon(std::string  icon);
	/*! \brief Get 
	 */
	std::string getIconClassName();

	/*! \brief Set 
	 */
	void setIconClassName(std::string  iconClassName);
	/*! \brief Get 
	 */
	bool isIdle();

	/*! \brief Set 
	 */
	void setIdle(bool  idle);
	/*! \brief Get 
	 */
	bool isJnlpAgent();

	/*! \brief Set 
	 */
	void setJnlpAgent(bool  jnlpAgent);
	/*! \brief Get 
	 */
	bool isLaunchSupported();

	/*! \brief Set 
	 */
	void setLaunchSupported(bool  launchSupported);
	/*! \brief Get 
	 */
	Label1 getLoadStatistics();

	/*! \brief Set 
	 */
	void setLoadStatistics(Label1  loadStatistics);
	/*! \brief Get 
	 */
	bool isManualLaunchAllowed();

	/*! \brief Set 
	 */
	void setManualLaunchAllowed(bool  manualLaunchAllowed);
	/*! \brief Get 
	 */
	HudsonMasterComputermonitorData getMonitorData();

	/*! \brief Set 
	 */
	void setMonitorData(HudsonMasterComputermonitorData  monitorData);
	/*! \brief Get 
	 */
	int getNumExecutors();

	/*! \brief Set 
	 */
	void setNumExecutors(int  numExecutors);
	/*! \brief Get 
	 */
	bool isOffline();

	/*! \brief Set 
	 */
	void setOffline(bool  offline);
	/*! \brief Get 
	 */
	std::string getOfflineCause();

	/*! \brief Set 
	 */
	void setOfflineCause(std::string  offlineCause);
	/*! \brief Get 
	 */
	std::string getOfflineCauseReason();

	/*! \brief Set 
	 */
	void setOfflineCauseReason(std::string  offlineCauseReason);
	/*! \brief Get 
	 */
	bool isTemporarilyOffline();

	/*! \brief Set 
	 */
	void setTemporarilyOffline(bool  temporarilyOffline);


    private:
    std::string _class{};
    std::string displayName{};
    std::list<HudsonMasterComputerexecutors> executors;
    std::string icon{};
    std::string iconClassName{};
    bool idle{};
    bool jnlpAgent{};
    bool launchSupported{};
    Label1 loadStatistics;
    bool manualLaunchAllowed{};
    HudsonMasterComputermonitorData monitorData;
    int numExecutors{};
    bool offline{};
    std::string offlineCause{};
    std::string offlineCauseReason{};
    bool temporarilyOffline{};
};
}

#endif /* TINY_CPP_CLIENT_HudsonMasterComputer_H_ */
