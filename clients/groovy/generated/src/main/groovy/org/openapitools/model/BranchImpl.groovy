package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;

@Canonical
class BranchImpl {
    
    String propertyClass
    
    String displayName
    
    Integer estimatedDurationInMillis
    
    String fullDisplayName
    
    String fullName
    
    String name
    
    String organization
    
    List<StringParameterDefinition> parameters = new ArrayList<>()
    
    BranchImplpermissions permissions
    
    Integer weatherScore
    
    String pullRequest
    
    BranchImpllinks links
    
    PipelineRunImpl latestRun
}
