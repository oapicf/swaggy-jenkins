#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "RemoteAccessAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Retrieve computer details
//
computer_set_t*
RemoteAccessAPI_getComputer(apiClient_t *apiClient, int *depth)
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
    char *localVarPath = strdup("/computer/api/json");





    // query parameters
    char *keyQuery_depth = NULL;
    char * valueQuery_depth = NULL;
    keyValuePair_t *keyPairQuery_depth = 0;
    if (depth)
    {
        keyQuery_depth = strdup("depth");
        valueQuery_depth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_depth, MAX_NUMBER_LENGTH, "%d", *depth);
        keyPairQuery_depth = keyValuePair_create(keyQuery_depth, valueQuery_depth);
        list_addElement(localVarQueryParameters,keyPairQuery_depth);
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
    //    printf("%s\n","Successfully retrieved computer details");
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
    computer_set_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = computer_set_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    if(keyQuery_depth){
        free(keyQuery_depth);
        keyQuery_depth = NULL;
    }
    if(valueQuery_depth){
        free(valueQuery_depth);
        valueQuery_depth = NULL;
    }
    if(keyPairQuery_depth){
        keyValuePair_free(keyPairQuery_depth);
        keyPairQuery_depth = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve Jenkins details
//
hudson_t*
RemoteAccessAPI_getJenkins(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/api/json");




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
    //    printf("%s\n","Successfully retrieved Jenkins details");
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
    hudson_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = hudson_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve job details
//
free_style_project_t*
RemoteAccessAPI_getJob(apiClient_t *apiClient, char *name)
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
    char *localVarPath = strdup("/job/{name}/api/json");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


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
    //    printf("%s\n","Successfully retrieved job details");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //nonprimitive not container
    free_style_project_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = free_style_project_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve job configuration
//
char*
RemoteAccessAPI_getJobConfig(apiClient_t *apiClient, char *name)
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
    char *localVarPath = strdup("/job/{name}/config.xml");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


    list_addElement(localVarHeaderType,"text/xml"); //produces
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
    //    printf("%s\n","Successfully retrieved job configuration in config.xml format");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
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
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve job's last build details
//
free_style_build_t*
RemoteAccessAPI_getJobLastBuild(apiClient_t *apiClient, char *name)
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
    char *localVarPath = strdup("/job/{name}/lastBuild/api/json");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


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
    //    printf("%s\n","Successfully retrieved job&#39;s last build details");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //nonprimitive not container
    free_style_build_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = free_style_build_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve job's build progressive text output
//
void
RemoteAccessAPI_getJobProgressiveText(apiClient_t *apiClient, char *name, char *number, char *start)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/{number}/logText/progressiveText");

    if(!name)
        goto end;
    if(!number)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + strlen(number)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);

    // Path Params
    long sizeOfPathParams_number = strlen(name)+3 + strlen(number)+3 + sizeof("{ number }") - 1;
    if(number == NULL) {
        goto end;
    }
    char* localVarToReplace_number = malloc(sizeOfPathParams_number);
    sprintf(localVarToReplace_number, "{%s}", "number");

    localVarPath = strReplace(localVarPath, localVarToReplace_number, number);



    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = strdup((start));
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }
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
    //    printf("%s\n","Successfully retrieved job&#39;s build progressive text output");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    free(localVarToReplace_number);
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
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }

}

// Retrieve queue details
//
queue_t*
RemoteAccessAPI_getQueue(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/queue/api/json");




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
    //nonprimitive not container
    queue_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve queued item details
//
queue_t*
RemoteAccessAPI_getQueueItem(apiClient_t *apiClient, char *number)
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
    char *localVarPath = strdup("/queue/item/{number}/api/json");

    if(!number)
        goto end;


    // Path Params
    long sizeOfPathParams_number = strlen(number)+3 + sizeof("{ number }") - 1;
    if(number == NULL) {
        goto end;
    }
    char* localVarToReplace_number = malloc(sizeOfPathParams_number);
    sprintf(localVarToReplace_number, "{%s}", "number");

    localVarPath = strReplace(localVarPath, localVarToReplace_number, number);


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
    //    printf("%s\n","Successfully retrieved queued item details");
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
    queue_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    free(localVarToReplace_number);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve view details
//
list_view_t*
RemoteAccessAPI_getView(apiClient_t *apiClient, char *name)
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
    char *localVarPath = strdup("/view/{name}/api/json");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


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
    //    printf("%s\n","Successfully retrieved view details");
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
    //    printf("%s\n","View cannot be found on Jenkins instance");
    //}
    //nonprimitive not container
    list_view_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RemoteAccessAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = list_view_parseFromJSON(RemoteAccessAPIlocalVarJSON);
        cJSON_Delete(RemoteAccessAPIlocalVarJSON);
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
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve view configuration
//
char*
RemoteAccessAPI_getViewConfig(apiClient_t *apiClient, char *name)
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
    char *localVarPath = strdup("/view/{name}/config.xml");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


    list_addElement(localVarHeaderType,"text/xml"); //produces
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
    //    printf("%s\n","Successfully retrieved view configuration in config.xml format");
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
    //    printf("%s\n","View cannot be found on Jenkins instance");
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
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Retrieve Jenkins headers
//
void
RemoteAccessAPI_headJenkins(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/api/json");




    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "HEAD");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved Jenkins headers");
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

}

