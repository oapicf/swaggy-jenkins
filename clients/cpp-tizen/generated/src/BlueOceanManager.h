#ifndef _BlueOceanManager_H_
#define _BlueOceanManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Body.h"
#include "BranchImpl.h"
#include "FavoriteImpl.h"
#include "GithubScm.h"
#include "MultibranchPipeline.h"
#include "Organisation.h"
#include "Organisations.h"
#include "Pipeline.h"
#include "PipelineActivities.h"
#include "PipelineFolderImpl.h"
#include "PipelineImpl.h"
#include "PipelineQueue.h"
#include "PipelineRun.h"
#include "PipelineRunNode.h"
#include "PipelineRunNodeSteps.h"
#include "PipelineRunNodes.h"
#include "PipelineRuns.h"
#include "PipelineStepImpl.h"
#include "Pipelines.h"
#include "QueueItemImpl.h"
#include "ScmOrganisations.h"
#include "User.h"
#include "UserFavorites.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup BlueOcean BlueOcean
 * \ingroup Operations
 *  @{
 */
class BlueOceanManager {
public:
	BlueOceanManager();
	virtual ~BlueOceanManager();

/*! \brief . *Synchronous*
 *
 * Delete queue item from an organization pipeline queue
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param queue Name of the queue item *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deletePipelineQueueItemSync(char * accessToken,
	std::string organization, std::string pipeline, std::string queue, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * Delete queue item from an organization pipeline queue
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param queue Name of the queue item *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deletePipelineQueueItemAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string queue, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve authenticated user details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAuthenticatedUserSync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve authenticated user details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAuthenticatedUserAsync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get a list of class names supported by a given class
 * \param _class Name of the class *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getClassesSync(char * accessToken,
	std::string _class, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get a list of class names supported by a given class
 * \param _class Name of the class *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getClassesAsync(char * accessToken,
	std::string _class, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve JSON Web Key
 * \param key Key ID received as part of JWT header field kid *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJsonWebKeySync(char * accessToken,
	int key, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve JSON Web Key
 * \param key Key ID received as part of JWT header field kid *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJsonWebKeyAsync(char * accessToken,
	int key, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve JSON Web Token
 * \param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
 * \param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJsonWebTokenSync(char * accessToken,
	int expiryTimeInMins, int maxExpiryTimeInMins, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve JSON Web Token
 * \param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
 * \param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJsonWebTokenAsync(char * accessToken,
	int expiryTimeInMins, int maxExpiryTimeInMins, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve organization details
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getOrganisationSync(char * accessToken,
	std::string organization, 
	void(* handler)(Organisation, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve organization details
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getOrganisationAsync(char * accessToken,
	std::string organization, 
	void(* handler)(Organisation, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve all organizations details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getOrganisationsSync(char * accessToken,
	
	void(* handler)(Organisations, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve all organizations details
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getOrganisationsAsync(char * accessToken,
	
	void(* handler)(Organisations, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve pipeline details for an organization
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(Pipeline, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve pipeline details for an organization
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(Pipeline, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve all activities details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineActivitiesSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineActivities, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve all activities details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineActivitiesAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineActivities, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve branch details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param branch Name of the branch *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchSync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, 
	void(* handler)(BranchImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve branch details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param branch Name of the branch *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, 
	void(* handler)(BranchImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve branch run details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param branch Name of the branch *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve branch run details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param branch Name of the branch *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve all branches details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchesSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(MultibranchPipeline, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve all branches details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineBranchesAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(MultibranchPipeline, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve pipeline folder for an organization
 * \param organization Name of the organization *Required*
 * \param folder Name of the folder *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineFolderSync(char * accessToken,
	std::string organization, std::string folder, 
	void(* handler)(PipelineFolderImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve pipeline folder for an organization
 * \param organization Name of the organization *Required*
 * \param folder Name of the folder *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineFolderAsync(char * accessToken,
	std::string organization, std::string folder, 
	void(* handler)(PipelineFolderImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve pipeline details for an organization folder
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param folder Name of the folder *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineFolderPipelineSync(char * accessToken,
	std::string organization, std::string pipeline, std::string folder, 
	void(* handler)(PipelineImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve pipeline details for an organization folder
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param folder Name of the folder *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineFolderPipelineAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string folder, 
	void(* handler)(PipelineImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve queue details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineQueueSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineQueue, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve queue details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineQueueAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineQueue, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve run details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve run details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get log for a pipeline run
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param start Start position of the log
 * \param download Set to true in order to download the file, otherwise it's passed as a response body
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunLogSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, int start, bool download, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get log for a pipeline run
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param start Start position of the log
 * \param download Set to true in order to download the file, otherwise it's passed as a response body
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunLogAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, int start, bool download, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve run node details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNode, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve run node details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNode, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve run node details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param step Name of the step *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(PipelineStepImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve run node details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param step Name of the step *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(PipelineStepImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get log for a pipeline run node step
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param step Name of the step *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepLogSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get log for a pipeline run node step
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param step Name of the step *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepLogAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve run node steps details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepsSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve run node steps details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param node Name of the node *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodeStepsAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve run nodes details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodesSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRunNodes, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve run nodes details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunNodesAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRunNodes, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve all runs details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunsSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineRuns, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve all runs details for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelineRunsAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineRuns, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve all pipelines details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelinesSync(char * accessToken,
	std::string organization, 
	void(* handler)(Pipelines, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve all pipelines details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getPipelinesAsync(char * accessToken,
	std::string organization, 
	void(* handler)(Pipelines, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve SCM details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMSync(char * accessToken,
	std::string organization, std::string scm, 
	void(* handler)(GithubScm, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve SCM details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMAsync(char * accessToken,
	std::string organization, std::string scm, 
	void(* handler)(GithubScm, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve SCM organization repositories details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param scmOrganisation Name of the SCM organization *Required*
 * \param credentialId Credential ID
 * \param pageSize Number of items in a page
 * \param pageNumber Page number
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationRepositoriesSync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string credentialId, int pageSize, int pageNumber, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve SCM organization repositories details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param scmOrganisation Name of the SCM organization *Required*
 * \param credentialId Credential ID
 * \param pageSize Number of items in a page
 * \param pageNumber Page number
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationRepositoriesAsync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string credentialId, int pageSize, int pageNumber, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve SCM organization repository details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param scmOrganisation Name of the SCM organization *Required*
 * \param repository Name of the SCM repository *Required*
 * \param credentialId Credential ID
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationRepositorySync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string repository, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve SCM organization repository details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param scmOrganisation Name of the SCM organization *Required*
 * \param repository Name of the SCM repository *Required*
 * \param credentialId Credential ID
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationRepositoryAsync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string repository, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve SCM organizations details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param credentialId Credential ID
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationsSync(char * accessToken,
	std::string organization, std::string scm, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve SCM organizations details for an organization
 * \param organization Name of the organization *Required*
 * \param scm Name of SCM *Required*
 * \param credentialId Credential ID
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getSCMOrganisationsAsync(char * accessToken,
	std::string organization, std::string scm, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve user details for an organization
 * \param organization Name of the organization *Required*
 * \param user Name of the user *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserSync(char * accessToken,
	std::string organization, std::string user, 
	void(* handler)(User, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve user details for an organization
 * \param organization Name of the organization *Required*
 * \param user Name of the user *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserAsync(char * accessToken,
	std::string organization, std::string user, 
	void(* handler)(User, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve user favorites details for an organization
 * \param user Name of the user *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserFavoritesSync(char * accessToken,
	std::string user, 
	void(* handler)(UserFavorites, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve user favorites details for an organization
 * \param user Name of the user *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUserFavoritesAsync(char * accessToken,
	std::string user, 
	void(* handler)(UserFavorites, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Retrieve users details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUsersSync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Retrieve users details for an organization
 * \param organization Name of the organization *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getUsersAsync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Replay an organization pipeline run
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Replay an organization pipeline run
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Start a build for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postPipelineRunsSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Start a build for an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool postPipelineRunsAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Favorite/unfavorite a pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param body Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putPipelineFavoriteSync(char * accessToken,
	std::string organization, std::string pipeline, Body body, 
	void(* handler)(FavoriteImpl, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Favorite/unfavorite a pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param body Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putPipelineFavoriteAsync(char * accessToken,
	std::string organization, std::string pipeline, Body body, 
	void(* handler)(FavoriteImpl, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Stop a build of an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param blocking Set to true to make blocking stop, default: false
 * \param timeOutInSecs Timeout in seconds, default: 10 seconds
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string blocking, int timeOutInSecs, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Stop a build of an organization pipeline
 * \param organization Name of the organization *Required*
 * \param pipeline Name of the pipeline *Required*
 * \param run Name of the run *Required*
 * \param blocking Set to true to make blocking stop, default: false
 * \param timeOutInSecs Timeout in seconds, default: 10 seconds
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool putPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string blocking, int timeOutInSecs, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Search for any resource details
 * \param q Query string *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool searchSync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Search for any resource details
 * \param q Query string *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool searchAsync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get classes details
 * \param q Query string containing an array of class names *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool searchClassesSync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get classes details
 * \param q Query string containing an array of class names *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool searchClassesAsync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost";
	}
};
/** @}*/

}
}
#endif /* BlueOceanManager_H_ */
