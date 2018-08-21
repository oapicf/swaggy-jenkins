package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineBranchesitemlatestRun;
import org.openapitools.model.PipelineBranchesitempullRequest;

@Canonical
class PipelineBranchesitem {
    String displayName = null

    Integer estimatedDurationInMillis = null

    String name = null

    Integer weatherScore = null

    PipelineBranchesitemlatestRun latestRun = null

    String organization = null

    PipelineBranchesitempullRequest pullRequest = null

    Integer totalNumberOfPullRequests = null

    String propertyClass = null

}
