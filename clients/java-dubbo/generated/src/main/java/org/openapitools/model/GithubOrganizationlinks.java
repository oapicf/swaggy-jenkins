package org.openapitools.model;

import org.openapitools.model.Link;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class GithubOrganizationlinks implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("repositories")
  private Link repositories;

  @JsonProperty("self")
  private Link self;

  @JsonProperty("_class")
  private String propertyClass;

  /**
   * 
   * @return repositories
   */
  public Link getRepositories() {
    return repositories;
  }

  public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }

  /**
   * 
   * @return self
   */
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  /**
   * 
   * @return propertyClass
   */
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
    return Objects.equals(this.repositories, githubOrganizationlinks.repositories) &&
        Objects.equals(this.self, githubOrganizationlinks.self) &&
        Objects.equals(this.propertyClass, githubOrganizationlinks.propertyClass);
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
