package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GenericResource {
    
    String propertyClass
    
    String displayName
    
    Integer durationInMillis
    
    String id
    
    String result
    
    String startTime
}
