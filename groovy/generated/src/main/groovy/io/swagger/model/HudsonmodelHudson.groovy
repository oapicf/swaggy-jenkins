package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelAllView;
import io.swagger.model.HudsonmodelFreeStyleProject;
import io.swagger.model.HudsonmodelHudsonassignedLabels;
import io.swagger.model.JenkinsmodelUnlabeledLoadStatistics;
import java.util.List;
@Canonical
class HudsonmodelHudson {

    String propertyClass = null

    List<HudsonmodelHudsonassignedLabels> assignedLabels = new ArrayList<HudsonmodelHudsonassignedLabels>()

    String mode = null

    String nodeDescription = null

    String nodeName = null

    Integer numExecutors = null

    String description = null

    List<HudsonmodelFreeStyleProject> jobs = new ArrayList<HudsonmodelFreeStyleProject>()

    HudsonmodelAllView primaryView = null

    Boolean quietingDown = null

    Integer slaveAgentPort = null

    JenkinsmodelUnlabeledLoadStatistics unlabeledLoad = null

    Boolean useCrumbs = null

    Boolean useSecurity = null

    List<HudsonmodelAllView> views = new ArrayList<HudsonmodelAllView>()
  

}

