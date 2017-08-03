package io.swagger.model;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class MultibranchPipeline  {
  
  @ApiModelProperty(value = "")
  private String displayName = null;
  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis = null;
  @ApiModelProperty(value = "")
  private String latestRun = null;
  @ApiModelProperty(value = "")
  private String name = null;
  @ApiModelProperty(value = "")
  private String organization = null;
  @ApiModelProperty(value = "")
  private Integer weatherScore = null;
  @ApiModelProperty(value = "")
  private List<String> branchNames = new ArrayList<String>();
  @ApiModelProperty(value = "")
  private Integer numberOfFailingBranches = null;
  @ApiModelProperty(value = "")
  private Integer numberOfFailingPullRequests = null;
  @ApiModelProperty(value = "")
  private Integer numberOfSuccessfulBranches = null;
  @ApiModelProperty(value = "")
  private Integer numberOfSuccessfulPullRequests = null;
  @ApiModelProperty(value = "")
  private Integer totalNumberOfBranches = null;
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

  public MultibranchPipeline displayName(String displayName) {
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

  public MultibranchPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  public String getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  public MultibranchPipeline latestRun(String latestRun) {
    this.latestRun = latestRun;
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

  public MultibranchPipeline name(String name) {
    this.name = name;
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

  public MultibranchPipeline organization(String organization) {
    this.organization = organization;
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

  public MultibranchPipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get branchNames
   * @return branchNames
  **/
  public List<String> getBranchNames() {
    return branchNames;
  }

  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  public MultibranchPipeline branchNames(List<String> branchNames) {
    this.branchNames = branchNames;
    return this;
  }

  public MultibranchPipeline addBranchNamesItem(String branchNamesItem) {
    this.branchNames.add(branchNamesItem);
    return this;
  }

 /**
   * Get numberOfFailingBranches
   * @return numberOfFailingBranches
  **/
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }

  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  public MultibranchPipeline numberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
    return this;
  }

 /**
   * Get numberOfFailingPullRequests
   * @return numberOfFailingPullRequests
  **/
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }

  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  public MultibranchPipeline numberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    return this;
  }

 /**
   * Get numberOfSuccessfulBranches
   * @return numberOfSuccessfulBranches
  **/
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }

  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  public MultibranchPipeline numberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    return this;
  }

 /**
   * Get numberOfSuccessfulPullRequests
   * @return numberOfSuccessfulPullRequests
  **/
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }

  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  public MultibranchPipeline numberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    return this;
  }

 /**
   * Get totalNumberOfBranches
   * @return totalNumberOfBranches
  **/
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }

  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  public MultibranchPipeline totalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
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

  public MultibranchPipeline totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
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

  public MultibranchPipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MultibranchPipeline {\n");
    
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    branchNames: ").append(toIndentedString(branchNames)).append("\n");
    sb.append("    numberOfFailingBranches: ").append(toIndentedString(numberOfFailingBranches)).append("\n");
    sb.append("    numberOfFailingPullRequests: ").append(toIndentedString(numberOfFailingPullRequests)).append("\n");
    sb.append("    numberOfSuccessfulBranches: ").append(toIndentedString(numberOfSuccessfulBranches)).append("\n");
    sb.append("    numberOfSuccessfulPullRequests: ").append(toIndentedString(numberOfSuccessfulPullRequests)).append("\n");
    sb.append("    totalNumberOfBranches: ").append(toIndentedString(totalNumberOfBranches)).append("\n");
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

