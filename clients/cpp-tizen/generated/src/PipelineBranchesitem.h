/*
 * PipelineBranchesitem.h
 *
 * 
 */

#ifndef _PipelineBranchesitem_H_
#define _PipelineBranchesitem_H_


#include <string>
#include "PipelineBranchesitemlatestRun.h"
#include "PipelineBranchesitempullRequest.h"
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

class PipelineBranchesitem : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineBranchesitem();
	PipelineBranchesitem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineBranchesitem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string displayName;
	int estimatedDurationInMillis;
	std::string name;
	int weatherScore;
	PipelineBranchesitemlatestRun latestRun;
	std::string organization;
	PipelineBranchesitempullRequest pullRequest;
	int totalNumberOfPullRequests;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineBranchesitem_H_ */
