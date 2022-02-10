
/*
 * PipelineBranchesitem.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineBranchesitem_H_
#define TINY_CPP_CLIENT_PipelineBranchesitem_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelineBranchesitemlatestRun.h"
#include "PipelineBranchesitempullRequest.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineBranchesitem{
public:

    /*! \brief Constructor.
	 */
    PipelineBranchesitem();
    PipelineBranchesitem(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineBranchesitem();


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
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	PipelineBranchesitemlatestRun getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(PipelineBranchesitemlatestRun  latestRun);
	/*! \brief Get 
	 */
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	PipelineBranchesitempullRequest getPullRequest();

	/*! \brief Set 
	 */
	void setPullRequest(PipelineBranchesitempullRequest  pullRequest);
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
    std::string name{};
    int weatherScore{};
    PipelineBranchesitemlatestRun latestRun;
    std::string organization{};
    PipelineBranchesitempullRequest pullRequest;
    int totalNumberOfPullRequests{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineBranchesitem_H_ */
