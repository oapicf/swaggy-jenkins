#ifndef _RemoteAccessManager_H_
#define _RemoteAccessManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "ComputerSet.h"
#include "DefaultCrumbIssuer.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProject.h"
#include "Hudson.h"
#include "ListView.h"
#include "Queue.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup RemoteAccess RemoteAccess
 * \ingroup Operations
 *  @{
 */
class RemoteAccessManager {
public:
	RemoteAccessManager();
	virtual ~RemoteAccessManager();

/*! \brief . *Synchronous*
 *
 * Retrieve computer details
 * \param depth Recursion depth in response model *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getComputerSync(char * accessToken,
	int depth, 
	void(* handler)(ComputerSet, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve computer details
 * \param depth Recursion depth in response model *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getComputerAsync(char * accessToken,
	int depth, 
	void(* handler)(ComputerSet, Error, void* )
	, void* userData);


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


/*! \brief . *Synchronous*
 *
 * Retrieve Jenkins details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJenkinsSync(char * accessToken,
	
	void(* handler)(Hudson, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve Jenkins details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJenkinsAsync(char * accessToken,
	
	void(* handler)(Hudson, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve job details
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobSync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleProject, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve job details
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobAsync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleProject, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve job configuration
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobConfigSync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve job configuration
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobConfigAsync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve job's last build details
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobLastBuildSync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleBuild, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve job's last build details
 * \param name Name of the job *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobLastBuildAsync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleBuild, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve job's build progressive text output
 * \param name Name of the job *Required*
 * \param number Build number *Required*
 * \param start Starting point of progressive text output *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobProgressiveTextSync(char * accessToken,
	std::string name, std::string number, std::string start, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve job's build progressive text output
 * \param name Name of the job *Required*
 * \param number Build number *Required*
 * \param start Starting point of progressive text output *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobProgressiveTextAsync(char * accessToken,
	std::string name, std::string number, std::string start, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve queue details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getQueueSync(char * accessToken,
	
	void(* handler)(Queue, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve queue details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getQueueAsync(char * accessToken,
	
	void(* handler)(Queue, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve queued item details
 * \param number Queue number *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getQueueItemSync(char * accessToken,
	std::string number, 
	void(* handler)(Queue, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve queued item details
 * \param number Queue number *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getQueueItemAsync(char * accessToken,
	std::string number, 
	void(* handler)(Queue, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve view details
 * \param name Name of the view *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getViewSync(char * accessToken,
	std::string name, 
	void(* handler)(ListView, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve view details
 * \param name Name of the view *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getViewAsync(char * accessToken,
	std::string name, 
	void(* handler)(ListView, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve view configuration
 * \param name Name of the view *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getViewConfigSync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve view configuration
 * \param name Name of the view *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getViewConfigAsync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve Jenkins headers
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool headJenkinsSync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve Jenkins headers
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool headJenkinsAsync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Create a new job using job configuration, or copied from an existing job
 * \param name Name of the new job *Required*
 * \param from Existing job to copy from
 * \param mode Set to 'copy' for copying an existing job
 * \param jenkinsCrumb CSRF protection token
 * \param contentType Content type header application/xml
 * \param body Job configuration in config.xml format
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postCreateItemSync(char * accessToken,
	std::string name, std::string from, std::string mode, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Create a new job using job configuration, or copied from an existing job
 * \param name Name of the new job *Required*
 * \param from Existing job to copy from
 * \param mode Set to 'copy' for copying an existing job
 * \param jenkinsCrumb CSRF protection token
 * \param contentType Content type header application/xml
 * \param body Job configuration in config.xml format
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postCreateItemAsync(char * accessToken,
	std::string name, std::string from, std::string mode, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Create a new view using view configuration
 * \param name Name of the new view *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param contentType Content type header application/xml
 * \param body View configuration in config.xml format
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postCreateViewSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Create a new view using view configuration
 * \param name Name of the new view *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param contentType Content type header application/xml
 * \param body View configuration in config.xml format
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postCreateViewAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Build a job
 * \param name Name of the job *Required*
 * \param json  *Required*
 * \param token 
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobBuildSync(char * accessToken,
	std::string name, std::string json, std::string token, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Build a job
 * \param name Name of the job *Required*
 * \param json  *Required*
 * \param token 
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobBuildAsync(char * accessToken,
	std::string name, std::string json, std::string token, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Update job configuration
 * \param name Name of the job *Required*
 * \param body Job configuration in config.xml format *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobConfigSync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Update job configuration
 * \param name Name of the job *Required*
 * \param body Job configuration in config.xml format *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobConfigAsync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Delete a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobDeleteSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Delete a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobDeleteAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Disable a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobDisableSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Disable a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobDisableAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Enable a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobEnableSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Enable a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobEnableAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Stop a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobLastBuildStopSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Stop a job
 * \param name Name of the job *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postJobLastBuildStopAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Update view configuration
 * \param name Name of the view *Required*
 * \param body View configuration in config.xml format *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postViewConfigSync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Update view configuration
 * \param name Name of the view *Required*
 * \param body View configuration in config.xml format *Required*
 * \param jenkinsCrumb CSRF protection token
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postViewConfigAsync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "http://localhost";
	}
};
/** @}*/

}
}
#endif /* RemoteAccessManager_H_ */
