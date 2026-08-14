#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "free_style_projecthealth_report.h"



static free_style_projecthealth_report_t *free_style_projecthealth_report_create_internal(
    char *description,
    char *icon_class_name,
    char *icon_url,
    int *score,
    char *_class
    ) {
    free_style_projecthealth_report_t *free_style_projecthealth_report_local_var = malloc(sizeof(free_style_projecthealth_report_t));
    if (!free_style_projecthealth_report_local_var) {
        return NULL;
    }
    memset(free_style_projecthealth_report_local_var, 0, sizeof(free_style_projecthealth_report_t));
    free_style_projecthealth_report_local_var->_library_owned = 1;
    free_style_projecthealth_report_local_var->description = description;
    free_style_projecthealth_report_local_var->icon_class_name = icon_class_name;
    free_style_projecthealth_report_local_var->icon_url = icon_url;
    free_style_projecthealth_report_local_var->score = score;
    free_style_projecthealth_report_local_var->_class = _class;
    return free_style_projecthealth_report_local_var;
}

__attribute__((deprecated)) free_style_projecthealth_report_t *free_style_projecthealth_report_create(
    char *description,
    char *icon_class_name,
    char *icon_url,
    int *score,
    char *_class
    ) {
    int *score_copy = NULL;
    if (score) {
        score_copy = malloc(sizeof(int));
        if (score_copy) *score_copy = *score;
    }
    free_style_projecthealth_report_t *result = free_style_projecthealth_report_create_internal (
        description,
        icon_class_name,
        icon_url,
        score_copy,
        _class
        );
    if (!result) {
        free(score_copy);
    }
    return result;
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
    if (free_style_projecthealth_report->score) {
        free(free_style_projecthealth_report->score);
        free_style_projecthealth_report->score = NULL;
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
    if(cJSON_AddNumberToObject(item, "score", *free_style_projecthealth_report->score) == NULL) {
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

    char *description_local_str = NULL;

    char *icon_class_name_local_str = NULL;

    char *icon_url_local_str = NULL;

    // define the local variable for free_style_projecthealth_report->score
    int *score_local_var = NULL;

    char *_class_local_str = NULL;

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
    score_local_var = malloc(sizeof(int));
    if(!score_local_var)
    {
        goto end;
    }
    *score_local_var = score->valuedouble;
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


    if (description && !cJSON_IsNull(description)) description_local_str = strdup(description->valuestring);
    if (icon_class_name && !cJSON_IsNull(icon_class_name)) icon_class_name_local_str = strdup(icon_class_name->valuestring);
    if (icon_url && !cJSON_IsNull(icon_url)) icon_url_local_str = strdup(icon_url->valuestring);
    if (_class && !cJSON_IsNull(_class)) _class_local_str = strdup(_class->valuestring);

    free_style_projecthealth_report_local_var = free_style_projecthealth_report_create_internal (
        description_local_str,
        icon_class_name_local_str,
        icon_url_local_str,
        score_local_var,
        _class_local_str
        );

    if (!free_style_projecthealth_report_local_var) {
        goto end;
    }

    return free_style_projecthealth_report_local_var;
end:
    if (description_local_str) {
        free(description_local_str);
        description_local_str = NULL;
    }
    if (icon_class_name_local_str) {
        free(icon_class_name_local_str);
        icon_class_name_local_str = NULL;
    }
    if (icon_url_local_str) {
        free(icon_url_local_str);
        icon_url_local_str = NULL;
    }
    if (score_local_var) {
        free(score_local_var);
        score_local_var = NULL;
    }
    if (_class_local_str) {
        free(_class_local_str);
        _class_local_str = NULL;
    }
    return NULL;

}
