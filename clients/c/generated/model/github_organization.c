#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "github_organization.h"



github_organization_t *github_organization_create(
    char *_class,
    github_organizationlinks_t *_links,
    int jenkins_organization_pipeline,
    char *name
    ) {
    github_organization_t *github_organization_local_var = malloc(sizeof(github_organization_t));
    if (!github_organization_local_var) {
        return NULL;
    }
    github_organization_local_var->_class = _class;
    github_organization_local_var->_links = _links;
    github_organization_local_var->jenkins_organization_pipeline = jenkins_organization_pipeline;
    github_organization_local_var->name = name;

    return github_organization_local_var;
}


void github_organization_free(github_organization_t *github_organization) {
    if(NULL == github_organization){
        return ;
    }
    listEntry_t *listEntry;
    if (github_organization->_class) {
        free(github_organization->_class);
        github_organization->_class = NULL;
    }
    if (github_organization->_links) {
        github_organizationlinks_free(github_organization->_links);
        github_organization->_links = NULL;
    }
    if (github_organization->name) {
        free(github_organization->name);
        github_organization->name = NULL;
    }
    free(github_organization);
}

cJSON *github_organization_convertToJSON(github_organization_t *github_organization) {
    cJSON *item = cJSON_CreateObject();

    // github_organization->_class
    if(github_organization->_class) {
    if(cJSON_AddStringToObject(item, "_class", github_organization->_class) == NULL) {
    goto fail; //String
    }
    }


    // github_organization->_links
    if(github_organization->_links) {
    cJSON *_links_local_JSON = github_organizationlinks_convertToJSON(github_organization->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // github_organization->jenkins_organization_pipeline
    if(github_organization->jenkins_organization_pipeline) {
    if(cJSON_AddBoolToObject(item, "jenkinsOrganizationPipeline", github_organization->jenkins_organization_pipeline) == NULL) {
    goto fail; //Bool
    }
    }


    // github_organization->name
    if(github_organization->name) {
    if(cJSON_AddStringToObject(item, "name", github_organization->name) == NULL) {
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

github_organization_t *github_organization_parseFromJSON(cJSON *github_organizationJSON){

    github_organization_t *github_organization_local_var = NULL;

    // define the local variable for github_organization->_links
    github_organizationlinks_t *_links_local_nonprim = NULL;

    // github_organization->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(github_organizationJSON, "_class");
    if (_class) { 
    if(!cJSON_IsString(_class))
    {
    goto end; //String
    }
    }

    // github_organization->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(github_organizationJSON, "_links");
    if (_links) { 
    _links_local_nonprim = github_organizationlinks_parseFromJSON(_links); //nonprimitive
    }

    // github_organization->jenkins_organization_pipeline
    cJSON *jenkins_organization_pipeline = cJSON_GetObjectItemCaseSensitive(github_organizationJSON, "jenkinsOrganizationPipeline");
    if (jenkins_organization_pipeline) { 
    if(!cJSON_IsBool(jenkins_organization_pipeline))
    {
    goto end; //Bool
    }
    }

    // github_organization->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(github_organizationJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }


    github_organization_local_var = github_organization_create (
        _class ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        jenkins_organization_pipeline ? jenkins_organization_pipeline->valueint : 0,
        name ? strdup(name->valuestring) : NULL
        );

    return github_organization_local_var;
end:
    if (_links_local_nonprim) {
        github_organizationlinks_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
