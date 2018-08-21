/*
 * BranchImpl.h
 *
 * 
 */

#ifndef _BranchImpl_H_
#define _BranchImpl_H_


#include <string>
#include "BranchImpllinks.h"
#include "BranchImplpermissions.h"
#include "PipelineRunImpl.h"
#include "StringParameterDefinition.h"
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

class BranchImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	BranchImpl();
	BranchImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~BranchImpl();

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
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
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
	std::list<StringParameterDefinition> getParameters();

	/*! \brief Set 
	 */
	void setParameters(std::list <StringParameterDefinition> parameters);
	/*! \brief Get 
	 */
	BranchImplpermissions getPermissions();

	/*! \brief Set 
	 */
	void setPermissions(BranchImplpermissions  permissions);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	std::string getPullRequest();

	/*! \brief Set 
	 */
	void setPullRequest(std::string  pullRequest);
	/*! \brief Get 
	 */
	BranchImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(BranchImpllinks  _links);
	/*! \brief Get 
	 */
	PipelineRunImpl getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(PipelineRunImpl  latestRun);

private:
	std::string _class;
	std::string displayName;
	int estimatedDurationInMillis;
	std::string fullDisplayName;
	std::string fullName;
	std::string name;
	std::string organization;
	std::list <StringParameterDefinition>parameters;
	BranchImplpermissions permissions;
	int weatherScore;
	std::string pullRequest;
	BranchImpllinks _links;
	PipelineRunImpl latestRun;
	void __init();
	void __cleanup();

};
}
}

#endif /* _BranchImpl_H_ */
