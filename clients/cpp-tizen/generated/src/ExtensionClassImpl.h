/*
 * ExtensionClassImpl.h
 *
 * 
 */

#ifndef _ExtensionClassImpl_H_
#define _ExtensionClassImpl_H_


#include <string>
#include "ExtensionClassImpllinks.h"
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

class ExtensionClassImpl : public Object {
public:
	/*! \brief Constructor.
	 */
	ExtensionClassImpl();
	ExtensionClassImpl(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExtensionClassImpl();

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
	ExtensionClassImpllinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ExtensionClassImpllinks  _links);
	/*! \brief Get 
	 */
	std::list<std::string> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <std::string> classes);

private:
	std::string _class;
	ExtensionClassImpllinks _links;
	std::list <std::string>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExtensionClassImpl_H_ */
