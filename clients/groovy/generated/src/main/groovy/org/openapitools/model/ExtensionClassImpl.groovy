package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ExtensionClassImpllinks;

@Canonical
class ExtensionClassImpl {
    String propertyClass = null

    ExtensionClassImpllinks links = null

    List<String> classes = new ArrayList<String>()

}
