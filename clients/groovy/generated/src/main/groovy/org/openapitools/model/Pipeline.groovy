package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelinelatestRun;

@Canonical
class Pipeline {
    
    String propertyClass
    
    String organization
    
    String name
    
    String displayName
    
    String fullName
    
    Integer weatherScore
    
    Integer estimatedDurationInMillis
    
    PipelinelatestRun latestRun
}
