package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PipelineRunartifacts;

@Canonical
class PipelineRun {
    
    String propertyClass
    
    List<PipelineRunartifacts> artifacts = new ArrayList<>()
    
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
}
