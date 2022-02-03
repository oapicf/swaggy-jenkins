package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubScmlinks;

@Canonical
class GithubScm {
    
    String propertyClass
    
    GithubScmlinks links
    
    String credentialId
    
    String id
    
    String uri
}
