/*
 * ClassesByClass.h
 *
 * 
 */

#ifndef _ClassesByClass_H_
#define _ClassesByClass_H_


#include <string>
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

class ClassesByClass : public Object {
public:
	/*! \brief Constructor.
	 */
	ClassesByClass();
	ClassesByClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ClassesByClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<std::string> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <std::string> classes);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	std::list <std::string>classes;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ClassesByClass_H_ */
