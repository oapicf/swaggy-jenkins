package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;

@Canonical
class FreeStyleBuild {
    
    String propertyClass
    
    Integer number
    
    String url
    
    List<CauseAction> actions = new ArrayList<>()
    
    Boolean building
    
    String description
    
    String displayName
    
    Integer duration
    
    Integer estimatedDuration
    
    String executor
    
    String fullDisplayName
    
    String id
    
    Boolean keepLog
    
    Integer queueId
    
    String result
    
    Integer timestamp
    
    String builtOn
    
    EmptyChangeLogSet changeSet
}
