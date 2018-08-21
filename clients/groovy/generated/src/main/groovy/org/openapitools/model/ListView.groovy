package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.FreeStyleProject;

@Canonical
class ListView {
    String propertyClass = null

    String description = null

    List<FreeStyleProject> jobs = new ArrayList<FreeStyleProject>()

    String name = null

    String url = null

}
