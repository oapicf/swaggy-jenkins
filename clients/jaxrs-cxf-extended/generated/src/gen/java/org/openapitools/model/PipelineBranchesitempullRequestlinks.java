package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineBranchesitempullRequestlinks  {
  
  @ApiModelProperty(value = "")
  private String self;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get self
  * @return self
  */
  @JsonProperty("self")
  public String getSelf() {
    return self;
  }

  /**
   * Sets the <code>self</code> property.
   */
 public void setSelf(String self) {
    this.self = self;
  }

  /**
   * Sets the <code>self</code> property.
   */
  public PipelineBranchesitempullRequestlinks self(String self) {
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
  public PipelineBranchesitempullRequestlinks propertyClass(String propertyClass) {
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
    PipelineBranchesitempullRequestlinks pipelineBranchesitempullRequestlinks = (PipelineBranchesitempullRequestlinks) o;
    return Objects.equals(this.self, pipelineBranchesitempullRequestlinks.self) &&
        Objects.equals(this.propertyClass, pipelineBranchesitempullRequestlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitempullRequestlinks {\n");
    
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

