/*
 * ExtensionClassContainerImpl1.h
 *
 * 
 */

#ifndef _ExtensionClassContainerImpl1_H_
#define _ExtensionClassContainerImpl1_H_


#include <string>
#include "ExtensionClassContainerImpl1links.h"
#include "ExtensionClassContainerImpl1map.h"
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

class ExtensionClassContainerImpl1 : public Object {
public:
	/*! \brief Constructor.
	 */
	ExtensionClassContainerImpl1();
	ExtensionClassContainerImpl1(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExtensionClassContainerImpl1();

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
	ExtensionClassContainerImpl1links getLinks();

	/*! \brief Set 
	 */
	void setLinks(ExtensionClassContainerImpl1links  _links);
	/*! \brief Get 
	 */
	ExtensionClassContainerImpl1map getMap();

	/*! \brief Set 
	 */
	void setMap(ExtensionClassContainerImpl1map  map);

private:
	std::string _class;
	ExtensionClassContainerImpl1links _links;
	ExtensionClassContainerImpl1map map;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExtensionClassContainerImpl1_H_ */
