#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_projecthealth_report.h"



static free_style_projecthealth_report_t *free_style_projecthealth_report_create_internal(
    char *description,
    char *icon_class_name,
    char *icon_url,
    int score,
    char *_class
    ) {
    free_style_projecthealth_report_t *free_style_projecthealth_report_local_var = malloc(sizeof(free_style_projecthealth_report_t));
    if (!free_style_projecthealth_report_local_var) {
        return NULL;
    }
    free_style_projecthealth_report_local_var->description = description;
    free_style_projecthealth_report_local_var->icon_class_name = icon_class_name;
    free_style_projecthealth_report_local_var->icon_url = icon_url;
    free_style_projecthealth_report_local_var->score = score;
    free_style_projecthealth_report_local_var->_class = _class;

    free_style_projecthealth_report_local_var->_library_owned = 1;
    return free_style_projecthealth_report_local_var;
}

__attribute__((deprecated)) free_style_projecthealth_report_t *free_style_projecthealth_report_create(
    char *description,
    char *icon_class_name,
    char *icon_url,
    int score,
    char *_class
    ) {
    return free_style_projecthealth_report_create_internal (
        description,
        icon_class_name,
        icon_url,
        score,
        _class
        );
}

void free_style_projecthealth_report_free(free_style_projecthealth_report_t *free_style_projecthealth_report) {
    if(NULL == free_style_projecthealth_report){
        return ;
    }
    if(free_style_projecthealth_report->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "free_style_projecthealth_report_free");
        return ;
    }
    listEntry_t *listEntry;
    if (free_style_projecthealth_report->description) {
        free(free_style_projecthealth_report->description);
        free_style_projecthealth_report->description = NULL;
    }
    if (free_style_projecthealth_report->icon_class_name) {
        free(free_style_projecthealth_report->icon_class_name);
        free_style_projecthealth_report->icon_class_name = NULL;
    }
    if (free_style_projecthealth_report->icon_url) {
        free(free_style_projecthealth_report->icon_url);
        free_style_projecthealth_report->icon_url = NULL;
    }
    if (free_style_projecthealth_report->_class) {
        free(free_style_projecthealth_report->_class);
        free_style_projecthealth_report->_class = NULL;
    }
    free(free_style_projecthealth_report);
}

cJSON *free_style_projecthealth_report_convertToJSON(free_style_projecthealth_report_t *free_style_projecthealth_report) {
    cJSON *item = cJSON_CreateObject();

    // free_style_projecthealth_report->description
    if(free_style_projecthealth_report->description) {
    if(cJSON_AddStringToObject(item, "description", free_style_projecthealth_report->description) == NULL) {
    goto fail; //String
    }
    }


    // free_style_projecthealth_report->icon_class_name
    if(free_style_projecthealth_report->icon_class_name) {
    if(cJSON_AddStringToObject(item, "iconClassName", free_style_projecthealth_report->icon_class_name) == NULL) {
    goto fail; //String
    }
    }


    // free_style_projecthealth_report->icon_url
    if(free_style_projecthealth_report->icon_url) {
    if(cJSON_AddStringToObject(item, "iconUrl", free_style_projecthealth_report->icon_url) == NULL) {
    goto fail; //String
    }
    }


    // free_style_projecthealth_report->score
    if(free_style_projecthealth_report->score) {
    if(cJSON_AddNumberToObject(item, "score", free_style_projecthealth_report->score) == NULL) {
    goto fail; //Numeric
    }
    }


    // free_style_projecthealth_report->_class
    if(free_style_projecthealth_report->_class) {
    if(cJSON_AddStringToObject(item, "_class", free_style_projecthealth_report->_class) == NULL) {
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

free_style_projecthealth_report_t *free_style_projecthealth_report_parseFromJSON(cJSON *free_style_projecthealth_reportJSON){

    free_style_projecthealth_report_t *free_style_projecthealth_report_local_var = NULL;

    // free_style_projecthealth_report->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(free_style_projecthealth_reportJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // free_style_projecthealth_report->icon_class_name
    cJSON *icon_class_name = cJSON_GetObjectItemCaseSensitive(free_style_projecthealth_reportJSON, "iconClassName");
    if (cJSON_IsNull(icon_class_name)) {
        icon_class_name = NULL;
    }
    if (icon_class_name) { 
    if(!cJSON_IsString(icon_class_name) && !cJSON_IsNull(icon_class_name))
    {
    goto end; //String
    }
    }

    // free_style_projecthealth_report->icon_url
    cJSON *icon_url = cJSON_GetObjectItemCaseSensitive(free_style_projecthealth_reportJSON, "iconUrl");
    if (cJSON_IsNull(icon_url)) {
        icon_url = NULL;
    }
    if (icon_url) { 
    if(!cJSON_IsString(icon_url) && !cJSON_IsNull(icon_url))
    {
    goto end; //String
    }
    }

    // free_style_projecthealth_report->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(free_style_projecthealth_reportJSON, "score");
    if (cJSON_IsNull(score)) {
        score = NULL;
    }
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }

    // free_style_projecthealth_report->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(free_style_projecthealth_reportJSON, "_class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    free_style_projecthealth_report_local_var = free_style_projecthealth_report_create_internal (
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        icon_class_name && !cJSON_IsNull(icon_class_name) ? strdup(icon_class_name->valuestring) : NULL,
        icon_url && !cJSON_IsNull(icon_url) ? strdup(icon_url->valuestring) : NULL,
        score ? score->valuedouble : 0,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return free_style_projecthealth_report_local_var;
end:
    return NULL;

}
