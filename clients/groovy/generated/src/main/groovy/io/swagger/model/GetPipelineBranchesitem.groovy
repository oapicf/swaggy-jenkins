package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.GetPipelineBranchesitemLatestRun;
import io.swagger.model.GetPipelineBranchesitemPullRequest;
@Canonical
class GetPipelineBranchesitem {

    String displayName = null

    Integer estimatedDurationInMillis = null

    String name = null

    Integer weatherScore = null

    GetPipelineBranchesitemLatestRun latestRun = null

    String organization = null

    GetPipelineBranchesitemPullRequest pullRequest = null

    Integer totalNumberOfPullRequests = null

    String propertyClass = null
  

}

