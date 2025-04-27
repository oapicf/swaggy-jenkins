package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.PipelineRunNodeedges;

@Canonical
class PipelineRunNode {
    
    String propertyClass
    
    String displayName
    
    Integer durationInMillis
    
    List<PipelineRunNodeedges> edges = new ArrayList<>()
    
    String id
    
    String result
    
    String startTime
    
    String state
}
