#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "BlueOceanAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Delete queue item from an organization pipeline queue
//
void
BlueOceanAPI_deletePipelineQueueItem(apiClient_t *apiClient, char *organization, char *pipeline, char *queue)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!queue)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(queue)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(queue)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_queue = strlen(organization)+3 + strlen(pipeline)+3 + strlen(queue)+3 + sizeof("{ queue }") - 1;
    if(queue == NULL) {
        goto end;
    }
    char* localVarToReplace_queue = malloc(sizeOfPathParams_queue);
    sprintf(localVarToReplace_queue, "{%s}", "queue");

    localVarPath = strReplace(localVarPath, localVarToReplace_queue, queue);


    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully deleted queue item");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_queue);

}

// Retrieve authenticated user details for an organization
//
user_t*
BlueOceanAPI_getAuthenticatedUser(apiClient_t *apiClient, char *organization)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/user/");

    if(!organization)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved authenticated user details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    user_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get a list of class names supported by a given class
//
char*
BlueOceanAPI_getClasses(apiClient_t *apiClient, char *_class)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/classes/{class}");

    if(!_class)
        goto end;


    // Path Params
    long sizeOfPathParams__class = strlen(_class)+3 + sizeof("{ class }") - 1;
    if(_class == NULL) {
        goto end;
    }
    char* localVarToReplace__class = malloc(sizeOfPathParams__class);
    sprintf(localVarToReplace__class, "{%s}", "class");

    localVarPath = strReplace(localVarPath, localVarToReplace__class, _class);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved class names");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace__class);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve JSON Web Key
//
char*
BlueOceanAPI_getJsonWebKey(apiClient_t *apiClient, int *key)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/jwt-auth/jwks/{key}");



    // Path Params
    long sizeOfPathParams_key =  + sizeof("{ key }") - 1;
    if(key == 0){
        goto end;
    }
    char* localVarToReplace_key = malloc(sizeOfPathParams_key);
    snprintf(localVarToReplace_key, sizeOfPathParams_key, "{%s}", "key");

    char localVarBuff_key[256];
    snprintf(localVarBuff_key, sizeof localVarBuff_key, "%ld", (long)*key);

    localVarPath = strReplace(localVarPath, localVarToReplace_key, localVarBuff_key);



    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved JWT token");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_key);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve JSON Web Token
//
char*
BlueOceanAPI_getJsonWebToken(apiClient_t *apiClient, int *expiryTimeInMins, int *maxExpiryTimeInMins)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/jwt-auth/token");





    // query parameters
    char *keyQuery_expiryTimeInMins = NULL;
    char * valueQuery_expiryTimeInMins = NULL;
    keyValuePair_t *keyPairQuery_expiryTimeInMins = 0;
    if (expiryTimeInMins)
    {
        keyQuery_expiryTimeInMins = strdup("expiryTimeInMins");
        valueQuery_expiryTimeInMins = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_expiryTimeInMins, MAX_NUMBER_LENGTH, "%d", *expiryTimeInMins);
        keyPairQuery_expiryTimeInMins = keyValuePair_create(keyQuery_expiryTimeInMins, valueQuery_expiryTimeInMins);
        list_addElement(localVarQueryParameters,keyPairQuery_expiryTimeInMins);
    }

    // query parameters
    char *keyQuery_maxExpiryTimeInMins = NULL;
    char * valueQuery_maxExpiryTimeInMins = NULL;
    keyValuePair_t *keyPairQuery_maxExpiryTimeInMins = 0;
    if (maxExpiryTimeInMins)
    {
        keyQuery_maxExpiryTimeInMins = strdup("maxExpiryTimeInMins");
        valueQuery_maxExpiryTimeInMins = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxExpiryTimeInMins, MAX_NUMBER_LENGTH, "%d", *maxExpiryTimeInMins);
        keyPairQuery_maxExpiryTimeInMins = keyValuePair_create(keyQuery_maxExpiryTimeInMins, valueQuery_maxExpiryTimeInMins);
        list_addElement(localVarQueryParameters,keyPairQuery_maxExpiryTimeInMins);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved JWT token");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_expiryTimeInMins){
        free(keyQuery_expiryTimeInMins);
        keyQuery_expiryTimeInMins = NULL;
    }
    if(valueQuery_expiryTimeInMins){
        free(valueQuery_expiryTimeInMins);
        valueQuery_expiryTimeInMins = NULL;
    }
    if(keyPairQuery_expiryTimeInMins){
        keyValuePair_free(keyPairQuery_expiryTimeInMins);
        keyPairQuery_expiryTimeInMins = NULL;
    }
    if(keyQuery_maxExpiryTimeInMins){
        free(keyQuery_maxExpiryTimeInMins);
        keyQuery_maxExpiryTimeInMins = NULL;
    }
    if(valueQuery_maxExpiryTimeInMins){
        free(valueQuery_maxExpiryTimeInMins);
        valueQuery_maxExpiryTimeInMins = NULL;
    }
    if(keyPairQuery_maxExpiryTimeInMins){
        keyValuePair_free(keyPairQuery_maxExpiryTimeInMins);
        keyPairQuery_maxExpiryTimeInMins = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve organization details
//
organisation_t*
BlueOceanAPI_getOrganisation(apiClient_t *apiClient, char *organization)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}");

    if(!organization)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipeline details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Pipeline cannot be found on Jenkins instance");
    //}
    //nonprimitive not container
    organisation_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = organisation_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve all organizations details
