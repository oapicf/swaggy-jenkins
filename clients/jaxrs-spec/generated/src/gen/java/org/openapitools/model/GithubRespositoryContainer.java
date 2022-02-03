package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubRepositories;
import org.openapitools.model.GithubRespositoryContainerlinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("GithubRespositoryContainer")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class GithubRespositoryContainer   {
  
  private @Valid String propertyClass;
  private @Valid GithubRespositoryContainerlinks links;
  private @Valid GithubRepositories repositories;

  /**
   **/
  public GithubRespositoryContainer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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
  @JsonProperty("_links")
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
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
  @JsonProperty("repositories")
  public GithubRepositories getRepositories() {
    return repositories;
  }

  @JsonProperty("repositories")
  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRespositoryContainer githubRespositoryContainer = (GithubRespositoryContainer) o;
    return Objects.equals(this.propertyClass, githubRespositoryContainer.propertyClass) &&
        Objects.equals(this.links, githubRespositoryContainer.links) &&
        Objects.equals(this.repositories, githubRespositoryContainer.repositories);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

