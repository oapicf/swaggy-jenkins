package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.GithubRepositorylinks;
import io.swagger.model.GithubRepositorypermissions;
@Canonical
class GithubRepository {

    String propertyClass = null

    GithubRepositorylinks links = null

    String defaultBranch = null

    String description = null

    String name = null

    GithubRepositorypermissions permissions = null

    Boolean _private = null

    String fullName = null
  

}

