/*
 * HudsonMasterComputer.h
 *
 * 
 */

#ifndef _HudsonMasterComputer_H_
#define _HudsonMasterComputer_H_


#include <string>
#include "HudsonMasterComputerexecutors.h"
#include "HudsonMasterComputermonitorData.h"
#include "Label1.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HudsonMasterComputer : public Object {
public:
	/*! \brief Constructor.
	 */
	HudsonMasterComputer();
	HudsonMasterComputer(char* str);

	/*! \brief Destructor.
	 */
	virtual ~HudsonMasterComputer();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	bool getIdle();

	/*! \brief Set 
	 */
	void setIdle(bool  idle);
	/*! \brief Get 
	 */
	bool getJnlpAgent();

	/*! \brief Set 
	 */
	void setJnlpAgent(bool  jnlpAgent);
	/*! \brief Get 
	 */
	bool getLaunchSupported();

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
	bool getManualLaunchAllowed();

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
	bool getOffline();

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
	bool getTemporarilyOffline();

	/*! \brief Set 
	 */
	void setTemporarilyOffline(bool  temporarilyOffline);

private:
	std::string _class;
	std::string displayName;
	std::list <HudsonMasterComputerexecutors>executors;
	std::string icon;
	std::string iconClassName;
	bool idle;
	bool jnlpAgent;
	bool launchSupported;
	Label1 loadStatistics;
	bool manualLaunchAllowed;
	HudsonMasterComputermonitorData monitorData;
	int numExecutors;
	bool offline;
	std::string offlineCause;
	std::string offlineCauseReason;
	bool temporarilyOffline;
	void __init();
	void __cleanup();

};
}
}

#endif /* _HudsonMasterComputer_H_ */
