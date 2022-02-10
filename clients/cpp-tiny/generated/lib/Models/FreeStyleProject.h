
/*
 * FreeStyleProject.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_FreeStyleProject_H_
#define TINY_CPP_CLIENT_FreeStyleProject_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProjectactions.h"
#include "FreeStyleProjecthealthReport.h"
#include "NullSCM.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class FreeStyleProject{
public:

    /*! \brief Constructor.
	 */
    FreeStyleProject();
    FreeStyleProject(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~FreeStyleProject();


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
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::string getColor();

	/*! \brief Set 
	 */
	void setColor(std::string  color);
	/*! \brief Get 
	 */
	std::list<FreeStyleProjectactions> getActions();

	/*! \brief Set 
	 */
	void setActions(std::list <FreeStyleProjectactions> actions);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	std::string getDisplayNameOrNull();

	/*! \brief Set 
	 */
	void setDisplayNameOrNull(std::string  displayNameOrNull);
	/*! \brief Get 
	 */
	std::string getFullDisplayName();

	/*! \brief Set 
	 */
	void setFullDisplayName(std::string  fullDisplayName);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	bool isBuildable();

	/*! \brief Set 
	 */
	void setBuildable(bool  buildable);
	/*! \brief Get 
	 */
	std::list<FreeStyleBuild> getBuilds();

	/*! \brief Set 
	 */
	void setBuilds(std::list <FreeStyleBuild> builds);
	/*! \brief Get 
	 */
	FreeStyleBuild getFirstBuild();

	/*! \brief Set 
	 */
	void setFirstBuild(FreeStyleBuild  firstBuild);
	/*! \brief Get 
	 */
	std::list<FreeStyleProjecthealthReport> getHealthReport();

	/*! \brief Set 
	 */
	void setHealthReport(std::list <FreeStyleProjecthealthReport> healthReport);
	/*! \brief Get 
	 */
	bool isInQueue();

	/*! \brief Set 
	 */
	void setInQueue(bool  inQueue);
	/*! \brief Get 
	 */
	bool isKeepDependencies();

	/*! \brief Set 
	 */
	void setKeepDependencies(bool  keepDependencies);
	/*! \brief Get 
	 */
	FreeStyleBuild getLastBuild();

	/*! \brief Set 
	 */
	void setLastBuild(FreeStyleBuild  lastBuild);
	/*! \brief Get 
	 */
	FreeStyleBuild getLastCompletedBuild();

	/*! \brief Set 
	 */
	void setLastCompletedBuild(FreeStyleBuild  lastCompletedBuild);
	/*! \brief Get 
	 */
	std::string getLastFailedBuild();

	/*! \brief Set 
	 */
	void setLastFailedBuild(std::string  lastFailedBuild);
	/*! \brief Get 
	 */
	FreeStyleBuild getLastStableBuild();

	/*! \brief Set 
	 */
	void setLastStableBuild(FreeStyleBuild  lastStableBuild);
	/*! \brief Get 
	 */
	FreeStyleBuild getLastSuccessfulBuild();

	/*! \brief Set 
	 */
	void setLastSuccessfulBuild(FreeStyleBuild  lastSuccessfulBuild);
	/*! \brief Get 
	 */
	std::string getLastUnstableBuild();

	/*! \brief Set 
	 */
	void setLastUnstableBuild(std::string  lastUnstableBuild);
	/*! \brief Get 
	 */
	std::string getLastUnsuccessfulBuild();

	/*! \brief Set 
	 */
	void setLastUnsuccessfulBuild(std::string  lastUnsuccessfulBuild);
	/*! \brief Get 
	 */
	int getNextBuildNumber();

	/*! \brief Set 
	 */
	void setNextBuildNumber(int  nextBuildNumber);
	/*! \brief Get 
	 */
	std::string getQueueItem();

	/*! \brief Set 
	 */
	void setQueueItem(std::string  queueItem);
	/*! \brief Get 
	 */
	bool isConcurrentBuild();

	/*! \brief Set 
	 */
	void setConcurrentBuild(bool  concurrentBuild);
	/*! \brief Get 
	 */
	NullSCM getScm();

	/*! \brief Set 
	 */
	void setScm(NullSCM  scm);


    private:
    std::string _class{};
    std::string name{};
    std::string url{};
    std::string color{};
    std::list<FreeStyleProjectactions> actions;
    std::string description{};
    std::string displayName{};
    std::string displayNameOrNull{};
    std::string fullDisplayName{};
    std::string fullName{};
    bool buildable{};
    std::list<FreeStyleBuild> builds;
    FreeStyleBuild firstBuild;
    std::list<FreeStyleProjecthealthReport> healthReport;
    bool inQueue{};
    bool keepDependencies{};
    FreeStyleBuild lastBuild;
    FreeStyleBuild lastCompletedBuild;
    std::string lastFailedBuild{};
    FreeStyleBuild lastStableBuild;
    FreeStyleBuild lastSuccessfulBuild;
    std::string lastUnstableBuild{};
    std::string lastUnsuccessfulBuild{};
    int nextBuildNumber{};
    std::string queueItem{};
    bool concurrentBuild{};
    NullSCM scm;
};
}

#endif /* TINY_CPP_CLIENT_FreeStyleProject_H_ */
