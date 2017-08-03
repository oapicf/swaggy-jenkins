package io.swagger.model;

import io.swagger.model.GithubRepositories;
import io.swagger.model.GithubRespositoryContainerlinks;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class GithubRespositoryContainer   {
  
  private String propertyClass = null;
  private GithubRespositoryContainerlinks links = null;
  private GithubRepositories repositories = null;

  /**
   **/
  public GithubRespositoryContainer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public GithubRespositoryContainer links(GithubRespositoryContainerlinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }
  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  /**
   **/
  public GithubRespositoryContainer repositories(GithubRepositories repositories) {
    this.repositories = repositories;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public GithubRepositories getRepositories() {
    return repositories;
  }
  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRespositoryContainer githubRespositoryContainer = (GithubRespositoryContainer) o;
    return Objects.equals(propertyClass, githubRespositoryContainer.propertyClass) &&
        Objects.equals(links, githubRespositoryContainer.links) &&
        Objects.equals(repositories, githubRespositoryContainer.repositories);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, repositories);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRespositoryContainer {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

