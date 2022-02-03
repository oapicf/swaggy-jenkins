package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QueueItemImpl {
    
    String propertyClass
    
    Integer expectedBuildNumber
    
    String id
    
    String pipeline
    
    Integer queuedTime
}
