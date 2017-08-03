/*
 * PipelineStepImpl.h
 *
 * 
 */

#ifndef _PipelineStepImpl_H_
#define _PipelineStepImpl_H_


#include <string>
#include "InputStepImpl.h"
#include "PipelineStepImpllinks.h"
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

class PipelineStepImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineStepImpl();
	PipelineStepImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineStepImpl();

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
	PipelineStepImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineStepImpllinks  _links);
	/*! \brief Get 
	 */
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	InputStepImpl getInput();

	/*! \brief Set 
	 */
	void setInput(InputStepImpl  input);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	std::string getStartTime();

	/*! \brief Set 
	 */
	void setStartTime(std::string  startTime);
	/*! \brief Get 
	 */
	std::string getState();

	/*! \brief Set 
	 */
	void setState(std::string  state);

private:
	std::string _class;
	PipelineStepImpllinks _links;
	std::string displayName;
	int durationInMillis;
	std::string id;
	InputStepImpl input;
	std::string result;
	std::string startTime;
	std::string state;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineStepImpl_H_ */
