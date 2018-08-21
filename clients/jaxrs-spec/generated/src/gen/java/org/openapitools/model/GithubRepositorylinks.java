package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubRepositorylinks   {
  
  private @Valid Link self = null;
  private @Valid String propertyClass = null;

  /**
   **/
  public GithubRepositorylinks self(Link self) {
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
  public GithubRepositorylinks propertyClass(String propertyClass) {
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
    GithubRepositorylinks githubRepositorylinks = (GithubRepositorylinks) o;
    return Objects.equals(self, githubRepositorylinks.self) &&
        Objects.equals(propertyClass, githubRepositorylinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorylinks {\n");
    
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

