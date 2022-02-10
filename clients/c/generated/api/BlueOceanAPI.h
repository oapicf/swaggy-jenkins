#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/UNKNOWN_BASE_TYPE.h"
#include "../model/branch_impl.h"
#include "../model/favorite_impl.h"
#include "../model/github_organization.h"
#include "../model/github_scm.h"
#include "../model/multibranch_pipeline.h"
#include "../model/object.h"
#include "../model/organisation.h"
#include "../model/pipeline.h"
#include "../model/pipeline_activity.h"
#include "../model/pipeline_folder_impl.h"
#include "../model/pipeline_impl.h"
#include "../model/pipeline_run.h"
#include "../model/pipeline_run_node.h"
#include "../model/pipeline_step_impl.h"
#include "../model/queue_item_impl.h"
#include "../model/user.h"


// Delete queue item from an organization pipeline queue
//
void
BlueOceanAPI_deletePipelineQueueItem(apiClient_t *apiClient, char * organization , char * pipeline , char * queue );


// Retrieve authenticated user details for an organization
//
user_t*
BlueOceanAPI_getAuthenticatedUser(apiClient_t *apiClient, char * organization );


// Get a list of class names supported by a given class
//
char*
BlueOceanAPI_getClasses(apiClient_t *apiClient, char * _class );


// Retrieve JSON Web Key
//
char*
BlueOceanAPI_getJsonWebKey(apiClient_t *apiClient, int key );


// Retrieve JSON Web Token
//
char*
BlueOceanAPI_getJsonWebToken(apiClient_t *apiClient, int expiryTimeInMins , int maxExpiryTimeInMins );


// Retrieve organization details
//
organisation_t*
BlueOceanAPI_getOrganisation(apiClient_t *apiClient, char * organization );


// Retrieve all organizations details
//
list_t*
BlueOceanAPI_getOrganisations(apiClient_t *apiClient);


// Retrieve pipeline details for an organization
//
pipeline_t*
BlueOceanAPI_getPipeline(apiClient_t *apiClient, char * organization , char * pipeline );


// Retrieve all activities details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineActivities(apiClient_t *apiClient, char * organization , char * pipeline );


// Retrieve branch details for an organization pipeline
//
branch_impl_t*
BlueOceanAPI_getPipelineBranch(apiClient_t *apiClient, char * organization , char * pipeline , char * branch );


// Retrieve branch run details for an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_getPipelineBranchRun(apiClient_t *apiClient, char * organization , char * pipeline , char * branch , char * run );


// Retrieve all branches details for an organization pipeline
//
multibranch_pipeline_t*
BlueOceanAPI_getPipelineBranches(apiClient_t *apiClient, char * organization , char * pipeline );


// Retrieve pipeline folder for an organization
//
pipeline_folder_impl_t*
BlueOceanAPI_getPipelineFolder(apiClient_t *apiClient, char * organization , char * folder );


// Retrieve pipeline details for an organization folder
//
pipeline_impl_t*
BlueOceanAPI_getPipelineFolderPipeline(apiClient_t *apiClient, char * organization , char * pipeline , char * folder );


// Retrieve queue details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineQueue(apiClient_t *apiClient, char * organization , char * pipeline );


// Retrieve run details for an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_getPipelineRun(apiClient_t *apiClient, char * organization , char * pipeline , char * run );


// Get log for a pipeline run
//
char*
BlueOceanAPI_getPipelineRunLog(apiClient_t *apiClient, char * organization , char * pipeline , char * run , int start , int download );


// Retrieve run node details for an organization pipeline
//
pipeline_run_node_t*
BlueOceanAPI_getPipelineRunNode(apiClient_t *apiClient, char * organization , char * pipeline , char * run , char * node );


// Retrieve run node details for an organization pipeline
//
pipeline_step_impl_t*
BlueOceanAPI_getPipelineRunNodeStep(apiClient_t *apiClient, char * organization , char * pipeline , char * run , char * node , char * step );


// Get log for a pipeline run node step
//
char*
BlueOceanAPI_getPipelineRunNodeStepLog(apiClient_t *apiClient, char * organization , char * pipeline , char * run , char * node , char * step );


// Retrieve run node steps details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRunNodeSteps(apiClient_t *apiClient, char * organization , char * pipeline , char * run , char * node );


// Retrieve run nodes details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRunNodes(apiClient_t *apiClient, char * organization , char * pipeline , char * run );


// Retrieve all runs details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRuns(apiClient_t *apiClient, char * organization , char * pipeline );


// Retrieve all pipelines details for an organization
//
list_t*
BlueOceanAPI_getPipelines(apiClient_t *apiClient, char * organization );


// Retrieve SCM details for an organization
//
github_scm_t*
BlueOceanAPI_getSCM(apiClient_t *apiClient, char * organization , char * scm );


// Retrieve SCM organization repositories details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisationRepositories(apiClient_t *apiClient, char * organization , char * scm , char * scmOrganisation , char * credentialId , int pageSize , int pageNumber );


// Retrieve SCM organization repository details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisationRepository(apiClient_t *apiClient, char * organization , char * scm , char * scmOrganisation , char * repository , char * credentialId );


// Retrieve SCM organizations details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisations(apiClient_t *apiClient, char * organization , char * scm , char * credentialId );


// Retrieve user details for an organization
//
user_t*
BlueOceanAPI_getUser(apiClient_t *apiClient, char * organization , char * user );


// Retrieve user favorites details for an organization
//
list_t*
BlueOceanAPI_getUserFavorites(apiClient_t *apiClient, char * user );


// Retrieve users details for an organization
//
user_t*
BlueOceanAPI_getUsers(apiClient_t *apiClient, char * organization );


// Replay an organization pipeline run
//
queue_item_impl_t*
BlueOceanAPI_postPipelineRun(apiClient_t *apiClient, char * organization , char * pipeline , char * run );


// Start a build for an organization pipeline
//
queue_item_impl_t*
BlueOceanAPI_postPipelineRuns(apiClient_t *apiClient, char * organization , char * pipeline );


// Favorite/unfavorite a pipeline
//
favorite_impl_t*
BlueOceanAPI_putPipelineFavorite(apiClient_t *apiClient, char * organization , char * pipeline ,  UNKNOWN_BASE_TYPE );


// Stop a build of an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_putPipelineRun(apiClient_t *apiClient, char * organization , char * pipeline , char * run , char * blocking , int timeOutInSecs );


// Search for any resource details
//
char*
BlueOceanAPI_search(apiClient_t *apiClient, char * q );


// Get classes details
//
char*
BlueOceanAPI_searchClasses(apiClient_t *apiClient, char * q );


