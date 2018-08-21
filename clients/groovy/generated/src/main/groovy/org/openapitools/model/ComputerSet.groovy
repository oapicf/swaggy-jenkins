package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputer;

@Canonical
class ComputerSet {
    String propertyClass = null

    Integer busyExecutors = null

    List<HudsonMasterComputer> computer = new ArrayList<HudsonMasterComputer>()

    String displayName = null

    Integer totalExecutors = null

}
