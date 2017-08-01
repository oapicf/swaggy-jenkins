package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.SwaggyjenkinsPipelineLatestRun;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * SwaggyjenkinsPipeline
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class SwaggyjenkinsPipeline   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("fullName")
  private String fullName = null;

  @JsonProperty("weatherScore")
  private Integer weatherScore = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("latestRun")
  private SwaggyjenkinsPipelineLatestRun latestRun = null;

  public SwaggyjenkinsPipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public SwaggyjenkinsPipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

   /**
   * Get organization
   * @return organization
  **/
  @ApiModelProperty(value = "")


  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public SwaggyjenkinsPipeline name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(value = "")


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public SwaggyjenkinsPipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
  @ApiModelProperty(value = "")


  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public SwaggyjenkinsPipeline fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

   /**
   * Get fullName
   * @return fullName
  **/
  @ApiModelProperty(value = "")


  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public SwaggyjenkinsPipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

   /**
   * Get weatherScore
   * @return weatherScore
  **/
  @ApiModelProperty(value = "")


  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public SwaggyjenkinsPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

   /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  @ApiModelProperty(value = "")


  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public SwaggyjenkinsPipeline latestRun(SwaggyjenkinsPipelineLatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

   /**
   * Get latestRun
   * @return latestRun
  **/
  @ApiModelProperty(value = "")

  @Valid

  public SwaggyjenkinsPipelineLatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(SwaggyjenkinsPipelineLatestRun latestRun) {
    this.latestRun = latestRun;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SwaggyjenkinsPipeline swaggyjenkinsPipeline = (SwaggyjenkinsPipeline) o;
    return Objects.equals(this.propertyClass, swaggyjenkinsPipeline.propertyClass) &&
        Objects.equals(this.organization, swaggyjenkinsPipeline.organization) &&
        Objects.equals(this.name, swaggyjenkinsPipeline.name) &&
        Objects.equals(this.displayName, swaggyjenkinsPipeline.displayName) &&
        Objects.equals(this.fullName, swaggyjenkinsPipeline.fullName) &&
        Objects.equals(this.weatherScore, swaggyjenkinsPipeline.weatherScore) &&
        Objects.equals(this.estimatedDurationInMillis, swaggyjenkinsPipeline.estimatedDurationInMillis) &&
        Objects.equals(this.latestRun, swaggyjenkinsPipeline.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, organization, name, displayName, fullName, weatherScore, estimatedDurationInMillis, latestRun);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwaggyjenkinsPipeline {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

