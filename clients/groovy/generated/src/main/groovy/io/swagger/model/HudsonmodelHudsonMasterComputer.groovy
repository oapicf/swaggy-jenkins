package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelHudsonMasterComputerMonitorData;
import io.swagger.model.HudsonmodelHudsonMasterComputerexecutors;
import io.swagger.model.HudsonmodelLabel1;
import java.util.List;
@Canonical
class HudsonmodelHudsonMasterComputer {

    String propertyClass = null

    String displayName = null

    List<HudsonmodelHudsonMasterComputerexecutors> executors = new ArrayList<HudsonmodelHudsonMasterComputerexecutors>()

    String icon = null

    String iconClassName = null

    Boolean idle = null

    Boolean jnlpAgent = null

    Boolean launchSupported = null

    HudsonmodelLabel1 loadStatistics = null

    Boolean manualLaunchAllowed = null

    HudsonmodelHudsonMasterComputerMonitorData monitorData = null

    Integer numExecutors = null

    Boolean offline = null

    String offlineCause = null

    String offlineCauseReason = null

    Boolean temporarilyOffline = null
  

}

