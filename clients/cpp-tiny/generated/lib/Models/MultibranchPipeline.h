
/*
 * MultibranchPipeline.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_MultibranchPipeline_H_
#define TINY_CPP_CLIENT_MultibranchPipeline_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class MultibranchPipeline{
public:

    /*! \brief Constructor.
	 */
    MultibranchPipeline();
    MultibranchPipeline(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~MultibranchPipeline();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
	/*! \brief Get 
	 */
	std::string getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(std::string  latestRun);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	std::list<std::string> getBranchNames();

	/*! \brief Set 
	 */
	void setBranchNames(std::list <std::string> branchNames);
	/*! \brief Get 
	 */
	int getNumberOfFailingBranches();

	/*! \brief Set 
	 */
	void setNumberOfFailingBranches(int  numberOfFailingBranches);
	/*! \brief Get 
	 */
	int getNumberOfFailingPullRequests();

	/*! \brief Set 
	 */
	void setNumberOfFailingPullRequests(int  numberOfFailingPullRequests);
	/*! \brief Get 
	 */
	int getNumberOfSuccessfulBranches();

	/*! \brief Set 
	 */
	void setNumberOfSuccessfulBranches(int  numberOfSuccessfulBranches);
	/*! \brief Get 
	 */
	int getNumberOfSuccessfulPullRequests();

	/*! \brief Set 
	 */
	void setNumberOfSuccessfulPullRequests(int  numberOfSuccessfulPullRequests);
	/*! \brief Get 
	 */
	int getTotalNumberOfBranches();

	/*! \brief Set 
	 */
	void setTotalNumberOfBranches(int  totalNumberOfBranches);
	/*! \brief Get 
	 */
	int getTotalNumberOfPullRequests();

	/*! \brief Set 
	 */
	void setTotalNumberOfPullRequests(int  totalNumberOfPullRequests);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    std::string displayName{};
    int estimatedDurationInMillis{};
    std::string latestRun{};
    std::string name{};
    std::string organization{};
    int weatherScore{};
    std::list<std::string> branchNames;
    int numberOfFailingBranches{};
    int numberOfFailingPullRequests{};
    int numberOfSuccessfulBranches{};
    int numberOfSuccessfulPullRequests{};
    int totalNumberOfBranches{};
    int totalNumberOfPullRequests{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_MultibranchPipeline_H_ */
