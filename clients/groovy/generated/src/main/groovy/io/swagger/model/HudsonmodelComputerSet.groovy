package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelHudsonMasterComputer;
import java.util.List;
@Canonical
class HudsonmodelComputerSet {

    String propertyClass = null

    Integer busyExecutors = null

    List<HudsonmodelHudsonMasterComputer> computer = new ArrayList<HudsonmodelHudsonMasterComputer>()

    String displayName = null

    Integer totalExecutors = null
  

}

