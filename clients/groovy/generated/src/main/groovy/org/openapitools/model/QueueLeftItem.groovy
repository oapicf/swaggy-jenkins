package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

@Canonical
class QueueLeftItem {
    
    String propertyClass
    
    List<CauseAction> actions
    
    Boolean blocked
    
    Boolean buildable
    
    Integer id
    
    Integer inQueueSince
    
    String params
    
    Boolean stuck
    
    FreeStyleProject task
    
    String url
    
    String why
    
    Boolean cancelled
    
    FreeStyleBuild executable
}
