package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.FreeStyleProject;
import java.util.List;
@Canonical
class ListView {

    String propertyClass = null

    String description = null

    List<FreeStyleProject> jobs = new ArrayList<FreeStyleProject>()

    String name = null

    String url = null
  

}

