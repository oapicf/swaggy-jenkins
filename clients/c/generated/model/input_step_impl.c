#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "input_step_impl.h"



static input_step_impl_t *input_step_impl_create_internal(
    char *_class,
    input_step_impllinks_t *_links,
    char *id,
    char *message,
    char *ok,
    list_t *parameters,
    char *submitter
    ) {
    input_step_impl_t *input_step_impl_local_var = malloc(sizeof(input_step_impl_t));
    if (!input_step_impl_local_var) {
        return NULL;
    }
    memset(input_step_impl_local_var, 0, sizeof(input_step_impl_t));
    input_step_impl_local_var->_library_owned = 1;
    input_step_impl_local_var->_class = _class;
    input_step_impl_local_var->_links = _links;
    input_step_impl_local_var->id = id;
    input_step_impl_local_var->message = message;
    input_step_impl_local_var->ok = ok;
    input_step_impl_local_var->parameters = parameters;
    input_step_impl_local_var->submitter = submitter;
    return input_step_impl_local_var;
}

__attribute__((deprecated)) input_step_impl_t *input_step_impl_create(
    char *_class,
    input_step_impllinks_t *_links,
    char *id,
    char *message,
    char *ok,
    list_t *parameters,
    char *submitter
    ) {
    input_step_impl_t *result = input_step_impl_create_internal (
        _class,
        _links,
        id,
        message,
        ok,
        parameters,
        submitter
        );
    if (!result) {
    }
    return result;
}

void input_step_impl_free(input_step_impl_t *input_step_impl) {
    if(NULL == input_step_impl){
        return ;
    }
    if(input_step_impl->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "input_step_impl_free");
        return ;
    }
    listEntry_t *listEntry;
    if (input_step_impl->_class) {
        free(input_step_impl->_class);
        input_step_impl->_class = NULL;
    }
    if (input_step_impl->_links) {
        input_step_impllinks_free(input_step_impl->_links);
        input_step_impl->_links = NULL;
    }
    if (input_step_impl->id) {
        free(input_step_impl->id);
        input_step_impl->id = NULL;
    }
    if (input_step_impl->message) {
        free(input_step_impl->message);
        input_step_impl->message = NULL;
    }
    if (input_step_impl->ok) {
        free(input_step_impl->ok);
        input_step_impl->ok = NULL;
    }
    if (input_step_impl->parameters) {
        list_ForEach(listEntry, input_step_impl->parameters) {
            string_parameter_definition_free(listEntry->data);
        }
        list_freeList(input_step_impl->parameters);
        input_step_impl->parameters = NULL;
    }
    if (input_step_impl->submitter) {
        free(input_step_impl->submitter);
        input_step_impl->submitter = NULL;
    }
    free(input_step_impl);
}

cJSON *input_step_impl_convertToJSON(input_step_impl_t *input_step_impl) {
    cJSON *item = cJSON_CreateObject();

    // input_step_impl->_class
    if(input_step_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", input_step_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // input_step_impl->_links
    if(input_step_impl->_links) {
    cJSON *_links_local_JSON = input_step_impllinks_convertToJSON(input_step_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // input_step_impl->id
    if(input_step_impl->id) {
    if(cJSON_AddStringToObject(item, "id", input_step_impl->id) == NULL) {
    goto fail; //String
    }
    }


    // input_step_impl->message
    if(input_step_impl->message) {
    if(cJSON_AddStringToObject(item, "message", input_step_impl->message) == NULL) {
    goto fail; //String
    }
    }


    // input_step_impl->ok
    if(input_step_impl->ok) {
    if(cJSON_AddStringToObject(item, "ok", input_step_impl->ok) == NULL) {
    goto fail; //String
    }
    }


    // input_step_impl->parameters
    if(input_step_impl->parameters) {
    cJSON *parameters = cJSON_AddArrayToObject(item, "parameters");
    if(parameters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parametersListEntry;
    if (input_step_impl->parameters) {
    list_ForEach(parametersListEntry, input_step_impl->parameters) {
    cJSON *itemLocal = string_parameter_definition_convertToJSON(parametersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(parameters, itemLocal);
    }
    }
    }


    // input_step_impl->submitter
    if(input_step_impl->submitter) {
    if(cJSON_AddStringToObject(item, "submitter", input_step_impl->submitter) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

input_step_impl_t *input_step_impl_parseFromJSON(cJSON *input_step_implJSON){

    input_step_impl_t *input_step_impl_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local variable for input_step_impl->_links
    input_step_impllinks_t *_links_local_nonprim = NULL;

    char *id_local_str = NULL;

    char *message_local_str = NULL;

    char *ok_local_str = NULL;

    // define the local list for input_step_impl->parameters
    list_t *parametersList = NULL;

    char *submitter_local_str = NULL;

    // input_step_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // input_step_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = input_step_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // input_step_impl->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // input_step_impl->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // input_step_impl->ok
    cJSON *ok = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "ok");
    if (cJSON_IsNull(ok)) {
        ok = NULL;
    }
    if (ok) { 
    if(!cJSON_IsString(ok) && !cJSON_IsNull(ok))
    {
    goto end; //String
    }
    }

    // input_step_impl->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "parameters");
    if (cJSON_IsNull(parameters)) {
        parameters = NULL;
    }
    if (parameters) { 
    cJSON *parameters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(parameters)){
        goto end; //nonprimitive container
    }

    parametersList = list_createList();

    cJSON_ArrayForEach(parameters_local_nonprimitive,parameters )
    {
        if(!cJSON_IsObject(parameters_local_nonprimitive)){
            goto end;
        }
        string_parameter_definition_t *parametersItem = string_parameter_definition_parseFromJSON(parameters_local_nonprimitive);

        list_addElement(parametersList, parametersItem);
    }
    }

    // input_step_impl->submitter
    cJSON *submitter = cJSON_GetObjectItemCaseSensitive(input_step_implJSON, "submitter");
    if (cJSON_IsNull(submitter)) {
        submitter = NULL;
    }
    if (submitter) { 
    if(!cJSON_IsString(submitter) && !cJSON_IsNull(submitter))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (id && !cJSON_IsNull(id)) id_local_str = strdup(id->valuestring);
    if (message && !cJSON_IsNull(message)) message_local_str = strdup(message->valuestring);
    if (ok && !cJSON_IsNull(ok)) ok_local_str = strdup(ok->valuestring);
    if (submitter && !cJSON_IsNull(submitter)) submitter_local_str = strdup(submitter->valuestring);

    input_step_impl_local_var = input_step_impl_create_internal (
        _class_local_str,
        _links ? _links_local_nonprim : NULL,
        id_local_str,
        message_local_str,
        ok_local_str,
        parameters ? parametersList : NULL,
        submitter_local_str
        );

    if (!input_step_impl_local_var) {
        goto end;
    }

    return input_step_impl_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (_links_local_nonprim) {
        input_step_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (id_local_str) {
        free(id_local_str);
        id_local_str = NULL;
    }
    if (message_local_str) {
        free(message_local_str);
        message_local_str = NULL;
    }
    if (ok_local_str) {
        free(ok_local_str);
        ok_local_str = NULL;
    }
    if (parametersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, parametersList) {
            string_parameter_definition_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(parametersList);
        parametersList = NULL;
    }
    if (submitter_local_str) {
        free(submitter_local_str);
        submitter_local_str = NULL;
    }
    return NULL;

}
