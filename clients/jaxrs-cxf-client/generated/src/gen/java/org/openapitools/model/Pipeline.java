package org.openapitools.model;

import org.openapitools.model.PipelinelatestRun;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
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
  private PipelinelatestRun latestRun;
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

  public Pipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get organization
   * @return organization
  **/
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public Pipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Pipeline name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public Pipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public Pipeline fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
   * Get weatherScore
   * @return weatherScore
  **/
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public Pipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public Pipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  @JsonProperty("latestRun")
  public PipelinelatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
  }

  public Pipeline latestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
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
    Pipeline pipeline = (Pipeline) o;
    return Objects.equals(this.propertyClass, pipeline.propertyClass) &&
        Objects.equals(this.organization, pipeline.organization) &&
        Objects.equals(this.name, pipeline.name) &&
        Objects.equals(this.displayName, pipeline.displayName) &&
        Objects.equals(this.fullName, pipeline.fullName) &&
        Objects.equals(this.weatherScore, pipeline.weatherScore) &&
        Objects.equals(this.estimatedDurationInMillis, pipeline.estimatedDurationInMillis) &&
        Objects.equals(this.latestRun, pipeline.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, organization, name, displayName, fullName, weatherScore, estimatedDurationInMillis, latestRun);
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

