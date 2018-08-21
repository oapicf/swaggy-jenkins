/*
 * Hudson.h
 *
 * 
 */

#ifndef _Hudson_H_
#define _Hudson_H_


#include <string>
#include "AllView.h"
#include "FreeStyleProject.h"
#include "HudsonassignedLabels.h"
#include "UnlabeledLoadStatistics.h"
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

class Hudson : public Object {
public:
	/*! \brief Constructor.
	 */
	Hudson();
	Hudson(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Hudson();

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
	std::list<HudsonassignedLabels> getAssignedLabels();

	/*! \brief Set 
	 */
	void setAssignedLabels(std::list <HudsonassignedLabels> assignedLabels);
	/*! \brief Get 
	 */
	std::string getMode();

	/*! \brief Set 
	 */
	void setMode(std::string  mode);
	/*! \brief Get 
	 */
	std::string getNodeDescription();

	/*! \brief Set 
	 */
	void setNodeDescription(std::string  nodeDescription);
	/*! \brief Get 
	 */
	std::string getNodeName();

	/*! \brief Set 
	 */
	void setNodeName(std::string  nodeName);
	/*! \brief Get 
	 */
	int getNumExecutors();

	/*! \brief Set 
	 */
	void setNumExecutors(int  numExecutors);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::list<FreeStyleProject> getJobs();

	/*! \brief Set 
	 */
	void setJobs(std::list <FreeStyleProject> jobs);
	/*! \brief Get 
	 */
	AllView getPrimaryView();

	/*! \brief Set 
	 */
	void setPrimaryView(AllView  primaryView);
	/*! \brief Get 
	 */
	bool getQuietingDown();

	/*! \brief Set 
	 */
	void setQuietingDown(bool  quietingDown);
	/*! \brief Get 
	 */
	int getSlaveAgentPort();

	/*! \brief Set 
	 */
	void setSlaveAgentPort(int  slaveAgentPort);
	/*! \brief Get 
	 */
	UnlabeledLoadStatistics getUnlabeledLoad();

	/*! \brief Set 
	 */
	void setUnlabeledLoad(UnlabeledLoadStatistics  unlabeledLoad);
	/*! \brief Get 
	 */
	bool getUseCrumbs();

	/*! \brief Set 
	 */
	void setUseCrumbs(bool  useCrumbs);
	/*! \brief Get 
	 */
	bool getUseSecurity();

	/*! \brief Set 
	 */
	void setUseSecurity(bool  useSecurity);
	/*! \brief Get 
	 */
	std::list<AllView> getViews();

	/*! \brief Set 
	 */
	void setViews(std::list <AllView> views);

private:
	std::string _class;
	std::list <HudsonassignedLabels>assignedLabels;
	std::string mode;
	std::string nodeDescription;
	std::string nodeName;
	int numExecutors;
	std::string description;
	std::list <FreeStyleProject>jobs;
	AllView primaryView;
	bool quietingDown;
	int slaveAgentPort;
	UnlabeledLoadStatistics unlabeledLoad;
	bool useCrumbs;
	bool useSecurity;
	std::list <AllView>views;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Hudson_H_ */
