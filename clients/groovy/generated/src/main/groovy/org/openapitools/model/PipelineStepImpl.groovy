package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.InputStepImpl;
import org.openapitools.model.PipelineStepImpllinks;

@Canonical
class PipelineStepImpl {
    
    String propertyClass
    
    PipelineStepImpllinks links
    
    String displayName
    
    Integer durationInMillis
    
    String id
    
    InputStepImpl input
    
    String result
    
    String startTime
    
    String state
}
