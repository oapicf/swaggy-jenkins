/*
 * github_content.h
 *
 * 
 */

#ifndef _github_content_H_
#define _github_content_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct github_content_t github_content_t;




typedef struct github_content_t {
    char *name; // string
    char *sha; // string
    char *_class; // string
    char *repo; // string
    int size; //numeric
    char *owner; // string
    char *path; // string
    char *base64_data; // string

} github_content_t;

github_content_t *github_content_create(
    char *name,
    char *sha,
    char *_class,
    char *repo,
    int size,
    char *owner,
    char *path,
    char *base64_data
);

void github_content_free(github_content_t *github_content);

github_content_t *github_content_parseFromJSON(cJSON *github_contentJSON);

cJSON *github_content_convertToJSON(github_content_t *github_content);

#endif /* _github_content_H_ */

