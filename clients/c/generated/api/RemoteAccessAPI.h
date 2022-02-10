#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/computer_set.h"
#include "../model/free_style_build.h"
#include "../model/free_style_project.h"
#include "../model/hudson.h"
#include "../model/list_view.h"
#include "../model/queue.h"


// Retrieve computer details
//
computer_set_t*
RemoteAccessAPI_getComputer(apiClient_t *apiClient, int depth );


// Retrieve Jenkins details
//
hudson_t*
RemoteAccessAPI_getJenkins(apiClient_t *apiClient);


// Retrieve job details
//
free_style_project_t*
RemoteAccessAPI_getJob(apiClient_t *apiClient, char * name );


// Retrieve job configuration
//
char*
RemoteAccessAPI_getJobConfig(apiClient_t *apiClient, char * name );


// Retrieve job's last build details
//
free_style_build_t*
RemoteAccessAPI_getJobLastBuild(apiClient_t *apiClient, char * name );


// Retrieve job's build progressive text output
//
void
RemoteAccessAPI_getJobProgressiveText(apiClient_t *apiClient, char * name , char * number , char * start );


// Retrieve queue details
//
queue_t*
RemoteAccessAPI_getQueue(apiClient_t *apiClient);


// Retrieve queued item details
//
queue_t*
RemoteAccessAPI_getQueueItem(apiClient_t *apiClient, char * number );


// Retrieve view details
//
list_view_t*
RemoteAccessAPI_getView(apiClient_t *apiClient, char * name );


// Retrieve view configuration
//
char*
RemoteAccessAPI_getViewConfig(apiClient_t *apiClient, char * name );


// Retrieve Jenkins headers
//
void
RemoteAccessAPI_headJenkins(apiClient_t *apiClient);


// Create a new job using job configuration, or copied from an existing job
//
void
RemoteAccessAPI_postCreateItem(apiClient_t *apiClient, char * name , char * from , char * mode , char * Jenkins_Crumb , char * Content_Type , char * body );


// Create a new view using view configuration
//
void
RemoteAccessAPI_postCreateView(apiClient_t *apiClient, char * name , char * Jenkins_Crumb , char * Content_Type , char * body );


// Build a job
//
void
RemoteAccessAPI_postJobBuild(apiClient_t *apiClient, char * name , char * json , char * token , char * Jenkins_Crumb );


// Update job configuration
//
void
RemoteAccessAPI_postJobConfig(apiClient_t *apiClient, char * name , char * body , char * Jenkins_Crumb );


// Delete a job
//
void
RemoteAccessAPI_postJobDelete(apiClient_t *apiClient, char * name , char * Jenkins_Crumb );


// Disable a job
//
void
RemoteAccessAPI_postJobDisable(apiClient_t *apiClient, char * name , char * Jenkins_Crumb );


// Enable a job
//
void
RemoteAccessAPI_postJobEnable(apiClient_t *apiClient, char * name , char * Jenkins_Crumb );


// Stop a job
//
void
RemoteAccessAPI_postJobLastBuildStop(apiClient_t *apiClient, char * name , char * Jenkins_Crumb );


// Update view configuration
//
void
RemoteAccessAPI_postViewConfig(apiClient_t *apiClient, char * name , char * body , char * Jenkins_Crumb );


