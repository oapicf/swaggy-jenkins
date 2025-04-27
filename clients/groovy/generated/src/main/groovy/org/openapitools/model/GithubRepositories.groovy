package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;

@Canonical
class GithubRepositories {
    
    String propertyClass
    
    GithubRepositorieslinks links
    
    List<GithubRepository> items = new ArrayList<>()
    
    Integer lastPage
    
    Integer nextPage
    
    Integer pageSize
}
