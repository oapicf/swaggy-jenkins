/*
 * PipelineImpl.h
 *
 * 
 */

#ifndef _PipelineImpl_H_
#define _PipelineImpl_H_


#include <string>
#include "PipelineImpllinks.h"
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

class PipelineImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineImpl();
	PipelineImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineImpl();

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
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
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
	PipelineImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineImpllinks  _links);

private:
	std::string _class;
	std::string displayName;
	int estimatedDurationInMillis;
	std::string fullName;
	std::string latestRun;
	std::string name;
	std::string organization;
	int weatherScore;
	PipelineImpllinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineImpl_H_ */
