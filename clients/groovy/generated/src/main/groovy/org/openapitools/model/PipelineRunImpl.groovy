package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineRunImpllinks;

@Canonical
class PipelineRunImpl {
    
    String propertyClass
    
    PipelineRunImpllinks links
    
    Integer durationInMillis
    
    String enQueueTime
    
    String endTime
    
    Integer estimatedDurationInMillis
    
    String id
    
    String organization
    
    String pipeline
    
    String result
    
    String runSummary
    
    String startTime
    
    String state
    
    String type
    
    String commitId
}
