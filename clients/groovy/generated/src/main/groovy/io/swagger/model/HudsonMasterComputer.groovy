package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonMasterComputerexecutors;
import io.swagger.model.HudsonMasterComputermonitorData;
import io.swagger.model.Label1;
import java.util.List;
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

