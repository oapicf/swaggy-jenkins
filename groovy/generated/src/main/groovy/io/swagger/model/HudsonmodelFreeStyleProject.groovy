package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProjectactions;
import io.swagger.model.HudsonmodelFreeStyleProjecthealthReport;
import io.swagger.model.HudsonscmNullSCM;
import java.util.List;
@Canonical
class HudsonmodelFreeStyleProject {

    String propertyClass = null

    String name = null

    String url = null

    String color = null

    List<HudsonmodelFreeStyleProjectactions> actions = new ArrayList<HudsonmodelFreeStyleProjectactions>()

    String description = null

    String displayName = null

    String displayNameOrNull = null

    String fullDisplayName = null

    String fullName = null

    Boolean buildable = null

    List<HudsonmodelFreeStyleBuild> builds = new ArrayList<HudsonmodelFreeStyleBuild>()

    HudsonmodelFreeStyleBuild firstBuild = null

    List<HudsonmodelFreeStyleProjecthealthReport> healthReport = new ArrayList<HudsonmodelFreeStyleProjecthealthReport>()

    Boolean inQueue = null

    Boolean keepDependencies = null

    HudsonmodelFreeStyleBuild lastBuild = null

    HudsonmodelFreeStyleBuild lastCompletedBuild = null

    String lastFailedBuild = null

    HudsonmodelFreeStyleBuild lastStableBuild = null

    HudsonmodelFreeStyleBuild lastSuccessfulBuild = null

    String lastUnstableBuild = null

    String lastUnsuccessfulBuild = null

    Integer nextBuildNumber = null

    String queueItem = null

    Boolean concurrentBuild = null

    HudsonscmNullSCM scm = null
  

}

