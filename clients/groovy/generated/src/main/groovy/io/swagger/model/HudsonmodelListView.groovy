package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.List;
@Canonical
class HudsonmodelListView {

    String propertyClass = null

    String description = null

    List<HudsonmodelFreeStyleProject> jobs = new ArrayList<HudsonmodelFreeStyleProject>()

    String name = null

    String url = null
  

}

