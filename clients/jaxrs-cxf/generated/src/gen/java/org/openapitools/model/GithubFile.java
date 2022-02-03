package org.openapitools.model;

import org.openapitools.model.GithubContent;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

public class GithubFile  {
  
  @ApiModelProperty(value = "")
  @Valid
  private GithubContent content;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get content
   * @return content
  **/
  @JsonProperty("content")
  public GithubContent getContent() {
    return content;
  }

  public void setContent(GithubContent content) {
    this.content = content;
  }

  public GithubFile content(GithubContent content) {
    this.content = content;
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

  public GithubFile propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubFile {\n");
    
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
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

