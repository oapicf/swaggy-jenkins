package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.Link;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class GithubOrganizationlinks   {
  
  private Link repositories;
  private Link self;
  private String propertyClass;

  public GithubOrganizationlinks () {

  }

  public GithubOrganizationlinks (Link repositories, Link self, String propertyClass) {
    this.repositories = repositories;
    this.self = self;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("repositories")
  public Link getRepositories() {
    return repositories;
  }
  public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }

    
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubOrganizationlinks githubOrganizationlinks = (GithubOrganizationlinks) o;
    return Objects.equals(repositories, githubOrganizationlinks.repositories) &&
        Objects.equals(self, githubOrganizationlinks.self) &&
        Objects.equals(propertyClass, githubOrganizationlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(repositories, self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubOrganizationlinks {\n");
    
    sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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
