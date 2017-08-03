package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.GithubRepositorieslinks;
import io.swagger.model.GithubRepository;
import java.util.List;
@Canonical
class GithubRepositories {

    String propertyClass = null

    GithubRepositorieslinks links = null

    List<GithubRepository> items = new ArrayList<GithubRepository>()

    Integer lastPage = null

    Integer nextPage = null

    Integer pageSize = null
  

}

