/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 2.0.1-pre.0
 * Maintained by: blah+oapicf@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelinelatestRun;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2024-03-15T14:13:06.635705781Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class Pipeline   {
  
  private String propertyClass;
  private String organization;
  private String name;
  private String displayName;
  private String fullName;
  private Integer weatherScore;
  private Integer estimatedDurationInMillis;
  private PipelinelatestRun latestRun;

  /**
   */
  public Pipeline propertyClass(String propertyClass) {
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

  /**
   */
  public Pipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   */
  public Pipeline name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   */
  public Pipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   */
  public Pipeline fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   */
  public Pipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   */
  public Pipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   */
  public Pipeline latestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public PipelinelatestRun getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(PipelinelatestRun latestRun) {
    this.latestRun = latestRun;
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
    return Objects.equals(propertyClass, pipeline.propertyClass) &&
        Objects.equals(organization, pipeline.organization) &&
        Objects.equals(name, pipeline.name) &&
        Objects.equals(displayName, pipeline.displayName) &&
        Objects.equals(fullName, pipeline.fullName) &&
        Objects.equals(weatherScore, pipeline.weatherScore) &&
        Objects.equals(estimatedDurationInMillis, pipeline.estimatedDurationInMillis) &&
        Objects.equals(latestRun, pipeline.latestRun);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

