#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "computer_set.h"



computer_set_t *computer_set_create(
    char *_class,
    int busy_executors,
    list_t *computer,
    char *display_name,
    int total_executors
    ) {
    computer_set_t *computer_set_local_var = malloc(sizeof(computer_set_t));
    if (!computer_set_local_var) {
        return NULL;
    }
    computer_set_local_var->_class = _class;
    computer_set_local_var->busy_executors = busy_executors;
    computer_set_local_var->computer = computer;
    computer_set_local_var->display_name = display_name;
    computer_set_local_var->total_executors = total_executors;

    return computer_set_local_var;
}


void computer_set_free(computer_set_t *computer_set) {
    if(NULL == computer_set){
        return ;
    }
    listEntry_t *listEntry;
    if (computer_set->_class) {
        free(computer_set->_class);
        computer_set->_class = NULL;
    }
    if (computer_set->computer) {
        list_ForEach(listEntry, computer_set->computer) {
            hudson_master_computer_free(listEntry->data);
        }
        list_freeList(computer_set->computer);
        computer_set->computer = NULL;
    }
    if (computer_set->display_name) {
        free(computer_set->display_name);
        computer_set->display_name = NULL;
    }
    free(computer_set);
}

cJSON *computer_set_convertToJSON(computer_set_t *computer_set) {
    cJSON *item = cJSON_CreateObject();

    // computer_set->_class
    if(computer_set->_class) {
    if(cJSON_AddStringToObject(item, "_class", computer_set->_class) == NULL) {
    goto fail; //String
    }
    }


    // computer_set->busy_executors
    if(computer_set->busy_executors) {
    if(cJSON_AddNumberToObject(item, "busyExecutors", computer_set->busy_executors) == NULL) {
    goto fail; //Numeric
    }
    }


    // computer_set->computer
    if(computer_set->computer) {
    cJSON *computer = cJSON_AddArrayToObject(item, "computer");
    if(computer == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *computerListEntry;
    if (computer_set->computer) {
    list_ForEach(computerListEntry, computer_set->computer) {
    cJSON *itemLocal = hudson_master_computer_convertToJSON(computerListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(computer, itemLocal);
    }
    }
    }


    // computer_set->display_name
    if(computer_set->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", computer_set->display_name) == NULL) {
    goto fail; //String
    }
    }


    // computer_set->total_executors
    if(computer_set->total_executors) {
    if(cJSON_AddNumberToObject(item, "totalExecutors", computer_set->total_executors) == NULL) {
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

computer_set_t *computer_set_parseFromJSON(cJSON *computer_setJSON){

    computer_set_t *computer_set_local_var = NULL;

    // define the local list for computer_set->computer
    list_t *computerList = NULL;

    // computer_set->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(computer_setJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // computer_set->busy_executors
    cJSON *busy_executors = cJSON_GetObjectItemCaseSensitive(computer_setJSON, "busyExecutors");
    if (busy_executors) { 
    if(!cJSON_IsNumber(busy_executors))
    {
    goto end; //Numeric
    }
    }

    // computer_set->computer
    cJSON *computer = cJSON_GetObjectItemCaseSensitive(computer_setJSON, "computer");
    if (computer) { 
    cJSON *computer_local_nonprimitive = NULL;
    if(!cJSON_IsArray(computer)){
        goto end; //nonprimitive container
    }

    computerList = list_createList();

    cJSON_ArrayForEach(computer_local_nonprimitive,computer )
    {
        if(!cJSON_IsObject(computer_local_nonprimitive)){
            goto end;
        }
        hudson_master_computer_t *computerItem = hudson_master_computer_parseFromJSON(computer_local_nonprimitive);

        list_addElement(computerList, computerItem);
    }
    }

    // computer_set->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(computer_setJSON, "displayName");
    if (display_name) { 
    if(!cJSON_IsString(display_name))
    {
    goto end; //String
    }
    }

    // computer_set->total_executors
    cJSON *total_executors = cJSON_GetObjectItemCaseSensitive(computer_setJSON, "totalExecutors");
    if (total_executors) { 
    if(!cJSON_IsNumber(total_executors))
    {
    goto end; //Numeric
    }
    }


    computer_set_local_var = computer_set_create (
        _class ? strdup(_class->valuestring) : NULL,
        busy_executors ? busy_executors->valuedouble : 0,
        computer ? computerList : NULL,
        display_name ? strdup(display_name->valuestring) : NULL,
        total_executors ? total_executors->valuedouble : 0
        );

    return computer_set_local_var;
end:
    if (computerList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, computerList) {
            hudson_master_computer_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(computerList);
        computerList = NULL;
    }
    return NULL;

}
