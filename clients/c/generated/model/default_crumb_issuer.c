#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "default_crumb_issuer.h"



static default_crumb_issuer_t *default_crumb_issuer_create_internal(
    char *_class,
    char *crumb,
    char *crumb_request_field
    ) {
    default_crumb_issuer_t *default_crumb_issuer_local_var = malloc(sizeof(default_crumb_issuer_t));
    if (!default_crumb_issuer_local_var) {
        return NULL;
    }
    default_crumb_issuer_local_var->_class = _class;
    default_crumb_issuer_local_var->crumb = crumb;
    default_crumb_issuer_local_var->crumb_request_field = crumb_request_field;

    default_crumb_issuer_local_var->_library_owned = 1;
    return default_crumb_issuer_local_var;
}

__attribute__((deprecated)) default_crumb_issuer_t *default_crumb_issuer_create(
    char *_class,
    char *crumb,
    char *crumb_request_field
    ) {
    return default_crumb_issuer_create_internal (
        _class,
        crumb,
        crumb_request_field
        );
}

void default_crumb_issuer_free(default_crumb_issuer_t *default_crumb_issuer) {
    if(NULL == default_crumb_issuer){
        return ;
    }
    if(default_crumb_issuer->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "default_crumb_issuer_free");
        return ;
    }
    listEntry_t *listEntry;
    if (default_crumb_issuer->_class) {
        free(default_crumb_issuer->_class);
        default_crumb_issuer->_class = NULL;
    }
    if (default_crumb_issuer->crumb) {
        free(default_crumb_issuer->crumb);
        default_crumb_issuer->crumb = NULL;
    }
    if (default_crumb_issuer->crumb_request_field) {
        free(default_crumb_issuer->crumb_request_field);
        default_crumb_issuer->crumb_request_field = NULL;
    }
    free(default_crumb_issuer);
}

cJSON *default_crumb_issuer_convertToJSON(default_crumb_issuer_t *default_crumb_issuer) {
    cJSON *item = cJSON_CreateObject();

    // default_crumb_issuer->_class
    if(default_crumb_issuer->_class) {
    if(cJSON_AddStringToObject(item, "_class", default_crumb_issuer->_class) == NULL) {
    goto fail; //String
    }
    }


    // default_crumb_issuer->crumb
    if(default_crumb_issuer->crumb) {
    if(cJSON_AddStringToObject(item, "crumb", default_crumb_issuer->crumb) == NULL) {
    goto fail; //String
    }
    }


    // default_crumb_issuer->crumb_request_field
    if(default_crumb_issuer->crumb_request_field) {
    if(cJSON_AddStringToObject(item, "crumbRequestField", default_crumb_issuer->crumb_request_field) == NULL) {
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

default_crumb_issuer_t *default_crumb_issuer_parseFromJSON(cJSON *default_crumb_issuerJSON){

    default_crumb_issuer_t *default_crumb_issuer_local_var = NULL;

    // default_crumb_issuer->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(default_crumb_issuerJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // default_crumb_issuer->crumb
    cJSON *crumb = cJSON_GetObjectItemCaseSensitive(default_crumb_issuerJSON, "crumb");
    if (cJSON_IsNull(crumb)) {
        crumb = NULL;
    }
    if (crumb) { 
    if(!cJSON_IsString(crumb) && !cJSON_IsNull(crumb))
    {
    goto end; //String
    }
    }

    // default_crumb_issuer->crumb_request_field
    cJSON *crumb_request_field = cJSON_GetObjectItemCaseSensitive(default_crumb_issuerJSON, "crumbRequestField");
    if (cJSON_IsNull(crumb_request_field)) {
        crumb_request_field = NULL;
    }
    if (crumb_request_field) { 
    if(!cJSON_IsString(crumb_request_field) && !cJSON_IsNull(crumb_request_field))
    {
    goto end; //String
    }
    }


    default_crumb_issuer_local_var = default_crumb_issuer_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        crumb && !cJSON_IsNull(crumb) ? strdup(crumb->valuestring) : NULL,
        crumb_request_field && !cJSON_IsNull(crumb_request_field) ? strdup(crumb_request_field->valuestring) : NULL
        );

    return default_crumb_issuer_local_var;
end:
    return NULL;

}
