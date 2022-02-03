package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PipelineBranchesitemlatestRun {
    
    Integer durationInMillis
    
    Integer estimatedDurationInMillis
    
    String enQueueTime
    
    String endTime
    
    String id
    
    String organization
    
    String pipeline
    
    String result
    
    String runSummary
    
    String startTime
    
    String state
    
    String type
    
    String commitId
    
    String propertyClass
}
