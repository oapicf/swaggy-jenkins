#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "organisation.h"



organisation_t *organisation_create(
    char *_class,
    char *name
    ) {
    organisation_t *organisation_local_var = malloc(sizeof(organisation_t));
    if (!organisation_local_var) {
        return NULL;
    }
    organisation_local_var->_class = _class;
    organisation_local_var->name = name;

    return organisation_local_var;
}


void organisation_free(organisation_t *organisation) {
    if(NULL == organisation){
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
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // organisation->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(organisationJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }


    organisation_local_var = organisation_create (
        _class ? strdup(_class->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL
        );

    return organisation_local_var;
end:
    return NULL;

}
