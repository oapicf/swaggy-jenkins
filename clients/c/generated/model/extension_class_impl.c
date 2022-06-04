#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "extension_class_impl.h"



extension_class_impl_t *extension_class_impl_create(
    char *_class,
    extension_class_impllinks_t *_links,
    list_t *classes
    ) {
    extension_class_impl_t *extension_class_impl_local_var = malloc(sizeof(extension_class_impl_t));
    if (!extension_class_impl_local_var) {
        return NULL;
    }
    extension_class_impl_local_var->_class = _class;
    extension_class_impl_local_var->_links = _links;
    extension_class_impl_local_var->classes = classes;

    return extension_class_impl_local_var;
}


void extension_class_impl_free(extension_class_impl_t *extension_class_impl) {
    if(NULL == extension_class_impl){
        return ;
    }
    listEntry_t *listEntry;
    if (extension_class_impl->_class) {
        free(extension_class_impl->_class);
        extension_class_impl->_class = NULL;
    }
    if (extension_class_impl->_links) {
        extension_class_impllinks_free(extension_class_impl->_links);
        extension_class_impl->_links = NULL;
    }
    if (extension_class_impl->classes) {
        list_ForEach(listEntry, extension_class_impl->classes) {
            free(listEntry->data);
        }
        list_freeList(extension_class_impl->classes);
        extension_class_impl->classes = NULL;
    }
    free(extension_class_impl);
}

cJSON *extension_class_impl_convertToJSON(extension_class_impl_t *extension_class_impl) {
    cJSON *item = cJSON_CreateObject();

    // extension_class_impl->_class
    if(extension_class_impl->_class) {
    if(cJSON_AddStringToObject(item, "_class", extension_class_impl->_class) == NULL) {
    goto fail; //String
    }
    }


    // extension_class_impl->_links
    if(extension_class_impl->_links) {
    cJSON *_links_local_JSON = extension_class_impllinks_convertToJSON(extension_class_impl->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // extension_class_impl->classes
    if(extension_class_impl->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *classesListEntry;
    list_ForEach(classesListEntry, extension_class_impl->classes) {
    if(cJSON_AddStringToObject(classes, "", (char*)classesListEntry->data) == NULL)
    {
        goto fail;
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

extension_class_impl_t *extension_class_impl_parseFromJSON(cJSON *extension_class_implJSON){

    extension_class_impl_t *extension_class_impl_local_var = NULL;

    // define the local variable for extension_class_impl->_links
    extension_class_impllinks_t *_links_local_nonprim = NULL;

    // define the local list for extension_class_impl->classes
    list_t *classesList = NULL;

    // extension_class_impl->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(extension_class_implJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // extension_class_impl->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(extension_class_implJSON, "_links");
    if (_links) { 
    _links_local_nonprim = extension_class_impllinks_parseFromJSON(_links); //nonprimitive
    }

    // extension_class_impl->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(extension_class_implJSON, "classes");
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


    extension_class_impl_local_var = extension_class_impl_create (
        _class ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return extension_class_impl_local_var;
end:
    if (_links_local_nonprim) {
        extension_class_impllinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
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
