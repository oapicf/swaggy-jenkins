package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
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
  */
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  /**
   * Sets the <code>description</code> property.
   */
 public void setDescription(String description) {
    this.description = description;
  }

  /**
   * Sets the <code>description</code> property.
   */
  public FreeStyleProjecthealthReport description(String description) {
    this.description = description;
    return this;
  }

 /**
  * Get iconClassName
  * @return iconClassName
  */
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }

  /**
   * Sets the <code>iconClassName</code> property.
   */
 public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   * Sets the <code>iconClassName</code> property.
   */
  public FreeStyleProjecthealthReport iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

 /**
  * Get iconUrl
  * @return iconUrl
  */
  @JsonProperty("iconUrl")
  public String getIconUrl() {
    return iconUrl;
  }

  /**
   * Sets the <code>iconUrl</code> property.
   */
 public void setIconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
  }

  /**
   * Sets the <code>iconUrl</code> property.
   */
  public FreeStyleProjecthealthReport iconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
    return this;
  }

 /**
  * Get score
  * @return score
  */
  @JsonProperty("score")
  public Integer getScore() {
    return score;
  }

  /**
   * Sets the <code>score</code> property.
   */
 public void setScore(Integer score) {
    this.score = score;
  }

  /**
   * Sets the <code>score</code> property.
   */
  public FreeStyleProjecthealthReport score(Integer score) {
    this.score = score;
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

