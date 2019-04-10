package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Link;

/**
 * GithubOrganizationlinks
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-10T13:18:13.557Z[GMT]")
public class GithubOrganizationlinks   {
  @JsonProperty("repositories")
  private Link repositories = null;

  @JsonProperty("self")
  private Link self = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GithubOrganizationlinks repositories(Link repositories) {
    this.repositories = repositories;
    return this;
  }

   /**
   * Get repositories
   * @return repositories
  **/
  @ApiModelProperty(value = "")
  public Link getRepositories() {
    return repositories;
  }

  public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }

  public GithubOrganizationlinks self(Link self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
  @ApiModelProperty(value = "")
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public GithubOrganizationlinks propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

