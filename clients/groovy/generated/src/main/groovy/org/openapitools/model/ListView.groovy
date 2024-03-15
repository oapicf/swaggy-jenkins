package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.FreeStyleProject;

@Canonical
class ListView {
    
    String propertyClass
    
    String description
    
    List<FreeStyleProject> jobs
    
    String name
    
    String url
}
