#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "branch_implpermissions.h"



static branch_implpermissions_t *branch_implpermissions_create_internal(
    int *create,
    int *read,
    int *start,
    int *stop,
    char *_class
    ) {
    branch_implpermissions_t *branch_implpermissions_local_var = malloc(sizeof(branch_implpermissions_t));
    if (!branch_implpermissions_local_var) {
        return NULL;
    }
    memset(branch_implpermissions_local_var, 0, sizeof(branch_implpermissions_t));
    branch_implpermissions_local_var->_library_owned = 1;
    branch_implpermissions_local_var->create = create;
    branch_implpermissions_local_var->read = read;
    branch_implpermissions_local_var->start = start;
    branch_implpermissions_local_var->stop = stop;
    branch_implpermissions_local_var->_class = _class;
    return branch_implpermissions_local_var;
}

__attribute__((deprecated)) branch_implpermissions_t *branch_implpermissions_create(
    int *create,
    int *read,
    int *start,
    int *stop,
    char *_class
    ) {
    int *create_copy = NULL;
    if (create) {
        create_copy = malloc(sizeof(int));
        if (create_copy) *create_copy = *create;
    }
    int *read_copy = NULL;
    if (read) {
        read_copy = malloc(sizeof(int));
        if (read_copy) *read_copy = *read;
    }
    int *start_copy = NULL;
    if (start) {
        start_copy = malloc(sizeof(int));
        if (start_copy) *start_copy = *start;
    }
    int *stop_copy = NULL;
    if (stop) {
        stop_copy = malloc(sizeof(int));
        if (stop_copy) *stop_copy = *stop;
    }
    branch_implpermissions_t *result = branch_implpermissions_create_internal (
        create_copy,
        read_copy,
        start_copy,
        stop_copy,
        _class
        );
    if (!result) {
        free(create_copy);
        free(read_copy);
        free(start_copy);
        free(stop_copy);
    }
    return result;
}

void branch_implpermissions_free(branch_implpermissions_t *branch_implpermissions) {
    if(NULL == branch_implpermissions){
        return ;
    }
    if(branch_implpermissions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "branch_implpermissions_free");
        return ;
    }
    listEntry_t *listEntry;
    if (branch_implpermissions->create) {
        free(branch_implpermissions->create);
        branch_implpermissions->create = NULL;
    }
    if (branch_implpermissions->read) {
        free(branch_implpermissions->read);
        branch_implpermissions->read = NULL;
    }
    if (branch_implpermissions->start) {
        free(branch_implpermissions->start);
        branch_implpermissions->start = NULL;
    }
    if (branch_implpermissions->stop) {
        free(branch_implpermissions->stop);
        branch_implpermissions->stop = NULL;
    }
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
    if(cJSON_AddBoolToObject(item, "create", *branch_implpermissions->create) == NULL) {
    goto fail; //Bool
    }
    }


    // branch_implpermissions->read
    if(branch_implpermissions->read) {
    if(cJSON_AddBoolToObject(item, "read", *branch_implpermissions->read) == NULL) {
    goto fail; //Bool
    }
    }


    // branch_implpermissions->start
    if(branch_implpermissions->start) {
    if(cJSON_AddBoolToObject(item, "start", *branch_implpermissions->start) == NULL) {
    goto fail; //Bool
    }
    }


    // branch_implpermissions->stop
    if(branch_implpermissions->stop) {
    if(cJSON_AddBoolToObject(item, "stop", *branch_implpermissions->stop) == NULL) {
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

    // define the local variable for branch_implpermissions->create
    int *create_local_var = NULL;

    // define the local variable for branch_implpermissions->read
    int *read_local_var = NULL;

    // define the local variable for branch_implpermissions->start
    int *start_local_var = NULL;

    // define the local variable for branch_implpermissions->stop
    int *stop_local_var = NULL;

    char *_class_local_str = NULL;

    // branch_implpermissions->create
    cJSON *create = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "create");
    if (cJSON_IsNull(create)) {
        create = NULL;
    }
    if (create) { 
    if(!cJSON_IsBool(create))
    {
    goto end; //Bool
    }
    create_local_var = malloc(sizeof(int));
    if(!create_local_var)
    {
        goto end;
    }
    *create_local_var = create->valueint;
    }

    // branch_implpermissions->read
    cJSON *read = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "read");
    if (cJSON_IsNull(read)) {
        read = NULL;
    }
    if (read) { 
    if(!cJSON_IsBool(read))
    {
    goto end; //Bool
    }
    read_local_var = malloc(sizeof(int));
    if(!read_local_var)
    {
        goto end;
    }
    *read_local_var = read->valueint;
    }

    // branch_implpermissions->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsBool(start))
    {
    goto end; //Bool
    }
    start_local_var = malloc(sizeof(int));
    if(!start_local_var)
    {
        goto end;
    }
    *start_local_var = start->valueint;
    }

    // branch_implpermissions->stop
    cJSON *stop = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "stop");
    if (cJSON_IsNull(stop)) {
        stop = NULL;
    }
    if (stop) { 
    if(!cJSON_IsBool(stop))
    {
    goto end; //Bool
    }
    stop_local_var = malloc(sizeof(int));
    if(!stop_local_var)
    {
        goto end;
    }
    *stop_local_var = stop->valueint;
    }

    // branch_implpermissions->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(branch_implpermissionsJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    branch_implpermissions_local_var = branch_implpermissions_create_internal (
        create_local_var,
        read_local_var,
        start_local_var,
        stop_local_var,
        _class_local_str
        );

    if (!branch_implpermissions_local_var) {
        goto end;
    }

    return branch_implpermissions_local_var;
end:
    if (create_local_var) {
        free(create_local_var);
        create_local_var = NULL;
    }
    if (read_local_var) {
        free(read_local_var);
        read_local_var = NULL;
    }
    if (start_local_var) {
        free(start_local_var);
        start_local_var = NULL;
    }
    if (stop_local_var) {
        free(stop_local_var);
        stop_local_var = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
