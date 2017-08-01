package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class HudsonmodelFreeStyleProjecthealthReport   {
  
  private String description = null;
  private String iconClassName = null;
  private String iconUrl = null;
  private Integer score = null;
  private String propertyClass = null;

  /**
   **/
  public HudsonmodelFreeStyleProjecthealthReport description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public HudsonmodelFreeStyleProjecthealthReport iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }
  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   **/
  public HudsonmodelFreeStyleProjecthealthReport iconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("iconUrl")
  public String getIconUrl() {
    return iconUrl;
  }
  public void setIconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
  }

  /**
   **/
  public HudsonmodelFreeStyleProjecthealthReport score(Integer score) {
    this.score = score;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("score")
  public Integer getScore() {
    return score;
  }
  public void setScore(Integer score) {
    this.score = score;
  }

  /**
   **/
  public HudsonmodelFreeStyleProjecthealthReport propertyClass(String propertyClass) {
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
    HudsonmodelFreeStyleProjecthealthReport hudsonmodelFreeStyleProjecthealthReport = (HudsonmodelFreeStyleProjecthealthReport) o;
    return Objects.equals(description, hudsonmodelFreeStyleProjecthealthReport.description) &&
        Objects.equals(iconClassName, hudsonmodelFreeStyleProjecthealthReport.iconClassName) &&
        Objects.equals(iconUrl, hudsonmodelFreeStyleProjecthealthReport.iconUrl) &&
        Objects.equals(score, hudsonmodelFreeStyleProjecthealthReport.score) &&
        Objects.equals(propertyClass, hudsonmodelFreeStyleProjecthealthReport.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(description, iconClassName, iconUrl, score, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelFreeStyleProjecthealthReport {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