// Create a new job using job configuration, or copied from an existing job
//
void
RemoteAccessAPI_postCreateItem(apiClient_t *apiClient, char *name, char *from, char *mode, char *Jenkins_Crumb, char *Content_Type, char *body)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/createItem");





    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }


    // header parameters
    char *keyHeader_Content_Type = NULL;
    char * valueHeader_Content_Type = 0;
    keyValuePair_t *keyPairHeader_Content_Type = 0;
    if (Content_Type) {
        keyHeader_Content_Type = strdup("Content-Type");
        valueHeader_Content_Type = strdup((Content_Type));
        keyPairHeader_Content_Type = keyValuePair_create(keyHeader_Content_Type, valueHeader_Content_Type);
        list_addElement(localVarHeaderParameters,keyPairHeader_Content_Type);
    }


    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_from = NULL;
    char * valueQuery_from = NULL;
    keyValuePair_t *keyPairQuery_from = 0;
    if (from)
    {
        keyQuery_from = strdup("from");
        valueQuery_from = strdup((from));
        keyPairQuery_from = keyValuePair_create(keyQuery_from, valueQuery_from);
        list_addElement(localVarQueryParameters,keyPairQuery_from);
    }

    // query parameters
    char *keyQuery_mode = NULL;
    char * valueQuery_mode = NULL;
    keyValuePair_t *keyPairQuery_mode = 0;
    if (mode)
    {
        keyQuery_mode = strdup("mode");
        valueQuery_mode = strdup((mode));
        keyPairQuery_mode = keyValuePair_create(keyQuery_mode, valueQuery_mode);
        list_addElement(localVarQueryParameters,keyPairQuery_mode);
    }

    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
    list_addElement(localVarHeaderType,"*/*"); //produces
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully created a new job");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","An error has occurred - error message is embedded inside the HTML response");
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
    list_freeList(localVarQueryParameters);
    list_freeList(localVarHeaderParameters);
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);
    if (keyHeader_Content_Type) {
        free(keyHeader_Content_Type);
        keyHeader_Content_Type = NULL;
    }
    if (valueHeader_Content_Type) {
        free(valueHeader_Content_Type);
        valueHeader_Content_Type = NULL;
    }
    free(keyPairHeader_Content_Type);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_from){
        free(keyQuery_from);
        keyQuery_from = NULL;
    }
    if(valueQuery_from){
        free(valueQuery_from);
        valueQuery_from = NULL;
    }
    if(keyPairQuery_from){
        keyValuePair_free(keyPairQuery_from);
        keyPairQuery_from = NULL;
    }
    if(keyQuery_from){
        free(keyQuery_from);
        keyQuery_from = NULL;
    }
    if(keyPairQuery_from){
        keyValuePair_free(keyPairQuery_from);
        keyPairQuery_from = NULL;
    }
    if(keyQuery_mode){
        free(keyQuery_mode);
        keyQuery_mode = NULL;
    }
    if(valueQuery_mode){
        free(valueQuery_mode);
        valueQuery_mode = NULL;
    }
    if(keyPairQuery_mode){
        keyValuePair_free(keyPairQuery_mode);
        keyPairQuery_mode = NULL;
    }
    if(keyQuery_mode){
        free(keyQuery_mode);
        keyQuery_mode = NULL;
    }
    if(keyPairQuery_mode){
        keyValuePair_free(keyPairQuery_mode);
        keyPairQuery_mode = NULL;
    }

}

// Create a new view using view configuration
//
void
RemoteAccessAPI_postCreateView(apiClient_t *apiClient, char *name, char *Jenkins_Crumb, char *Content_Type, char *body)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/createView");





    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }


    // header parameters
    char *keyHeader_Content_Type = NULL;
    char * valueHeader_Content_Type = 0;
    keyValuePair_t *keyPairHeader_Content_Type = 0;
    if (Content_Type) {
        keyHeader_Content_Type = strdup("Content-Type");
        valueHeader_Content_Type = strdup((Content_Type));
        keyPairHeader_Content_Type = keyValuePair_create(keyHeader_Content_Type, valueHeader_Content_Type);
        list_addElement(localVarHeaderParameters,keyPairHeader_Content_Type);
    }


    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
    list_addElement(localVarHeaderType,"*/*"); //produces
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully created the view");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","An error has occurred - error message is embedded inside the HTML response");
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
    list_freeList(localVarQueryParameters);
    list_freeList(localVarHeaderParameters);
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);
    if (keyHeader_Content_Type) {
        free(keyHeader_Content_Type);
        keyHeader_Content_Type = NULL;
    }
    if (valueHeader_Content_Type) {
        free(valueHeader_Content_Type);
        valueHeader_Content_Type = NULL;
    }
    free(keyPairHeader_Content_Type);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }

}

