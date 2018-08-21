package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubRepositories;
import org.openapitools.model.GithubRespositoryContainerlinks;

@Canonical
class GithubRespositoryContainer {
    String propertyClass = null

    GithubRespositoryContainerlinks links = null

    GithubRepositories repositories = null

}
