package org.openapitools.model;

import org.openapitools.model.PipelineImpllinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineImpl  {
  
  @ApiModelProperty(value = "")

  private String propertyClass;

  @ApiModelProperty(value = "")

  private String displayName;

  @ApiModelProperty(value = "")

  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")

  private String fullName;

  @ApiModelProperty(value = "")

  private String latestRun;

  @ApiModelProperty(value = "")

  private String name;

  @ApiModelProperty(value = "")

  private String organization;

  @ApiModelProperty(value = "")

  private Integer weatherScore;

  @ApiModelProperty(value = "")

  private PipelineImpllinks links;
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

  public PipelineImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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

  public PipelineImpl displayName(String displayName) {
    this.displayName = displayName;
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

  public PipelineImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
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

  public PipelineImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  @JsonProperty("latestRun")
  public String getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  public PipelineImpl latestRun(String latestRun) {
    this.latestRun = latestRun;
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

  public PipelineImpl name(String name) {
    this.name = name;
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

  public PipelineImpl organization(String organization) {
    this.organization = organization;
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

  public PipelineImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public PipelineImpllinks getLinks() {
    return links;
  }

  public void setLinks(PipelineImpllinks links) {
    this.links = links;
  }

  public PipelineImpl links(PipelineImpllinks links) {
    this.links = links;
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
    PipelineImpl pipelineImpl = (PipelineImpl) o;
    return Objects.equals(this.propertyClass, pipelineImpl.propertyClass) &&
        Objects.equals(this.displayName, pipelineImpl.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, pipelineImpl.estimatedDurationInMillis) &&
        Objects.equals(this.fullName, pipelineImpl.fullName) &&
        Objects.equals(this.latestRun, pipelineImpl.latestRun) &&
        Objects.equals(this.name, pipelineImpl.name) &&
        Objects.equals(this.organization, pipelineImpl.organization) &&
        Objects.equals(this.weatherScore, pipelineImpl.weatherScore) &&
        Objects.equals(this.links, pipelineImpl.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullName, latestRun, name, organization, weatherScore, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

