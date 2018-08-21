package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;

@Canonical
class HudsonMasterComputer {
    String propertyClass = null

    String displayName = null

    List<HudsonMasterComputerexecutors> executors = new ArrayList<HudsonMasterComputerexecutors>()

    String icon = null

    String iconClassName = null

    Boolean idle = null

    Boolean jnlpAgent = null

    Boolean launchSupported = null

    Label1 loadStatistics = null

    Boolean manualLaunchAllowed = null

    HudsonMasterComputermonitorData monitorData = null

    Integer numExecutors = null

    Boolean offline = null

    String offlineCause = null

    String offlineCauseReason = null

    Boolean temporarilyOffline = null

}
