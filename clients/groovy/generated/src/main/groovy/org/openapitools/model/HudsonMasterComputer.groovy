package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;

@Canonical
class HudsonMasterComputer {
    
    String propertyClass
    
    String displayName
    
    List<HudsonMasterComputerexecutors> executors = new ArrayList<>()
    
    String icon
    
    String iconClassName
    
    Boolean idle
    
    Boolean jnlpAgent
    
    Boolean launchSupported
    
    Label1 loadStatistics
    
    Boolean manualLaunchAllowed
    
    HudsonMasterComputermonitorData monitorData
    
    Integer numExecutors
    
    Boolean offline
    
    String offlineCause
    
    String offlineCauseReason
    
    Boolean temporarilyOffline
}
