package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProjectactions;
import io.swagger.model.FreeStyleProjecthealthReport;
import io.swagger.model.NullSCM;
import java.util.List;
@Canonical
class FreeStyleProject {

    String propertyClass = null

    String name = null

    String url = null

    String color = null

    List<FreeStyleProjectactions> actions = new ArrayList<FreeStyleProjectactions>()

    String description = null

    String displayName = null

    String displayNameOrNull = null

    String fullDisplayName = null

    String fullName = null

    Boolean buildable = null

    List<FreeStyleBuild> builds = new ArrayList<FreeStyleBuild>()

    FreeStyleBuild firstBuild = null

    List<FreeStyleProjecthealthReport> healthReport = new ArrayList<FreeStyleProjecthealthReport>()

    Boolean inQueue = null

    Boolean keepDependencies = null

    FreeStyleBuild lastBuild = null

    FreeStyleBuild lastCompletedBuild = null

    String lastFailedBuild = null

    FreeStyleBuild lastStableBuild = null

    FreeStyleBuild lastSuccessfulBuild = null

    String lastUnstableBuild = null

    String lastUnsuccessfulBuild = null

    Integer nextBuildNumber = null

    String queueItem = null

    Boolean concurrentBuild = null

    NullSCM scm = null
  

}

