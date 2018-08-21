package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.Link;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class GithubOrganizationlinks   {
  
  private Link repositories = null;

  private Link self = null;

  private String propertyClass = null;


  /**
   **/
  public GithubOrganizationlinks repositories(Link repositories) {
    this.repositories = repositories;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("repositories")
  public Link getRepositories() {
    return repositories;
  }
  public void setRepositories(Link repositories) {
    this.repositories = repositories;
  }


  /**
   **/
  public GithubOrganizationlinks self(Link self) {
    this.self = self;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }


  /**
   **/
  public GithubOrganizationlinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

