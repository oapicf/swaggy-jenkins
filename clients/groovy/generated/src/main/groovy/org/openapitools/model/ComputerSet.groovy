package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.HudsonMasterComputer;

@Canonical
class ComputerSet {
    
    String propertyClass
    
    Integer busyExecutors
    
    List<HudsonMasterComputer> computer
    
    String displayName
    
    Integer totalExecutors
}
