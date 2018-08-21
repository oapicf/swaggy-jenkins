package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;

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
