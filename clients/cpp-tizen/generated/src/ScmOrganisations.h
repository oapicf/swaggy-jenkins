/*
 * ScmOrganisations.h
 *
 * 
 */

#ifndef _ScmOrganisations_H_
#define _ScmOrganisations_H_


#include <string>
#include "GithubOrganization.h"
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

class ScmOrganisations : public Object {
public:
	/*! \brief Constructor.
	 */
	ScmOrganisations();
	ScmOrganisations(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ScmOrganisations();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _ScmOrganisations_H_ */
