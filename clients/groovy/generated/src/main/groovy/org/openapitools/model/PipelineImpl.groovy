package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineImpllinks;

@Canonical
class PipelineImpl {
    
    String propertyClass
    
    String displayName
    
    Integer estimatedDurationInMillis
    
    String fullName
    
    String latestRun
    
    String name
    
    String organization
    
    Integer weatherScore
    
    PipelineImpllinks links
}
