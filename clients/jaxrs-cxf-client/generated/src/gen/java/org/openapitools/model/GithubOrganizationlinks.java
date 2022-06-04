package org.openapitools.model;

import org.openapitools.model.Link;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubOrganizationlinks  {
  
  @ApiModelProperty(value = "")
  private Link repositories;

  @ApiModelProperty(value = "")
  private Link self;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get repositories
   * @return repositories
  **/
  @JsonProperty("repositories")
  public Link getRepositories() {
    return repositories;
  }

  public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }

  public GithubOrganizationlinks repositories(Link repositories) {
    this.repositories = repositories;
    return this;
  }

 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public GithubOrganizationlinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubOrganizationlinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

