#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "string_parameter_value.h"



static string_parameter_value_t *string_parameter_value_create_internal(
    char *_class,
    char *name,
    char *value
    ) {
    string_parameter_value_t *string_parameter_value_local_var = malloc(sizeof(string_parameter_value_t));
    if (!string_parameter_value_local_var) {
        return NULL;
    }
    memset(string_parameter_value_local_var, 0, sizeof(string_parameter_value_t));
    string_parameter_value_local_var->_library_owned = 1;
    string_parameter_value_local_var->_class = _class;
    string_parameter_value_local_var->name = name;
    string_parameter_value_local_var->value = value;
    return string_parameter_value_local_var;
}

__attribute__((deprecated)) string_parameter_value_t *string_parameter_value_create(
    char *_class,
    char *name,
    char *value
    ) {
    string_parameter_value_t *result = string_parameter_value_create_internal (
        _class,
        name,
        value
        );
    if (!result) {
    }
    return result;
}

void string_parameter_value_free(string_parameter_value_t *string_parameter_value) {
    if(NULL == string_parameter_value){
        return ;
    }
    if(string_parameter_value->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "string_parameter_value_free");
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

    char *_class_local_str = NULL;

    char *name_local_str = NULL;

    char *value_local_str = NULL;

    // string_parameter_value->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // string_parameter_value->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // string_parameter_value->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(string_parameter_valueJSON, "value");
    if (cJSON_IsNull(value)) {
        value = NULL;
    }
    if (value) { 
    if(!cJSON_IsString(value) && !cJSON_IsNull(value))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (name && !cJSON_IsNull(name)) name_local_str = strdup(name->valuestring);
    if (value && !cJSON_IsNull(value)) value_local_str = strdup(value->valuestring);

    string_parameter_value_local_var = string_parameter_value_create_internal (
        _class_local_str,
        name_local_str,
        value_local_str
        );

    if (!string_parameter_value_local_var) {
        goto end;
    }

    return string_parameter_value_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (name_local_str) {
        free(name_local_str);
        name_local_str = NULL;
    }
    if (value_local_str) {
        free(value_local_str);
        value_local_str = NULL;
    }
    return NULL;

}
