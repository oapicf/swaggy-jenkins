package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.InputStepImpllinks;
import org.openapitools.model.StringParameterDefinition;

@Canonical
class InputStepImpl {
    
    String propertyClass
    
    InputStepImpllinks links
    
    String id
    
    String message
    
    String ok
    
    List<StringParameterDefinition> parameters = new ArrayList<>()
    
    String submitter
}
