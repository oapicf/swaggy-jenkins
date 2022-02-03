package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GithubContent {
    
    String name
    
    String sha
    
    String propertyClass
    
    String repo
    
    Integer size
    
    String owner
    
    String path
    
    String base64Data
}
