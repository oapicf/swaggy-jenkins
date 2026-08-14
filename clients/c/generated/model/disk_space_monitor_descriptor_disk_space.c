#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "disk_space_monitor_descriptor_disk_space.h"



static disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_create_internal(
    char *_class,
    int *timestamp,
    char *path,
    int *size
    ) {
    disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_local_var = malloc(sizeof(disk_space_monitor_descriptor_disk_space_t));
    if (!disk_space_monitor_descriptor_disk_space_local_var) {
        return NULL;
    }
    memset(disk_space_monitor_descriptor_disk_space_local_var, 0, sizeof(disk_space_monitor_descriptor_disk_space_t));
    disk_space_monitor_descriptor_disk_space_local_var->_library_owned = 1;
    disk_space_monitor_descriptor_disk_space_local_var->_class = _class;
    disk_space_monitor_descriptor_disk_space_local_var->timestamp = timestamp;
    disk_space_monitor_descriptor_disk_space_local_var->path = path;
    disk_space_monitor_descriptor_disk_space_local_var->size = size;
    return disk_space_monitor_descriptor_disk_space_local_var;
}

__attribute__((deprecated)) disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_create(
    char *_class,
    int *timestamp,
    char *path,
    int *size
    ) {
    int *timestamp_copy = NULL;
    if (timestamp) {
        timestamp_copy = malloc(sizeof(int));
        if (timestamp_copy) *timestamp_copy = *timestamp;
    }
    int *size_copy = NULL;
    if (size) {
        size_copy = malloc(sizeof(int));
        if (size_copy) *size_copy = *size;
    }
    disk_space_monitor_descriptor_disk_space_t *result = disk_space_monitor_descriptor_disk_space_create_internal (
        _class,
        timestamp_copy,
        path,
        size_copy
        );
    if (!result) {
        free(timestamp_copy);
        free(size_copy);
    }
    return result;
}

void disk_space_monitor_descriptor_disk_space_free(disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space) {
    if(NULL == disk_space_monitor_descriptor_disk_space){
        return ;
    }
    if(disk_space_monitor_descriptor_disk_space->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "disk_space_monitor_descriptor_disk_space_free");
        return ;
    }
    listEntry_t *listEntry;
    if (disk_space_monitor_descriptor_disk_space->_class) {
        free(disk_space_monitor_descriptor_disk_space->_class);
        disk_space_monitor_descriptor_disk_space->_class = NULL;
    }
    if (disk_space_monitor_descriptor_disk_space->timestamp) {
        free(disk_space_monitor_descriptor_disk_space->timestamp);
        disk_space_monitor_descriptor_disk_space->timestamp = NULL;
    }
    if (disk_space_monitor_descriptor_disk_space->path) {
        free(disk_space_monitor_descriptor_disk_space->path);
        disk_space_monitor_descriptor_disk_space->path = NULL;
    }
    if (disk_space_monitor_descriptor_disk_space->size) {
        free(disk_space_monitor_descriptor_disk_space->size);
        disk_space_monitor_descriptor_disk_space->size = NULL;
    }
    free(disk_space_monitor_descriptor_disk_space);
}

cJSON *disk_space_monitor_descriptor_disk_space_convertToJSON(disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space) {
    cJSON *item = cJSON_CreateObject();

    // disk_space_monitor_descriptor_disk_space->_class
    if(disk_space_monitor_descriptor_disk_space->_class) {
    if(cJSON_AddStringToObject(item, "_class", disk_space_monitor_descriptor_disk_space->_class) == NULL) {
    goto fail; //String
    }
    }


    // disk_space_monitor_descriptor_disk_space->timestamp
    if(disk_space_monitor_descriptor_disk_space->timestamp) {
    if(cJSON_AddNumberToObject(item, "timestamp", *disk_space_monitor_descriptor_disk_space->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // disk_space_monitor_descriptor_disk_space->path
    if(disk_space_monitor_descriptor_disk_space->path) {
    if(cJSON_AddStringToObject(item, "path", disk_space_monitor_descriptor_disk_space->path) == NULL) {
    goto fail; //String
    }
    }


    // disk_space_monitor_descriptor_disk_space->size
    if(disk_space_monitor_descriptor_disk_space->size) {
    if(cJSON_AddNumberToObject(item, "size", *disk_space_monitor_descriptor_disk_space->size) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_parseFromJSON(cJSON *disk_space_monitor_descriptor_disk_spaceJSON){

    disk_space_monitor_descriptor_disk_space_t *disk_space_monitor_descriptor_disk_space_local_var = NULL;

    char *_class_local_str = NULL;

    // define the local variable for disk_space_monitor_descriptor_disk_space->timestamp
    int *timestamp_local_var = NULL;

    char *path_local_str = NULL;

    // define the local variable for disk_space_monitor_descriptor_disk_space->size
    int *size_local_var = NULL;

    // disk_space_monitor_descriptor_disk_space->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(disk_space_monitor_descriptor_disk_spaceJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // disk_space_monitor_descriptor_disk_space->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(disk_space_monitor_descriptor_disk_spaceJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    timestamp_local_var = malloc(sizeof(int));
    if(!timestamp_local_var)
    {
        goto end;
    }
    *timestamp_local_var = timestamp->valuedouble;
    }

    // disk_space_monitor_descriptor_disk_space->path
    cJSON *path = cJSON_GetObjectItemCaseSensitive(disk_space_monitor_descriptor_disk_spaceJSON, "path");
    if (cJSON_IsNull(path)) {
        path = NULL;
    }
    if (path) { 
    if(!cJSON_IsString(path) && !cJSON_IsNull(path))
    {
    goto end; //String
    }
    }

    // disk_space_monitor_descriptor_disk_space->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(disk_space_monitor_descriptor_disk_spaceJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    size_local_var = malloc(sizeof(int));
    if(!size_local_var)
    {
        goto end;
    }
    *size_local_var = size->valuedouble;
    }


    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);
    if (path && !cJSON_IsNull(path)) path_local_str = strdup(path->valuestring);

    disk_space_monitor_descriptor_disk_space_local_var = disk_space_monitor_descriptor_disk_space_create_internal (
        _class_local_str,
        timestamp_local_var,
        path_local_str,
        size_local_var
        );

    if (!disk_space_monitor_descriptor_disk_space_local_var) {
        goto end;
    }

    return disk_space_monitor_descriptor_disk_space_local_var;
end:
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    if (timestamp_local_var) {
        free(timestamp_local_var);
        timestamp_local_var = NULL;
    }
    if (path_local_str) {
        free(path_local_str);
        path_local_str = NULL;
    }
    if (size_local_var) {
        free(size_local_var);
        size_local_var = NULL;
    }
    return NULL;

}
