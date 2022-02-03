/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineBranchesitemlatestRun;
import org.openapitools.model.PipelineBranchesitempullRequest;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * PipelineBranchesitem
 */
@JsonPropertyOrder({
  PipelineBranchesitem.JSON_PROPERTY_DISPLAY_NAME,
  PipelineBranchesitem.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  PipelineBranchesitem.JSON_PROPERTY_NAME,
  PipelineBranchesitem.JSON_PROPERTY_WEATHER_SCORE,
  PipelineBranchesitem.JSON_PROPERTY_LATEST_RUN,
  PipelineBranchesitem.JSON_PROPERTY_ORGANIZATION,
  PipelineBranchesitem.JSON_PROPERTY_PULL_REQUEST,
  PipelineBranchesitem.JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS,
  PipelineBranchesitem.JSON_PROPERTY_PROPERTY_CLASS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class PipelineBranchesitem   {
  public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
  @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
  private String displayName;

  public static final String JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS = "estimatedDurationInMillis";
  @JsonProperty(JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS)
  private Integer estimatedDurationInMillis;

  public static final String JSON_PROPERTY_NAME = "name";
  @JsonProperty(JSON_PROPERTY_NAME)
  private String name;

  public static final String JSON_PROPERTY_WEATHER_SCORE = "weatherScore";
  @JsonProperty(JSON_PROPERTY_WEATHER_SCORE)
  private Integer weatherScore;

  public static final String JSON_PROPERTY_LATEST_RUN = "latestRun";
  @JsonProperty(JSON_PROPERTY_LATEST_RUN)
  private PipelineBranchesitemlatestRun latestRun;

  public static final String JSON_PROPERTY_ORGANIZATION = "organization";
  @JsonProperty(JSON_PROPERTY_ORGANIZATION)
  private String organization;

  public static final String JSON_PROPERTY_PULL_REQUEST = "pullRequest";
  @JsonProperty(JSON_PROPERTY_PULL_REQUEST)
  private PipelineBranchesitempullRequest pullRequest;

  public static final String JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS = "totalNumberOfPullRequests";
  @JsonProperty(JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS)
  private Integer totalNumberOfPullRequests;

  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public PipelineBranchesitem displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   **/
  @JsonProperty(value = "displayName")
  @ApiModelProperty(value = "")
  
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public PipelineBranchesitem estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
   **/
  @JsonProperty(value = "estimatedDurationInMillis")
  @ApiModelProperty(value = "")
  
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public PipelineBranchesitem name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  @JsonProperty(value = "name")
  @ApiModelProperty(value = "")
  
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public PipelineBranchesitem weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

  /**
   * Get weatherScore
   * @return weatherScore
   **/
  @JsonProperty(value = "weatherScore")
  @ApiModelProperty(value = "")
  
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public PipelineBranchesitem latestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  /**
   * Get latestRun
   * @return latestRun
   **/
  @JsonProperty(value = "latestRun")
  @ApiModelProperty(value = "")
  @Valid 
  public PipelineBranchesitemlatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
  }

  public PipelineBranchesitem organization(String organization) {
    this.organization = organization;
    return this;
  }

  /**
   * Get organization
   * @return organization
   **/
  @JsonProperty(value = "organization")
  @ApiModelProperty(value = "")
  
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public PipelineBranchesitem pullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

  /**
   * Get pullRequest
   * @return pullRequest
   **/
  @JsonProperty(value = "pullRequest")
  @ApiModelProperty(value = "")
  @Valid 
  public PipelineBranchesitempullRequest getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
  }

  public PipelineBranchesitem totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

  /**
   * Get totalNumberOfPullRequests
   * @return totalNumberOfPullRequests
   **/
  @JsonProperty(value = "totalNumberOfPullRequests")
  @ApiModelProperty(value = "")
  
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  public PipelineBranchesitem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineBranchesitem pipelineBranchesitem = (PipelineBranchesitem) o;
    return Objects.equals(this.displayName, pipelineBranchesitem.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, pipelineBranchesitem.estimatedDurationInMillis) &&
        Objects.equals(this.name, pipelineBranchesitem.name) &&
        Objects.equals(this.weatherScore, pipelineBranchesitem.weatherScore) &&
        Objects.equals(this.latestRun, pipelineBranchesitem.latestRun) &&
        Objects.equals(this.organization, pipelineBranchesitem.organization) &&
        Objects.equals(this.pullRequest, pipelineBranchesitem.pullRequest) &&
        Objects.equals(this.totalNumberOfPullRequests, pipelineBranchesitem.totalNumberOfPullRequests) &&
        Objects.equals(this.propertyClass, pipelineBranchesitem.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(displayName, estimatedDurationInMillis, name, weatherScore, latestRun, organization, pullRequest, totalNumberOfPullRequests, propertyClass);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitem {\n");
    
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    pullRequest: ").append(toIndentedString(pullRequest)).append("\n");
    sb.append("    totalNumberOfPullRequests: ").append(toIndentedString(totalNumberOfPullRequests)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