//
list_t*
BlueOceanAPI_getOrganisations(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipelines details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve pipeline details for an organization
//
pipeline_t*
BlueOceanAPI_getPipeline(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipeline details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Pipeline cannot be found on Jenkins instance");
    //}
    //nonprimitive not container
    pipeline_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve all activities details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineActivities(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved all activities details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve branch details for an organization pipeline
//
branch_impl_t*
BlueOceanAPI_getPipelineBranch(apiClient_t *apiClient, char *organization, char *pipeline, char *branch)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!branch)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_branch = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + sizeof("{ branch }") - 1;
    if(branch == NULL) {
        goto end;
    }
    char* localVarToReplace_branch = malloc(sizeOfPathParams_branch);
    sprintf(localVarToReplace_branch, "{%s}", "branch");

    localVarPath = strReplace(localVarPath, localVarToReplace_branch, branch);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved branch details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    branch_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = branch_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_branch);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve branch run details for an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_getPipelineBranchRun(apiClient_t *apiClient, char *organization, char *pipeline, char *branch, char *run)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!branch)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_branch = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + strlen(run)+3 + sizeof("{ branch }") - 1;
    if(branch == NULL) {
        goto end;
    }
    char* localVarToReplace_branch = malloc(sizeOfPathParams_branch);
    sprintf(localVarToReplace_branch, "{%s}", "branch");

    localVarPath = strReplace(localVarPath, localVarToReplace_branch, branch);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(branch)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_run_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_run_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_branch);
    free(localVarToReplace_run);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve all branches details for an organization pipeline
//
multibranch_pipeline_t*
BlueOceanAPI_getPipelineBranches(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved all branches details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    multibranch_pipeline_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = multibranch_pipeline_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve pipeline folder for an organization
//
pipeline_folder_impl_t*
BlueOceanAPI_getPipelineFolder(apiClient_t *apiClient, char *organization, char *folder)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{folder}/");

    if(!organization)
        goto end;
    if(!folder)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(folder)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_folder = strlen(organization)+3 + strlen(folder)+3 + sizeof("{ folder }") - 1;
    if(folder == NULL) {
        goto end;
    }
    char* localVarToReplace_folder = malloc(sizeOfPathParams_folder);
    sprintf(localVarToReplace_folder, "{%s}", "folder");

    localVarPath = strReplace(localVarPath, localVarToReplace_folder, folder);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved folder details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_folder_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_folder_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_folder);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve pipeline details for an organization folder
