package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubOrganizationlinks;

@Canonical
class GithubOrganization {
    String propertyClass = null

    GithubOrganizationlinks links = null

    Boolean jenkinsOrganizationPipeline = null

    String name = null

}