// Build a job
//
void
RemoteAccessAPI_postJobBuild(apiClient_t *apiClient, char *name, char *json, char *token, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/build");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }


    // query parameters
    char *keyQuery_json = NULL;
    char * valueQuery_json = NULL;
    keyValuePair_t *keyPairQuery_json = 0;
    if (json)
    {
        keyQuery_json = strdup("json");
        valueQuery_json = strdup((json));
        keyPairQuery_json = keyValuePair_create(keyQuery_json, valueQuery_json);
        list_addElement(localVarQueryParameters,keyPairQuery_json);
    }

    // query parameters
    char *keyQuery_token = NULL;
    char * valueQuery_token = NULL;
    keyValuePair_t *keyPairQuery_token = 0;
    if (token)
    {
        keyQuery_token = strdup("token");
        valueQuery_token = strdup((token));
        keyPairQuery_token = keyValuePair_create(keyQuery_token, valueQuery_token);
        list_addElement(localVarQueryParameters,keyPairQuery_token);
    }
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
    //    printf("%s\n","Successfully built the job (backward compatibility for older versions of Jenkins)");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 201) {
    //    printf("%s\n","Successfully built the job");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    list_freeList(localVarHeaderParameters);
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);
    if(keyQuery_json){
        free(keyQuery_json);
        keyQuery_json = NULL;
    }
    if(valueQuery_json){
        free(valueQuery_json);
        valueQuery_json = NULL;
    }
    if(keyPairQuery_json){
        keyValuePair_free(keyPairQuery_json);
        keyPairQuery_json = NULL;
    }
    if(keyQuery_json){
        free(keyQuery_json);
        keyQuery_json = NULL;
    }
    if(keyPairQuery_json){
        keyValuePair_free(keyPairQuery_json);
        keyPairQuery_json = NULL;
    }
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(valueQuery_token){
        free(valueQuery_token);
        valueQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
    }
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
    }

}

// Update job configuration
//
void
RemoteAccessAPI_postJobConfig(apiClient_t *apiClient, char *name, char *body, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/config.xml");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }


    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
    list_addElement(localVarHeaderType,"*/*"); //produces
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully retrieved job configuration in config.xml format");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","An error has occurred - error message is embedded inside the HTML response");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);

}

// Delete a job
//
void
RemoteAccessAPI_postJobDelete(apiClient_t *apiClient, char *name, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/doDelete");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }

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
    //    printf("%s\n","Successfully deleted the job");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);

}

// Disable a job
//
void
RemoteAccessAPI_postJobDisable(apiClient_t *apiClient, char *name, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/disable");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }

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
    //    printf("%s\n","Successfully disabled the job");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);

}

// Enable a job
//
void
RemoteAccessAPI_postJobEnable(apiClient_t *apiClient, char *name, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/enable");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }

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
    //    printf("%s\n","Successfully enabled the job");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);

}

// Stop a job
//
void
RemoteAccessAPI_postJobLastBuildStop(apiClient_t *apiClient, char *name, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/job/{name}/lastBuild/stop");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }

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
    //    printf("%s\n","Successfully stopped the job");
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
    //    printf("%s\n","Job cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    
    
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);

}

// Update view configuration
//
void
RemoteAccessAPI_postViewConfig(apiClient_t *apiClient, char *name, char *body, char *Jenkins_Crumb)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = list_createList();
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/view/{name}/config.xml");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);



    // header parameters
    char *keyHeader_Jenkins_Crumb = NULL;
    char * valueHeader_Jenkins_Crumb = 0;
    keyValuePair_t *keyPairHeader_Jenkins_Crumb = 0;
    if (Jenkins_Crumb) {
        keyHeader_Jenkins_Crumb = strdup("Jenkins-Crumb");
        valueHeader_Jenkins_Crumb = strdup((Jenkins_Crumb));
        keyPairHeader_Jenkins_Crumb = keyValuePair_create(keyHeader_Jenkins_Crumb, valueHeader_Jenkins_Crumb);
        list_addElement(localVarHeaderParameters,keyPairHeader_Jenkins_Crumb);
    }


    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
    list_addElement(localVarHeaderType,"*/*"); //produces
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Successfully updated view configuration");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","An error has occurred - error message is embedded inside the HTML response");
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
    //    printf("%s\n","View cannot be found on Jenkins instance");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    list_freeList(localVarHeaderParameters);
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    free(localVarToReplace_name);
    if (keyHeader_Jenkins_Crumb) {
        free(keyHeader_Jenkins_Crumb);
        keyHeader_Jenkins_Crumb = NULL;
    }
    if (valueHeader_Jenkins_Crumb) {
        free(valueHeader_Jenkins_Crumb);
        valueHeader_Jenkins_Crumb = NULL;
    }
    free(keyPairHeader_Jenkins_Crumb);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);

}

