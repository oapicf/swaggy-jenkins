#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "branch_implpermissions.h"



branch_implpermissions_t *branch_implpermissions_create(
    int create,
    int read,
    int start,
    int stop,
    char *_class
    ) {
    branch_implpermissions_t *branch_implpermissions_local_var = malloc(sizeof(branch_implpermissions_t));
    if (!branch_implpermissions_local_var) {
        return NULL;
    }
    branch_implpermissions_local_var->create = create;
    branch_implpermissions_local_var->read = read;
    branch_implpermissions_local_var->start = start;
    branch_implpermissions_local_var->stop = stop;
    branch_implpermissions_local_var->_class = _class;

    return branch_implpermissions_local_var;
}


void branch_implpermissions_free(branch_implpermissions_t *branch_implpermissions) {
    if(NULL == branch_implpermissions){
        return ;
    }
    listEntry_t *listEntry;
    if (branch_implpermissions->_class) {
        free(branch_implpermissions->_class);
        branch_implpermissions->_class = NULL;
    }
    free(branch_implpermissions);
}

cJSON *branch_implpermissions_convertToJSON(branch_implpermissions_t *branch_implpermissions) {
    cJSON *item = cJSON_CreateObject();

    // branch_implpermissions->create
    if(branch_implpermissions->create) { 
    if(cJSON_AddBoolToObject(item, "create", branch_implpermissions->create) == NULL) {
    goto fail; //Bool
    }
     } 


    // branch_implpermissions->read
    if(branch_implpermissions->read) { 
    if(cJSON_AddBoolToObject(item, "read", branch_implpermissions->read) == NULL) {
    goto fail; //Bool
    }
     } 


    // branch_implpermissions->start
    if(branch_implpermissions->start) { 
    if(cJSON_AddBoolToObject(item, "start", branch_implpermissions->start) == NULL) {
    goto fail; //Bool
    }
     } 


    // branch_implpermissions->stop
    if(branch_implpermissions->stop) { 
    if(cJSON_AddBoolToObject(item, "stop", branch_implpermissions->stop) == NULL) {
    goto fail; //Bool
    }
     } 


    // branch_implpermissions->_class
    if(branch_implpermissions->_class) { 
    if(cJSON_AddStringToObject(item, "_class", branch_implpermissions->_class) == NULL) {
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

branch_implpermissions_t *branch_implpermissions_parseFromJSON(cJSON *branch_implpermissionsJSON){

    branch_implpermissions_t *branch_implpermissions_local_var = NULL;

    // branch_implpermissions->create
    cJSON *create = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "create");
    if (create) { 
    if(!cJSON_IsBool(create))
    {
    goto end; //Bool
    }
    }

    // branch_implpermissions->read
    cJSON *read = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "read");
    if (read) { 
    if(!cJSON_IsBool(read))
    {
    goto end; //Bool
    }
    }

    // branch_implpermissions->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "start");
    if (start) { 
    if(!cJSON_IsBool(start))
    {
    goto end; //Bool
    }
    }

    // branch_implpermissions->stop
    cJSON *stop = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "stop");
    if (stop) { 
    if(!cJSON_IsBool(stop))
    {
    goto end; //Bool
    }
    }

    // branch_implpermissions->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }


    branch_implpermissions_local_var = branch_implpermissions_create (
        create ? create->valueint : 0,
        read ? read->valueint : 0,
        start ? start->valueint : 0,
        stop ? stop->valueint : 0,
        _class ? strdup(_class->valuestring) : NULL
        );

    return branch_implpermissions_local_var;
end:
    return NULL;

}
