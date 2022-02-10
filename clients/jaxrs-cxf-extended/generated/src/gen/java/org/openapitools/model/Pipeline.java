package org.openapitools.model;

import org.openapitools.model.PipelinelatestRun;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Pipeline  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String organization;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private String fullName;

  @ApiModelProperty(value = "")
  private Integer weatherScore;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")
  @Valid
  private PipelinelatestRun latestRun;
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
  public Pipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get organization
  * @return organization
  */
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  /**
   * Sets the <code>organization</code> property.
   */
 public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   * Sets the <code>organization</code> property.
   */
  public Pipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
  * Get name
  * @return name
  */
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  /**
   * Sets the <code>name</code> property.
   */
 public void setName(String name) {
    this.name = name;
  }

  /**
   * Sets the <code>name</code> property.
   */
  public Pipeline name(String name) {
    this.name = name;
    return this;
  }

 /**
  * Get displayName
  * @return displayName
  */
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
 public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
  public Pipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
  * Get fullName
  * @return fullName
  */
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
 public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
  public Pipeline fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
  * Get weatherScore
  * @return weatherScore
  */
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }

  /**
   * Sets the <code>weatherScore</code> property.
   */
 public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   * Sets the <code>weatherScore</code> property.
   */
  public Pipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
  * Get estimatedDurationInMillis
  * @return estimatedDurationInMillis
  */
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  /**
   * Sets the <code>estimatedDurationInMillis</code> property.
   */
 public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   * Sets the <code>estimatedDurationInMillis</code> property.
   */
  public Pipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
  * Get latestRun
  * @return latestRun
  */
  @JsonProperty("latestRun")
  public PipelinelatestRun getLatestRun() {
    return latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
 public void setLatestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
  public Pipeline latestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Pipeline {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
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

