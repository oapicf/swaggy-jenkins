#ifndef _BaseManager_H_
#define _BaseManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultCrumbIssuer.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Base Base
 * \ingroup Operations
 *  @{
 */
class BaseManager {
public:
	BaseManager();
	virtual ~BaseManager();

/*! \brief . *Synchronous*
 *
 * Retrieve CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getCrumbSync(char * accessToken,
	
	void(* handler)(DefaultCrumbIssuer, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getCrumbAsync(char * accessToken,
	
	void(* handler)(DefaultCrumbIssuer, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost";
	}
};
/** @}*/

}
}
#endif /* BaseManager_H_ */
