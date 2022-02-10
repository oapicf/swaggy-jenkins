/*
 * pipelinelatest_runartifacts.h
 *
 * 
 */

#ifndef _pipelinelatest_runartifacts_H_
#define _pipelinelatest_runartifacts_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pipelinelatest_runartifacts_t pipelinelatest_runartifacts_t;




typedef struct pipelinelatest_runartifacts_t {
    char *name; // string
    int size; //numeric
    char *url; // string
    char *_class; // string

} pipelinelatest_runartifacts_t;

pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_create(
    char *name,
    int size,
    char *url,
    char *_class
);

void pipelinelatest_runartifacts_free(pipelinelatest_runartifacts_t *pipelinelatest_runartifacts);

pipelinelatest_runartifacts_t *pipelinelatest_runartifacts_parseFromJSON(cJSON *pipelinelatest_runartifactsJSON);

cJSON *pipelinelatest_runartifacts_convertToJSON(pipelinelatest_runartifacts_t *pipelinelatest_runartifacts);

#endif /* _pipelinelatest_runartifacts_H_ */

