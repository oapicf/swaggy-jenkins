package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.AllView;
import io.swagger.model.ArrayList;
import io.swagger.model.FreeStyleProject;
import io.swagger.model.HudsonassignedLabels;
import io.swagger.model.UnlabeledLoadStatistics;
import java.util.List;
@Canonical
class Hudson {

    String propertyClass = null

    List<HudsonassignedLabels> assignedLabels = new ArrayList<HudsonassignedLabels>()

    String mode = null

    String nodeDescription = null

    String nodeName = null

    Integer numExecutors = null

    String description = null

    List<FreeStyleProject> jobs = new ArrayList<FreeStyleProject>()

    AllView primaryView = null

    Boolean quietingDown = null

    Integer slaveAgentPort = null

    UnlabeledLoadStatistics unlabeledLoad = null

    Boolean useCrumbs = null

    Boolean useSecurity = null

    List<AllView> views = new ArrayList<AllView>()
  

}

