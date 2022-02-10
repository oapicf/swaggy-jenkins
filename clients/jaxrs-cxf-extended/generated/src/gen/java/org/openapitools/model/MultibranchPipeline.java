package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class MultibranchPipeline  {
  
  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")
  private String latestRun;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String organization;

  @ApiModelProperty(value = "")
  private Integer weatherScore;

  @ApiModelProperty(value = "")
  private List<String> branchNames = null;

  @ApiModelProperty(value = "")
  private Integer numberOfFailingBranches;

  @ApiModelProperty(value = "")
  private Integer numberOfFailingPullRequests;

  @ApiModelProperty(value = "")
  private Integer numberOfSuccessfulBranches;

  @ApiModelProperty(value = "")
  private Integer numberOfSuccessfulPullRequests;

  @ApiModelProperty(value = "")
  private Integer totalNumberOfBranches;

  @ApiModelProperty(value = "")
  private Integer totalNumberOfPullRequests;

  @ApiModelProperty(value = "")
  private String propertyClass;
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
  public MultibranchPipeline displayName(String displayName) {
    this.displayName = displayName;
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
  public MultibranchPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
  * Get latestRun
  * @return latestRun
  */
  @JsonProperty("latestRun")
  public String getLatestRun() {
    return latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
 public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
  public MultibranchPipeline latestRun(String latestRun) {
    this.latestRun = latestRun;
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
  public MultibranchPipeline name(String name) {
    this.name = name;
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
  public MultibranchPipeline organization(String organization) {
    this.organization = organization;
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
  public MultibranchPipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
  * Get branchNames
  * @return branchNames
  */
  @JsonProperty("branchNames")
  public List<String> getBranchNames() {
    return branchNames;
  }

  /**
   * Sets the <code>branchNames</code> property.
   */
 public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  /**
   * Sets the <code>branchNames</code> property.
   */
  public MultibranchPipeline branchNames(List<String> branchNames) {
    this.branchNames = branchNames;
    return this;
  }

  /**
   * Adds a new item to the <code>branchNames</code> list.
   */
  public MultibranchPipeline addBranchNamesItem(String branchNamesItem) {
    this.branchNames.add(branchNamesItem);
    return this;
  }

 /**
  * Get numberOfFailingBranches
  * @return numberOfFailingBranches
  */
  @JsonProperty("numberOfFailingBranches")
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }

  /**
   * Sets the <code>numberOfFailingBranches</code> property.
   */
 public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  /**
   * Sets the <code>numberOfFailingBranches</code> property.
   */
  public MultibranchPipeline numberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
    return this;
  }

 /**
  * Get numberOfFailingPullRequests
  * @return numberOfFailingPullRequests
  */
  @JsonProperty("numberOfFailingPullRequests")
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }

  /**
   * Sets the <code>numberOfFailingPullRequests</code> property.
   */
 public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  /**
   * Sets the <code>numberOfFailingPullRequests</code> property.
   */
  public MultibranchPipeline numberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    return this;
  }

 /**
  * Get numberOfSuccessfulBranches
  * @return numberOfSuccessfulBranches
  */
  @JsonProperty("numberOfSuccessfulBranches")
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }

  /**
   * Sets the <code>numberOfSuccessfulBranches</code> property.
   */
 public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  /**
   * Sets the <code>numberOfSuccessfulBranches</code> property.
   */
  public MultibranchPipeline numberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    return this;
  }

 /**
  * Get numberOfSuccessfulPullRequests
  * @return numberOfSuccessfulPullRequests
  */
  @JsonProperty("numberOfSuccessfulPullRequests")
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }

  /**
   * Sets the <code>numberOfSuccessfulPullRequests</code> property.
   */
 public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  /**
   * Sets the <code>numberOfSuccessfulPullRequests</code> property.
   */
  public MultibranchPipeline numberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    return this;
  }

 /**
  * Get totalNumberOfBranches
  * @return totalNumberOfBranches
  */
  @JsonProperty("totalNumberOfBranches")
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }

  /**
   * Sets the <code>totalNumberOfBranches</code> property.
   */
 public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  /**
   * Sets the <code>totalNumberOfBranches</code> property.
   */
  public MultibranchPipeline totalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
    return this;
  }

 /**
  * Get totalNumberOfPullRequests
  * @return totalNumberOfPullRequests
  */
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  /**
   * Sets the <code>totalNumberOfPullRequests</code> property.
   */
 public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  /**
   * Sets the <code>totalNumberOfPullRequests</code> property.
   */
  public MultibranchPipeline totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

