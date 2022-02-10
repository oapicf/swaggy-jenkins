/*
 * github_file.h
 *
 * 
 */

#ifndef _github_file_H_
#define _github_file_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_file_t github_file_t;

#include "github_content.h"



typedef struct github_file_t {
    struct github_content_t *content; //model
    char *_class; // string

} github_file_t;

github_file_t *github_file_create(
    github_content_t *content,
    char *_class
);

void github_file_free(github_file_t *github_file);

github_file_t *github_file_parseFromJSON(cJSON *github_fileJSON);

cJSON *github_file_convertToJSON(github_file_t *github_file);

#endif /* _github_file_H_ */

