/*
 * DefaultCrumbIssuer.h
 *
 * 
 */

#ifndef _DefaultCrumbIssuer_H_
#define _DefaultCrumbIssuer_H_


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

class DefaultCrumbIssuer : public Object {
public:
	/*! \brief Constructor.
	 */
	DefaultCrumbIssuer();
	DefaultCrumbIssuer(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DefaultCrumbIssuer();

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
	std::string getCrumb();

	/*! \brief Set 
	 */
	void setCrumb(std::string  crumb);
	/*! \brief Get 
	 */
	std::string getCrumbRequestField();

	/*! \brief Set 
	 */
	void setCrumbRequestField(std::string  crumbRequestField);

private:
	std::string _class;
	std::string crumb;
	std::string crumbRequestField;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DefaultCrumbIssuer_H_ */
