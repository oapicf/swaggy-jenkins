package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonMasterComputer;
import java.util.List;
@Canonical
class ComputerSet {

    String propertyClass = null

    Integer busyExecutors = null

    List<HudsonMasterComputer> computer = new ArrayList<HudsonMasterComputer>()

    String displayName = null

    Integer totalExecutors = null
  

}

