#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "string_parameter_value.h"



string_parameter_value_t *string_parameter_value_create(
    char *_class,
    char *name,
    char *value
    ) {
    string_parameter_value_t *string_parameter_value_local_var = malloc(sizeof(string_parameter_value_t));
    if (!string_parameter_value_local_var) {
        return NULL;
    }
    string_parameter_value_local_var->_class = _class;
    string_parameter_value_local_var->name = name;
    string_parameter_value_local_var->value = value;

    return string_parameter_value_local_var;
}


void string_parameter_value_free(string_parameter_value_t *string_parameter_value) {
    if(NULL == string_parameter_value){
        return ;
    }
    listEntry_t *listEntry;
    if (string_parameter_value->_class) {
        free(string_parameter_value->_class);
        string_parameter_value->_class = NULL;
    }
    if (string_parameter_value->name) {
        free(string_parameter_value->name);
        string_parameter_value->name = NULL;
    }
    if (string_parameter_value->value) {
        free(string_parameter_value->value);
        string_parameter_value->value = NULL;
    }
    free(string_parameter_value);
}

cJSON *string_parameter_value_convertToJSON(string_parameter_value_t *string_parameter_value) {
    cJSON *item = cJSON_CreateObject();

    // string_parameter_value->_class
    if(string_parameter_value->_class) { 
    if(cJSON_AddStringToObject(item, "_class", string_parameter_value->_class) == NULL) {
    goto fail; //String
    }
     } 


    // string_parameter_value->name
    if(string_parameter_value->name) { 
    if(cJSON_AddStringToObject(item, "name", string_parameter_value->name) == NULL) {
    goto fail; //String
    }
     } 


    // string_parameter_value->value
    if(string_parameter_value->value) { 
    if(cJSON_AddStringToObject(item, "value", string_parameter_value->value) == NULL) {
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

string_parameter_value_t *string_parameter_value_parseFromJSON(cJSON *string_parameter_valueJSON){

    string_parameter_value_t *string_parameter_value_local_var = NULL;

    // string_parameter_value->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // string_parameter_value->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // string_parameter_value->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "value");
    if (value) { 
    if(!cJSON_IsString(value))
    {
    goto end; //String
    }
    }


    string_parameter_value_local_var = string_parameter_value_create (
        _class ? strdup(_class->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        value ? strdup(value->valuestring) : NULL
        );

    return string_parameter_value_local_var;
end:
    return NULL;

}
