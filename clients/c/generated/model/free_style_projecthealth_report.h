/*
 * free_style_projecthealth_report.h
 *
 * 
 */

#ifndef _free_style_projecthealth_report_H_
#define _free_style_projecthealth_report_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct free_style_projecthealth_report_t free_style_projecthealth_report_t;




typedef struct free_style_projecthealth_report_t {
    char *description; // string
    char *icon_class_name; // string
    char *icon_url; // string
    int score; //numeric
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} free_style_projecthealth_report_t;

__attribute__((deprecated)) free_style_projecthealth_report_t *free_style_projecthealth_report_create(
    char *description,
    char *icon_class_name,
    char *icon_url,
    int score,
    char *_class
);

void free_style_projecthealth_report_free(free_style_projecthealth_report_t *free_style_projecthealth_report);

free_style_projecthealth_report_t *free_style_projecthealth_report_parseFromJSON(cJSON *free_style_projecthealth_reportJSON);

cJSON *free_style_projecthealth_report_convertToJSON(free_style_projecthealth_report_t *free_style_projecthealth_report);

#endif /* _free_style_projecthealth_report_H_ */

