package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import java.util.List;
@Canonical
class MultibranchPipeline {

    String displayName = null

    Integer estimatedDurationInMillis = null

    String latestRun = null

    String name = null

    String organization = null

    Integer weatherScore = null

    List<String> branchNames = new ArrayList<String>()

    Integer numberOfFailingBranches = null

    Integer numberOfFailingPullRequests = null

    Integer numberOfSuccessfulBranches = null

    Integer numberOfSuccessfulPullRequests = null

    Integer totalNumberOfBranches = null

    Integer totalNumberOfPullRequests = null

    String propertyClass = null
  

}

