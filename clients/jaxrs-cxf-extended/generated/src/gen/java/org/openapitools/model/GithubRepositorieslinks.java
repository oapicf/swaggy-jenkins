package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubRepositorieslinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link self;

  @ApiModelProperty(value = "")
  private String propertyClass;
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
  public GithubRepositorieslinks self(Link self) {
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
  public GithubRepositorieslinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRepositorieslinks githubRepositorieslinks = (GithubRepositorieslinks) o;
    return Objects.equals(this.self, githubRepositorieslinks.self) &&
        Objects.equals(this.propertyClass, githubRepositorieslinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorieslinks {\n");
    
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

