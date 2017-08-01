package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.GetPipelineBranchesitemLatestRun;
import io.swagger.model.GetPipelineBranchesitemPullRequest;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class GetPipelineBranchesitem   {
  
  private String displayName = null;
  private Integer estimatedDurationInMillis = null;
  private String name = null;
  private Integer weatherScore = null;
  private GetPipelineBranchesitemLatestRun latestRun = null;
  private String organization = null;
  private GetPipelineBranchesitemPullRequest pullRequest = null;
  private Integer totalNumberOfPullRequests = null;
  private String propertyClass = null;

  /**
   **/
  public GetPipelineBranchesitem displayName(String displayName) {
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
   **/
  public GetPipelineBranchesitem estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
   **/
  public GetPipelineBranchesitem name(String name) {
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
   **/
  public GetPipelineBranchesitem weatherScore(Integer weatherScore) {
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
   **/
  public GetPipelineBranchesitem latestRun(GetPipelineBranchesitemLatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public GetPipelineBranchesitemLatestRun getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(GetPipelineBranchesitemLatestRun latestRun) {
    this.latestRun = latestRun;
  }

  /**
   **/
  public GetPipelineBranchesitem organization(String organization) {
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
   **/
  public GetPipelineBranchesitem pullRequest(GetPipelineBranchesitemPullRequest pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pullRequest")
  public GetPipelineBranchesitemPullRequest getPullRequest() {
    return pullRequest;
  }
  public void setPullRequest(GetPipelineBranchesitemPullRequest pullRequest) {
    this.pullRequest = pullRequest;
  }

  /**
   **/
  public GetPipelineBranchesitem totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }
  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  /**
   **/
  public GetPipelineBranchesitem propertyClass(String propertyClass) {
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
    GetPipelineBranchesitem getPipelineBranchesitem = (GetPipelineBranchesitem) o;
    return Objects.equals(displayName, getPipelineBranchesitem.displayName) &&
        Objects.equals(estimatedDurationInMillis, getPipelineBranchesitem.estimatedDurationInMillis) &&
        Objects.equals(name, getPipelineBranchesitem.name) &&
        Objects.equals(weatherScore, getPipelineBranchesitem.weatherScore) &&
        Objects.equals(latestRun, getPipelineBranchesitem.latestRun) &&
        Objects.equals(organization, getPipelineBranchesitem.organization) &&
        Objects.equals(pullRequest, getPipelineBranchesitem.pullRequest) &&
        Objects.equals(totalNumberOfPullRequests, getPipelineBranchesitem.totalNumberOfPullRequests) &&
        Objects.equals(propertyClass, getPipelineBranchesitem.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(displayName, estimatedDurationInMillis, name, weatherScore, latestRun, organization, pullRequest, totalNumberOfPullRequests, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetPipelineBranchesitem {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

