package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineBranchesitemlatestRun;
import org.openapitools.model.PipelineBranchesitempullRequest;

@Canonical
class PipelineBranchesitem {
    
    String displayName
    
    Integer estimatedDurationInMillis
    
    String name
    
    Integer weatherScore
    
    PipelineBranchesitemlatestRun latestRun
    
    String organization
    
    PipelineBranchesitempullRequest pullRequest
    
    Integer totalNumberOfPullRequests
    
    String propertyClass
}
