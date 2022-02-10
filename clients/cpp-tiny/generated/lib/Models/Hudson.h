
/*
 * Hudson.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Hudson_H_
#define TINY_CPP_CLIENT_Hudson_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "AllView.h"
#include "FreeStyleProject.h"
#include "HudsonassignedLabels.h"
#include "UnlabeledLoadStatistics.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Hudson{
public:

    /*! \brief Constructor.
	 */
    Hudson();
    Hudson(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Hudson();


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
	bool isQuietingDown();

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
	bool isUseCrumbs();

	/*! \brief Set 
	 */
	void setUseCrumbs(bool  useCrumbs);
	/*! \brief Get 
	 */
	bool isUseSecurity();

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
    std::string _class{};
    std::list<HudsonassignedLabels> assignedLabels;
    std::string mode{};
    std::string nodeDescription{};
    std::string nodeName{};
    int numExecutors{};
    std::string description{};
    std::list<FreeStyleProject> jobs;
    AllView primaryView;
    bool quietingDown{};
    int slaveAgentPort{};
    UnlabeledLoadStatistics unlabeledLoad;
    bool useCrumbs{};
    bool useSecurity{};
    std::list<AllView> views;
};
}

#endif /* TINY_CPP_CLIENT_Hudson_H_ */
