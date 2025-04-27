package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExtensionClassImpllinks;

@Canonical
class ExtensionClassImpl {
    
    String propertyClass
    
    ExtensionClassImpllinks links
    
    List<String> classes = new ArrayList<>()
}
