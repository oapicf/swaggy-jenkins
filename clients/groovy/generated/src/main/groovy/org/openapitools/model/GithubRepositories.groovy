package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;

@Canonical
class GithubRepositories {
    String propertyClass = null

    GithubRepositorieslinks links = null

    List<GithubRepository> items = new ArrayList<GithubRepository>()

    Integer lastPage = null

    Integer nextPage = null

    Integer pageSize = null

}
