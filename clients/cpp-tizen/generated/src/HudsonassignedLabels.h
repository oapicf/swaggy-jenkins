/*
 * HudsonassignedLabels.h
 *
 * 
 */

#ifndef _HudsonassignedLabels_H_
#define _HudsonassignedLabels_H_


#include <string>
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

class HudsonassignedLabels : public Object {
public:
	/*! \brief Constructor.
	 */
	HudsonassignedLabels();
	HudsonassignedLabels(char* str);

	/*! \brief Destructor.
	 */
	virtual ~HudsonassignedLabels();

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

private:
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _HudsonassignedLabels_H_ */
