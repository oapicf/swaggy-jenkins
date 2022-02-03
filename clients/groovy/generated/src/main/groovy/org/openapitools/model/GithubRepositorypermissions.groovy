package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GithubRepositorypermissions {
    
    Boolean admin
    
    Boolean push
    
    Boolean pull
    
    String propertyClass
}
