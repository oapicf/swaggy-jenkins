package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.ExtensionClassImpllinks;
import java.util.List;
@Canonical
class ExtensionClassImpl {

    String propertyClass = null

    ExtensionClassImpllinks links = null

    List<String> classes = new ArrayList<String>()
  

}

