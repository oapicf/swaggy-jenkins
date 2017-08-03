package io.swagger.model;

import io.swagger.model.PipelineBranchesitemlatestRun;
import io.swagger.model.PipelineBranchesitempullRequest;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class PipelineBranchesitem  {
  
  @ApiModelProperty(value = "")
  private String displayName = null;
  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis = null;
  @ApiModelProperty(value = "")
  private String name = null;
  @ApiModelProperty(value = "")
  private Integer weatherScore = null;
  @ApiModelProperty(value = "")
  private PipelineBranchesitemlatestRun latestRun = null;
  @ApiModelProperty(value = "")
  private String organization = null;
  @ApiModelProperty(value = "")
  private PipelineBranchesitempullRequest pullRequest = null;
  @ApiModelProperty(value = "")
  private Integer totalNumberOfPullRequests = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

 /**
   * Get displayName
   * @return displayName
  **/
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public PipelineBranchesitem displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public PipelineBranchesitem estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public PipelineBranchesitem name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get weatherScore
   * @return weatherScore
  **/
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public PipelineBranchesitem weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  public PipelineBranchesitemlatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
  }

  public PipelineBranchesitem latestRun(PipelineBranchesitemlatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

 /**
   * Get organization
   * @return organization
  **/
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public PipelineBranchesitem organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
   * Get pullRequest
   * @return pullRequest
  **/
  public PipelineBranchesitempullRequest getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
  }

  public PipelineBranchesitem pullRequest(PipelineBranchesitempullRequest pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

 /**
   * Get totalNumberOfPullRequests
   * @return totalNumberOfPullRequests
  **/
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  public PipelineBranchesitem totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelineBranchesitem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

