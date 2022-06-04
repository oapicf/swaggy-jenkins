package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleProject;

@Canonical
class QueueBlockedItem {
    
    String propertyClass
    
    List<CauseAction> actions = new ArrayList<>()
    
    Boolean blocked
    
    Boolean buildable
    
    Integer id
    
    Integer inQueueSince
    
    String params
    
    Boolean stuck
    
    FreeStyleProject task
    
    String url
    
    String why
    
    Integer buildableStartMilliseconds
}
