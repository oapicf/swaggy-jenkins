/*
 * CauseAction.h
 *
 * 
 */

#ifndef _CauseAction_H_
#define _CauseAction_H_


#include <string>
#include "CauseUserIdCause.h"
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

class CauseAction : public Object {
public:
	/*! \brief Constructor.
	 */
	CauseAction();
	CauseAction(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CauseAction();

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
	std::list<CauseUserIdCause> getCauses();

	/*! \brief Set 
	 */
	void setCauses(std::list <CauseUserIdCause> causes);

private:
	std::string _class;
	std::list <CauseUserIdCause>causes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CauseAction_H_ */
