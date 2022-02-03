package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FavoriteImpllinks;
import org.openapitools.model.PipelineImpl;

@Canonical
class FavoriteImpl {
    
    String propertyClass
    
    FavoriteImpllinks links
    
    PipelineImpl item
}
