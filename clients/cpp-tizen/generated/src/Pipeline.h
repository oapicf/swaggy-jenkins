/*
 * Pipeline.h
 *
 * 
 */

#ifndef _Pipeline_H_
#define _Pipeline_H_


#include <string>
#include "PipelinelatestRun.h"
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

class Pipeline : public Object {
public:
	/*! \brief Constructor.
	 */
	Pipeline();
	Pipeline(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Pipeline();

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
	std::string getOrganization();

	/*! \brief Set 
	 */
	void setOrganization(std::string  organization);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	int getWeatherScore();

	/*! \brief Set 
	 */
	void setWeatherScore(int  weatherScore);
	/*! \brief Get 
	 */
	int getEstimatedDurationInMillis();

	/*! \brief Set 
	 */
	void setEstimatedDurationInMillis(int  estimatedDurationInMillis);
	/*! \brief Get 
	 */
	PipelinelatestRun getLatestRun();

	/*! \brief Set 
	 */
	void setLatestRun(PipelinelatestRun  latestRun);

private:
	std::string _class;
	std::string organization;
	std::string name;
	std::string displayName;
	std::string fullName;
	int weatherScore;
	int estimatedDurationInMillis;
	PipelinelatestRun latestRun;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Pipeline_H_ */
