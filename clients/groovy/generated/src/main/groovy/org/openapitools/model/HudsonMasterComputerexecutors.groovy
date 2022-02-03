package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FreeStyleBuild;

@Canonical
class HudsonMasterComputerexecutors {
    
    FreeStyleBuild currentExecutable
    
    Boolean idle
    
    Boolean likelyStuck
    
    Integer number
    
    Integer progress
    
    String propertyClass
}
