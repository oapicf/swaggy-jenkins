#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "classes_by_class.h"



classes_by_class_t *classes_by_class_create(
    list_t *classes,
    char *_class
    ) {
    classes_by_class_t *classes_by_class_local_var = malloc(sizeof(classes_by_class_t));
    if (!classes_by_class_local_var) {
        return NULL;
    }
    classes_by_class_local_var->classes = classes;
    classes_by_class_local_var->_class = _class;

    return classes_by_class_local_var;
}


void classes_by_class_free(classes_by_class_t *classes_by_class) {
    if(NULL == classes_by_class){
        return ;
    }
    listEntry_t *listEntry;
    if (classes_by_class->classes) {
        list_ForEach(listEntry, classes_by_class->classes) {
            free(listEntry->data);
        }
        list_freeList(classes_by_class->classes);
        classes_by_class->classes = NULL;
    }
    if (classes_by_class->_class) {
        free(classes_by_class->_class);
        classes_by_class->_class = NULL;
    }
    free(classes_by_class);
}

cJSON *classes_by_class_convertToJSON(classes_by_class_t *classes_by_class) {
    cJSON *item = cJSON_CreateObject();

    // classes_by_class->classes
    if(classes_by_class->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *classesListEntry;
    list_ForEach(classesListEntry, classes_by_class->classes) {
    if(cJSON_AddStringToObject(classes, "", (char*)classesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // classes_by_class->_class
    if(classes_by_class->_class) {
    if(cJSON_AddStringToObject(item, "_class", classes_by_class->_class) == NULL) {
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

classes_by_class_t *classes_by_class_parseFromJSON(cJSON *classes_by_classJSON){

    classes_by_class_t *classes_by_class_local_var = NULL;

    // define the local list for classes_by_class->classes
    list_t *classesList = NULL;

    // classes_by_class->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(classes_by_classJSON, "classes");
    if (classes) { 
    cJSON *classes_local = NULL;
    if(!cJSON_IsArray(classes)) {
        goto end;//primitive container
    }
    classesList = list_createList();

    cJSON_ArrayForEach(classes_local, classes)
    {
        if(!cJSON_IsString(classes_local))
        {
            goto end;
        }
        list_addElement(classesList , strdup(classes_local->valuestring));
    }
    }

    // classes_by_class->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(classes_by_classJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    classes_by_class_local_var = classes_by_class_create (
        classes ? classesList : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return classes_by_class_local_var;
end:
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
