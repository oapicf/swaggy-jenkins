package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.GithubRepositories;
import org.openapitools.vertxweb.server.model.GithubRespositoryContainerlinks;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class GithubRespositoryContainer   {
  
  private String propertyClass;
  private GithubRespositoryContainerlinks links;
  private GithubRepositories repositories;

  public GithubRespositoryContainer () {

  }

  public GithubRespositoryContainer (String propertyClass, GithubRespositoryContainerlinks links, GithubRepositories repositories) {
    this.propertyClass = propertyClass;
    this.links = links;
    this.repositories = repositories;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }
  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

    
  @JsonProperty("repositories")
  public GithubRepositories getRepositories() {
    return repositories;
  }
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
