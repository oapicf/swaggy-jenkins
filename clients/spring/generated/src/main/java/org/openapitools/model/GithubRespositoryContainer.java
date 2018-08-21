package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubRepositories;
import org.openapitools.model.GithubRespositoryContainerlinks;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * GithubRespositoryContainer
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2018-08-21T02:15:19.934Z[GMT]")

public class GithubRespositoryContainer   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private GithubRespositoryContainerlinks links = null;

  @JsonProperty("repositories")
  private GithubRepositories repositories = null;

  public GithubRespositoryContainer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRespositoryContainer links(GithubRespositoryContainerlinks links) {
    this.links = links;
    return this;
  }

  /**
   * Get links
   * @return links
  **/
  @ApiModelProperty(value = "")

  @Valid

  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  public GithubRespositoryContainer repositories(GithubRepositories repositories) {
    this.repositories = repositories;
    return this;
  }

  /**
   * Get repositories
   * @return repositories
  **/
  @ApiModelProperty(value = "")

  @Valid

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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

