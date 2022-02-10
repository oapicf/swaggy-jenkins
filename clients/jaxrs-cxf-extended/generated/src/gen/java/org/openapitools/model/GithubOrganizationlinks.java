package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubOrganizationlinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link repositories;

  @ApiModelProperty(value = "")
  @Valid
  private Link self;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get repositories
  * @return repositories
  */
  @JsonProperty("repositories")
  public Link getRepositories() {
    return repositories;
  }

  /**
   * Sets the <code>repositories</code> property.
   */
 public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }

  /**
   * Sets the <code>repositories</code> property.
   */
  public GithubOrganizationlinks repositories(Link repositories) {
    this.repositories = repositories;
    return this;
  }

 /**
  * Get self
  * @return self
  */
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }

  /**
   * Sets the <code>self</code> property.
   */
 public void setSelf(Link self) {
    this.self = self;
  }

  /**
   * Sets the <code>self</code> property.
   */
  public GithubOrganizationlinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
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