//
pipeline_impl_t*
BlueOceanAPI_getPipelineFolderPipeline(apiClient_t *apiClient, char *organization, char *pipeline, char *folder)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!folder)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(folder)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(folder)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_folder = strlen(organization)+3 + strlen(pipeline)+3 + strlen(folder)+3 + sizeof("{ folder }") - 1;
    if(folder == NULL) {
        goto end;
    }
    char* localVarToReplace_folder = malloc(sizeOfPathParams_folder);
    sprintf(localVarToReplace_folder, "{%s}", "folder");

    localVarPath = strReplace(localVarPath, localVarToReplace_folder, folder);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipeline details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_folder);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve queue details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineQueue(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved queue details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve run details for an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_getPipelineRun(apiClient_t *apiClient, char *organization, char *pipeline, char *run)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_run_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_run_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get log for a pipeline run
//
char*
BlueOceanAPI_getPipelineRunLog(apiClient_t *apiClient, char *organization, char *pipeline, char *run, int *start, int *download)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);



    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_download = NULL;
    char * valueQuery_download = NULL;
    keyValuePair_t *keyPairQuery_download = 0;
    if (download)
    {
        keyQuery_download = strdup("download");
        valueQuery_download = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_download, MAX_NUMBER_LENGTH, "%d", *download);
        keyPairQuery_download = keyValuePair_create(keyQuery_download, valueQuery_download);
        list_addElement(localVarQueryParameters,keyPairQuery_download);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipeline run log");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_download){
        free(keyQuery_download);
        keyQuery_download = NULL;
    }
    if(valueQuery_download){
        free(valueQuery_download);
        valueQuery_download = NULL;
    }
    if(keyPairQuery_download){
        keyValuePair_free(keyPairQuery_download);
        keyPairQuery_download = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve run node details for an organization pipeline
//
pipeline_run_node_t*
BlueOceanAPI_getPipelineRunNode(apiClient_t *apiClient, char *organization, char *pipeline, char *run, char *node)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;
    if(!node)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);

    // Path Params
    long sizeOfPathParams_node = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ node }") - 1;
    if(node == NULL) {
        goto end;
    }
    char* localVarToReplace_node = malloc(sizeOfPathParams_node);
    sprintf(localVarToReplace_node, "{%s}", "node");

    localVarPath = strReplace(localVarPath, localVarToReplace_node, node);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run node details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_run_node_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_run_node_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    free(localVarToReplace_node);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve run node details for an organization pipeline
//
pipeline_step_impl_t*
BlueOceanAPI_getPipelineRunNodeStep(apiClient_t *apiClient, char *organization, char *pipeline, char *run, char *node, char *step)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;
    if(!node)
        goto end;
    if(!step)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);

    // Path Params
    long sizeOfPathParams_node = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ node }") - 1;
    if(node == NULL) {
        goto end;
    }
    char* localVarToReplace_node = malloc(sizeOfPathParams_node);
    sprintf(localVarToReplace_node, "{%s}", "node");

    localVarPath = strReplace(localVarPath, localVarToReplace_node, node);

    // Path Params
    long sizeOfPathParams_step = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ step }") - 1;
    if(step == NULL) {
        goto end;
    }
    char* localVarToReplace_step = malloc(sizeOfPathParams_step);
    sprintf(localVarToReplace_step, "{%s}", "step");

    localVarPath = strReplace(localVarPath, localVarToReplace_step, step);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run node step details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_step_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_step_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    free(localVarToReplace_node);
    free(localVarToReplace_step);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get log for a pipeline run node step
//
char*
BlueOceanAPI_getPipelineRunNodeStepLog(apiClient_t *apiClient, char *organization, char *pipeline, char *run, char *node, char *step)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;
    if(!node)
        goto end;
    if(!step)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);

    // Path Params
    long sizeOfPathParams_node = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ node }") - 1;
    if(node == NULL) {
        goto end;
    }
    char* localVarToReplace_node = malloc(sizeOfPathParams_node);
    sprintf(localVarToReplace_node, "{%s}", "node");

    localVarPath = strReplace(localVarPath, localVarToReplace_node, node);

    // Path Params
    long sizeOfPathParams_step = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + strlen(step)+3 + sizeof("{ step }") - 1;
    if(step == NULL) {
        goto end;
    }
    char* localVarToReplace_step = malloc(sizeOfPathParams_step);
    sprintf(localVarToReplace_step, "{%s}", "step");

    localVarPath = strReplace(localVarPath, localVarToReplace_step, step);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipeline run node step log");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    free(localVarToReplace_node);
    free(localVarToReplace_step);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve run node steps details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRunNodeSteps(apiClient_t *apiClient, char *organization, char *pipeline, char *run, char *node)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;
    if(!node)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);

    // Path Params
    long sizeOfPathParams_node = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + strlen(node)+3 + sizeof("{ node }") - 1;
    if(node == NULL) {
        goto end;
    }
    char* localVarToReplace_node = malloc(sizeOfPathParams_node);
    sprintf(localVarToReplace_node, "{%s}", "node");

    localVarPath = strReplace(localVarPath, localVarToReplace_node, node);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run node steps details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    free(localVarToReplace_node);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve run nodes details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRunNodes(apiClient_t *apiClient, char *organization, char *pipeline, char *run)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved run nodes details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve all runs details for an organization pipeline
