package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubRepositorylinks;
import org.openapitools.model.GithubRepositorypermissions;

@Canonical
class GithubRepository {
    
    String propertyClass
    
    GithubRepositorylinks links
    
    String defaultBranch
    
    String description
    
    String name
    
    GithubRepositorypermissions permissions
    
    Boolean _private
    
    String fullName
}
