#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "organisation.h"



static organisation_t *organisation_create_internal(
    char *_class,
    char *name
    ) {
    organisation_t *organisation_local_var = malloc(sizeof(organisation_t));
    if (!organisation_local_var) {
        return NULL;
    }
    organisation_local_var->_class = _class;
    organisation_local_var->name = name;

    organisation_local_var->_library_owned = 1;
    return organisation_local_var;
}

__attribute__((deprecated)) organisation_t *organisation_create(
    char *_class,
    char *name
    ) {
    return organisation_create_internal (
        _class,
        name
        );
}

void organisation_free(organisation_t *organisation) {
    if(NULL == organisation){
        return ;
    }
    if(organisation->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "organisation_free");
        return ;
    }
    listEntry_t *listEntry;
    if (organisation->_class) {
        free(organisation->_class);
        organisation->_class = NULL;
    }
    if (organisation->name) {
        free(organisation->name);
        organisation->name = NULL;
    }
    free(organisation);
}

cJSON *organisation_convertToJSON(organisation_t *organisation) {
    cJSON *item = cJSON_CreateObject();

    // organisation->_class
    if(organisation->_class) {
    if(cJSON_AddStringToObject(item, "_class", organisation->_class) == NULL) {
    goto fail; //String
    }
    }


    // organisation->name
    if(organisation->name) {
    if(cJSON_AddStringToObject(item, "name", organisation->name) == NULL) {
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

organisation_t *organisation_parseFromJSON(cJSON *organisationJSON){

    organisation_t *organisation_local_var = NULL;

    // organisation->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(organisationJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // organisation->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(organisationJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    organisation_local_var = organisation_create_internal (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL
        );

    return organisation_local_var;
end:
    return NULL;

}
