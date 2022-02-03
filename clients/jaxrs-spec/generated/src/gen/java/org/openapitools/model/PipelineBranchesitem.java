package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineBranchesitemlatestRun;
import org.openapitools.model.PipelineBranchesitempullRequest;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("PipelineBranchesitem")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class PipelineBranchesitem   {
  
  private @Valid String displayName;
  private @Valid Integer estimatedDurationInMillis;
  private @Valid String name;
  private @Valid Integer weatherScore;
  private @Valid PipelineBranchesitemlatestRun latestRun;
  private @Valid String organization;
  private @Valid PipelineBranchesitempullRequest pullRequest;
  private @Valid Integer totalNumberOfPullRequests;
  private @Valid String propertyClass;

  /**
   **/
  public PipelineBranchesitem displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

/**
   **/
  public PipelineBranchesitem estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  @JsonProperty("estimatedDurationInMillis")
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

/**
   **/
  public PipelineBranchesitem name(String name) {
    this.name = name;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  @JsonProperty("name")
  public void setName(String name) {
    this.name = name;
  }

/**
   **/
  public PipelineBranchesitem weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }

  @JsonProperty("weatherScore")
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

/**
   **/
  public PipelineBranchesitem latestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public PipelineBranchesitemlatestRun getLatestRun() {
    return latestRun;
  }

  @JsonProperty("latestRun")
  public void setLatestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
  }

/**
   **/
  public PipelineBranchesitem organization(String organization) {
    this.organization = organization;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  @JsonProperty("organization")
  public void setOrganization(String organization) {
    this.organization = organization;
  }

/**
   **/
  public PipelineBranchesitem pullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("pullRequest")
  public PipelineBranchesitempullRequest getPullRequest() {
    return pullRequest;
  }

  @JsonProperty("pullRequest")
  public void setPullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
  }

/**
   **/
  public PipelineBranchesitem totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  @JsonProperty("totalNumberOfPullRequests")
  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

/**
   **/
  public PipelineBranchesitem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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

