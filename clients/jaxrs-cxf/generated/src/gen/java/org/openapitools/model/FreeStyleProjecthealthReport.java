package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FreeStyleProjecthealthReport  {
  
  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String iconClassName;

  @ApiModelProperty(value = "")
  private String iconUrl;

  @ApiModelProperty(value = "")
  private Integer score;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleProjecthealthReport description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get iconClassName
   * @return iconClassName
  **/
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public FreeStyleProjecthealthReport iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

 /**
   * Get iconUrl
   * @return iconUrl
  **/
  @JsonProperty("iconUrl")
  public String getIconUrl() {
    return iconUrl;
  }

  public void setIconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
  }

  public FreeStyleProjecthealthReport iconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
    return this;
  }

 /**
   * Get score
   * @return score
  **/
  @JsonProperty("score")
  public Integer getScore() {
    return score;
  }

  public void setScore(Integer score) {
    this.score = score;
  }

  public FreeStyleProjecthealthReport score(Integer score) {
    this.score = score;
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

  public FreeStyleProjecthealthReport propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProjecthealthReport {\n");
    
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
    sb.append("    iconUrl: ").append(toIndentedString(iconUrl)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
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