//
list_t*
BlueOceanAPI_getPipelineRuns(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved runs details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve all pipelines details for an organization
//
list_t*
BlueOceanAPI_getPipelines(apiClient_t *apiClient, char *organization)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/");

    if(!organization)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved pipelines details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve SCM details for an organization
//
github_scm_t*
BlueOceanAPI_getSCM(apiClient_t *apiClient, char *organization, char *scm)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/scm/{scm}");

    if(!organization)
        goto end;
    if(!scm)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(scm)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_scm = strlen(organization)+3 + strlen(scm)+3 + sizeof("{ scm }") - 1;
    if(scm == NULL) {
        goto end;
    }
    char* localVarToReplace_scm = malloc(sizeOfPathParams_scm);
    sprintf(localVarToReplace_scm, "{%s}", "scm");

    localVarPath = strReplace(localVarPath, localVarToReplace_scm, scm);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved SCM details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    github_scm_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = github_scm_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_scm);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve SCM organization repositories details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisationRepositories(apiClient_t *apiClient, char *organization, char *scm, char *scmOrganisation, char *credentialId, int *pageSize, int *pageNumber)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories");

    if(!organization)
        goto end;
    if(!scm)
        goto end;
    if(!scmOrganisation)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_scm = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + sizeof("{ scm }") - 1;
    if(scm == NULL) {
        goto end;
    }
    char* localVarToReplace_scm = malloc(sizeOfPathParams_scm);
    sprintf(localVarToReplace_scm, "{%s}", "scm");

    localVarPath = strReplace(localVarPath, localVarToReplace_scm, scm);

    // Path Params
    long sizeOfPathParams_scmOrganisation = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + sizeof("{ scmOrganisation }") - 1;
    if(scmOrganisation == NULL) {
        goto end;
    }
    char* localVarToReplace_scmOrganisation = malloc(sizeOfPathParams_scmOrganisation);
    sprintf(localVarToReplace_scmOrganisation, "{%s}", "scmOrganisation");

    localVarPath = strReplace(localVarPath, localVarToReplace_scmOrganisation, scmOrganisation);



    // query parameters
    char *keyQuery_credentialId = NULL;
    char * valueQuery_credentialId = NULL;
    keyValuePair_t *keyPairQuery_credentialId = 0;
    if (credentialId)
    {
        keyQuery_credentialId = strdup("credentialId");
        valueQuery_credentialId = strdup((credentialId));
        keyPairQuery_credentialId = keyValuePair_create(keyQuery_credentialId, valueQuery_credentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_credentialId);
    }

    // query parameters
    char *keyQuery_pageSize = NULL;
    char * valueQuery_pageSize = NULL;
    keyValuePair_t *keyPairQuery_pageSize = 0;
    if (pageSize)
    {
        keyQuery_pageSize = strdup("pageSize");
        valueQuery_pageSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pageSize, MAX_NUMBER_LENGTH, "%d", *pageSize);
        keyPairQuery_pageSize = keyValuePair_create(keyQuery_pageSize, valueQuery_pageSize);
        list_addElement(localVarQueryParameters,keyPairQuery_pageSize);
    }

    // query parameters
    char *keyQuery_pageNumber = NULL;
    char * valueQuery_pageNumber = NULL;
    keyValuePair_t *keyPairQuery_pageNumber = 0;
    if (pageNumber)
    {
        keyQuery_pageNumber = strdup("pageNumber");
        valueQuery_pageNumber = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pageNumber, MAX_NUMBER_LENGTH, "%d", *pageNumber);
        keyPairQuery_pageNumber = keyValuePair_create(keyQuery_pageNumber, valueQuery_pageNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_pageNumber);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved SCM organization repositories details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_scm);
    free(localVarToReplace_scmOrganisation);
    if(keyQuery_credentialId){
        free(keyQuery_credentialId);
        keyQuery_credentialId = NULL;
    }
    if(valueQuery_credentialId){
        free(valueQuery_credentialId);
        valueQuery_credentialId = NULL;
    }
    if(keyPairQuery_credentialId){
        keyValuePair_free(keyPairQuery_credentialId);
        keyPairQuery_credentialId = NULL;
    }
    if(keyQuery_pageSize){
        free(keyQuery_pageSize);
        keyQuery_pageSize = NULL;
    }
    if(valueQuery_pageSize){
        free(valueQuery_pageSize);
        valueQuery_pageSize = NULL;
    }
    if(keyPairQuery_pageSize){
        keyValuePair_free(keyPairQuery_pageSize);
        keyPairQuery_pageSize = NULL;
    }
    if(keyQuery_pageNumber){
        free(keyQuery_pageNumber);
        keyQuery_pageNumber = NULL;
    }
    if(valueQuery_pageNumber){
        free(valueQuery_pageNumber);
        valueQuery_pageNumber = NULL;
    }
    if(keyPairQuery_pageNumber){
        keyValuePair_free(keyPairQuery_pageNumber);
        keyPairQuery_pageNumber = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve SCM organization repository details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisationRepository(apiClient_t *apiClient, char *organization, char *scm, char *scmOrganisation, char *repository, char *credentialId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}");

    if(!organization)
        goto end;
    if(!scm)
        goto end;
    if(!scmOrganisation)
        goto end;
    if(!repository)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + strlen(repository)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_scm = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + strlen(repository)+3 + sizeof("{ scm }") - 1;
    if(scm == NULL) {
        goto end;
    }
    char* localVarToReplace_scm = malloc(sizeOfPathParams_scm);
    sprintf(localVarToReplace_scm, "{%s}", "scm");

    localVarPath = strReplace(localVarPath, localVarToReplace_scm, scm);

    // Path Params
    long sizeOfPathParams_scmOrganisation = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + strlen(repository)+3 + sizeof("{ scmOrganisation }") - 1;
    if(scmOrganisation == NULL) {
        goto end;
    }
    char* localVarToReplace_scmOrganisation = malloc(sizeOfPathParams_scmOrganisation);
    sprintf(localVarToReplace_scmOrganisation, "{%s}", "scmOrganisation");

    localVarPath = strReplace(localVarPath, localVarToReplace_scmOrganisation, scmOrganisation);

    // Path Params
    long sizeOfPathParams_repository = strlen(organization)+3 + strlen(scm)+3 + strlen(scmOrganisation)+3 + strlen(repository)+3 + sizeof("{ repository }") - 1;
    if(repository == NULL) {
        goto end;
    }
    char* localVarToReplace_repository = malloc(sizeOfPathParams_repository);
    sprintf(localVarToReplace_repository, "{%s}", "repository");

    localVarPath = strReplace(localVarPath, localVarToReplace_repository, repository);



    // query parameters
    char *keyQuery_credentialId = NULL;
    char * valueQuery_credentialId = NULL;
    keyValuePair_t *keyPairQuery_credentialId = 0;
    if (credentialId)
    {
        keyQuery_credentialId = strdup("credentialId");
        valueQuery_credentialId = strdup((credentialId));
        keyPairQuery_credentialId = keyValuePair_create(keyQuery_credentialId, valueQuery_credentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_credentialId);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved SCM organizations details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_scm);
    free(localVarToReplace_scmOrganisation);
    free(localVarToReplace_repository);
    if(keyQuery_credentialId){
        free(keyQuery_credentialId);
        keyQuery_credentialId = NULL;
    }
    if(valueQuery_credentialId){
        free(valueQuery_credentialId);
        valueQuery_credentialId = NULL;
    }
    if(keyPairQuery_credentialId){
        keyValuePair_free(keyPairQuery_credentialId);
        keyPairQuery_credentialId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve SCM organizations details for an organization
//
list_t*
BlueOceanAPI_getSCMOrganisations(apiClient_t *apiClient, char *organization, char *scm, char *credentialId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/scm/{scm}/organizations");

    if(!organization)
        goto end;
    if(!scm)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(scm)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_scm = strlen(organization)+3 + strlen(scm)+3 + sizeof("{ scm }") - 1;
    if(scm == NULL) {
        goto end;
    }
    char* localVarToReplace_scm = malloc(sizeOfPathParams_scm);
    sprintf(localVarToReplace_scm, "{%s}", "scm");

    localVarPath = strReplace(localVarPath, localVarToReplace_scm, scm);



    // query parameters
    char *keyQuery_credentialId = NULL;
    char * valueQuery_credentialId = NULL;
    keyValuePair_t *keyPairQuery_credentialId = 0;
    if (credentialId)
    {
        keyQuery_credentialId = strdup("credentialId");
        valueQuery_credentialId = strdup((credentialId));
        keyPairQuery_credentialId = keyValuePair_create(keyQuery_credentialId, valueQuery_credentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_credentialId);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved SCM organizations details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_scm);
    if(keyQuery_credentialId){
        free(keyQuery_credentialId);
        keyQuery_credentialId = NULL;
    }
    if(valueQuery_credentialId){
        free(valueQuery_credentialId);
        valueQuery_credentialId = NULL;
    }
    if(keyPairQuery_credentialId){
        keyValuePair_free(keyPairQuery_credentialId);
        keyPairQuery_credentialId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve user details for an organization
//
user_t*
BlueOceanAPI_getUser(apiClient_t *apiClient, char *organization, char *user)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/users/{user}");

    if(!organization)
        goto end;
    if(!user)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(user)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_user = strlen(organization)+3 + strlen(user)+3 + sizeof("{ user }") - 1;
    if(user == NULL) {
        goto end;
    }
    char* localVarToReplace_user = malloc(sizeOfPathParams_user);
    sprintf(localVarToReplace_user, "{%s}", "user");

    localVarPath = strReplace(localVarPath, localVarToReplace_user, user);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved users details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    user_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_user);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve user favorites details for an organization
//
list_t*
BlueOceanAPI_getUserFavorites(apiClient_t *apiClient, char *user)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/users/{user}/favorites");

    if(!user)
        goto end;


    // Path Params
    long sizeOfPathParams_user = strlen(user)+3 + sizeof("{ user }") - 1;
    if(user == NULL) {
        goto end;
    }
    char* localVarToReplace_user = malloc(sizeOfPathParams_user);
    sprintf(localVarToReplace_user, "{%s}", "user");

    localVarPath = strReplace(localVarPath, localVarToReplace_user, user);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved users favorites details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(BlueOceanAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, BlueOceanAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( BlueOceanAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_user);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve users details for an organization
//
user_t*
BlueOceanAPI_getUsers(apiClient_t *apiClient, char *organization)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/users/");

    if(!organization)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved users details");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    user_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Replay an organization pipeline run
//
queue_item_impl_t*
BlueOceanAPI_postPipelineRun(apiClient_t *apiClient, char *organization, char *pipeline, char *run)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully replayed a pipeline run");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    queue_item_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_item_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Start a build for an organization pipeline
//
queue_item_impl_t*
BlueOceanAPI_postPipelineRuns(apiClient_t *apiClient, char *organization, char *pipeline)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully started a build");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    queue_item_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_item_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Favorite/unfavorite a pipeline
//
favorite_impl_t*
BlueOceanAPI_putPipelineFavorite(apiClient_t *apiClient, char *organization, char *pipeline, int *body)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);



    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = int_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "PUT");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully favorited/unfavorited a pipeline");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    favorite_impl_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = favorite_impl_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Stop a build of an organization pipeline
//
pipeline_run_t*
BlueOceanAPI_putPipelineRun(apiClient_t *apiClient, char *organization, char *pipeline, char *run, char *blocking, int *timeOutInSecs)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop");

    if(!organization)
        goto end;
    if(!pipeline)
        goto end;
    if(!run)
        goto end;


    // Path Params
    long sizeOfPathParams_organization = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ organization }") - 1;
    if(organization == NULL) {
        goto end;
    }
    char* localVarToReplace_organization = malloc(sizeOfPathParams_organization);
    sprintf(localVarToReplace_organization, "{%s}", "organization");

    localVarPath = strReplace(localVarPath, localVarToReplace_organization, organization);

    // Path Params
    long sizeOfPathParams_pipeline = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ pipeline }") - 1;
    if(pipeline == NULL) {
        goto end;
    }
    char* localVarToReplace_pipeline = malloc(sizeOfPathParams_pipeline);
    sprintf(localVarToReplace_pipeline, "{%s}", "pipeline");

    localVarPath = strReplace(localVarPath, localVarToReplace_pipeline, pipeline);

    // Path Params
    long sizeOfPathParams_run = strlen(organization)+3 + strlen(pipeline)+3 + strlen(run)+3 + sizeof("{ run }") - 1;
    if(run == NULL) {
        goto end;
    }
    char* localVarToReplace_run = malloc(sizeOfPathParams_run);
    sprintf(localVarToReplace_run, "{%s}", "run");

    localVarPath = strReplace(localVarPath, localVarToReplace_run, run);



    // query parameters
    char *keyQuery_blocking = NULL;
    char * valueQuery_blocking = NULL;
    keyValuePair_t *keyPairQuery_blocking = 0;
    if (blocking)
    {
        keyQuery_blocking = strdup("blocking");
        valueQuery_blocking = strdup((blocking));
        keyPairQuery_blocking = keyValuePair_create(keyQuery_blocking, valueQuery_blocking);
        list_addElement(localVarQueryParameters,keyPairQuery_blocking);
    }

    // query parameters
    char *keyQuery_timeOutInSecs = NULL;
    char * valueQuery_timeOutInSecs = NULL;
    keyValuePair_t *keyPairQuery_timeOutInSecs = 0;
    if (timeOutInSecs)
    {
        keyQuery_timeOutInSecs = strdup("timeOutInSecs");
        valueQuery_timeOutInSecs = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_timeOutInSecs, MAX_NUMBER_LENGTH, "%d", *timeOutInSecs);
        keyPairQuery_timeOutInSecs = keyValuePair_create(keyQuery_timeOutInSecs, valueQuery_timeOutInSecs);
        list_addElement(localVarQueryParameters,keyPairQuery_timeOutInSecs);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "PUT");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully stopped a build");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //nonprimitive not container
    pipeline_run_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BlueOceanAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pipeline_run_parseFromJSON(BlueOceanAPIlocalVarJSON);
        cJSON_Delete(BlueOceanAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_organization);
    free(localVarToReplace_pipeline);
    free(localVarToReplace_run);
    if(keyQuery_blocking){
        free(keyQuery_blocking);
        keyQuery_blocking = NULL;
    }
    if(valueQuery_blocking){
        free(valueQuery_blocking);
        valueQuery_blocking = NULL;
    }
    if(keyPairQuery_blocking){
        keyValuePair_free(keyPairQuery_blocking);
        keyPairQuery_blocking = NULL;
    }
    if(keyQuery_timeOutInSecs){
        free(keyQuery_timeOutInSecs);
        keyQuery_timeOutInSecs = NULL;
    }
    if(valueQuery_timeOutInSecs){
        free(valueQuery_timeOutInSecs);
        valueQuery_timeOutInSecs = NULL;
    }
    if(keyPairQuery_timeOutInSecs){
        keyValuePair_free(keyPairQuery_timeOutInSecs);
        keyPairQuery_timeOutInSecs = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search for any resource details
//
char*
BlueOceanAPI_search(apiClient_t *apiClient, char *q)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/search/");





    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved search result");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get classes details
//
char*
BlueOceanAPI_searchClasses(apiClient_t *apiClient, char *q)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/blue/rest/classes/");





    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved search result");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Authentication failed - incorrect username and/or password");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Jenkins requires authentication - please set username and password");
    //}
    //primitive return type simple string
    char* elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300)
        elementToReturn = strdup((char*)apiClient->dataReceived);

    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

