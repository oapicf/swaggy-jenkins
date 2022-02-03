package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SwapSpaceMonitorMemoryUsage2 {
    
    String propertyClass
    
    Integer availablePhysicalMemory
    
    Integer availableSwapSpace
    
    Integer totalPhysicalMemory
    
    Integer totalSwapSpace
}
