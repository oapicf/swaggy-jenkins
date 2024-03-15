#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue.h"



queue_t *queue_create(
    char *_class,
    list_t *items
    ) {
    queue_t *queue_local_var = malloc(sizeof(queue_t));
    if (!queue_local_var) {
        return NULL;
    }
    queue_local_var->_class = _class;
    queue_local_var->items = items;

    return queue_local_var;
}


void queue_free(queue_t *queue) {
    if(NULL == queue){
        return ;
    }
    listEntry_t *listEntry;
    if (queue->_class) {
        free(queue->_class);
        queue->_class = NULL;
    }
    if (queue->items) {
        list_ForEach(listEntry, queue->items) {
            queue_blocked_item_free(listEntry->data);
        }
        list_freeList(queue->items);
        queue->items = NULL;
    }
    free(queue);
}

cJSON *queue_convertToJSON(queue_t *queue) {
    cJSON *item = cJSON_CreateObject();

    // queue->_class
    if(queue->_class) {
    if(cJSON_AddStringToObject(item, "_class", queue->_class) == NULL) {
    goto fail; //String
    }
    }


    // queue->items
    if(queue->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (queue->items) {
    list_ForEach(itemsListEntry, queue->items) {
    cJSON *itemLocal = queue_blocked_item_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

queue_t *queue_parseFromJSON(cJSON *queueJSON){

    queue_t *queue_local_var = NULL;

    // define the local list for queue->items
    list_t *itemsList = NULL;

    // queue->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(queueJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // queue->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(queueJSON, "items");
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        queue_blocked_item_t *itemsItem = queue_blocked_item_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }


    queue_local_var = queue_create (
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        items ? itemsList : NULL
        );

    return queue_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            queue_blocked_item_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
