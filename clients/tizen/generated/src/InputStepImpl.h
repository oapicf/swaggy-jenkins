/*
 * InputStepImpl.h
 *
 * 
 */

#ifndef _InputStepImpl_H_
#define _InputStepImpl_H_


#include <string>
#include "InputStepImpllinks.h"
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

class InputStepImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	InputStepImpl();
	InputStepImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~InputStepImpl();

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
	InputStepImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(InputStepImpllinks  _links);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getMessage();

	/*! \brief Set 
	 */
	void setMessage(std::string  message);
	/*! \brief Get 
	 */
	std::string getOk();

	/*! \brief Set 
	 */
	void setOk(std::string  ok);
	/*! \brief Get 
	 */
	std::list<StringParameterDefinition> getParameters();

	/*! \brief Set 
	 */
	void setParameters(std::list <StringParameterDefinition> parameters);
	/*! \brief Get 
	 */
	std::string getSubmitter();

	/*! \brief Set 
	 */
	void setSubmitter(std::string  submitter);

private:
	std::string _class;
	InputStepImpllinks _links;
	std::string id;
	std::string message;
	std::string ok;
	std::list <StringParameterDefinition>parameters;
	std::string submitter;
	void __init();
	void __cleanup();

};
}
}

#endif /* _InputStepImpl_H_ */
