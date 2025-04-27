package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;

@Canonical
class Hudson {
    
    String propertyClass
    
    List<HudsonassignedLabels> assignedLabels = new ArrayList<>()
    
    String mode
    
    String nodeDescription
    
    String nodeName
    
    Integer numExecutors
    
    String description
    
    List<FreeStyleProject> jobs = new ArrayList<>()
    
    AllView primaryView
    
    Boolean quietingDown
    
    Integer slaveAgentPort
    
    UnlabeledLoadStatistics unlabeledLoad
    
    Boolean useCrumbs
    
    Boolean useSecurity
    
    List<AllView> views = new ArrayList<>()
}
