package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class BranchImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")
  private String fullDisplayName;

  @ApiModelProperty(value = "")
  private String fullName;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String organization;

  @ApiModelProperty(value = "")
  @Valid
  private List<StringParameterDefinition> parameters = null;

  @ApiModelProperty(value = "")
  @Valid
  private BranchImplpermissions permissions;

  @ApiModelProperty(value = "")
  private Integer weatherScore;

  @ApiModelProperty(value = "")
  private String pullRequest;

  @ApiModelProperty(value = "")
  @Valid
  private BranchImpllinks links;

  @ApiModelProperty(value = "")
  @Valid
  private PipelineRunImpl latestRun;
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
  public BranchImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

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
  public BranchImpl displayName(String displayName) {
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
  public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
  * Get fullDisplayName
  * @return fullDisplayName
  */
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
 public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
  public BranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
  * Get fullName
  * @return fullName
  */
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
 public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
  public BranchImpl fullName(String fullName) {
    this.fullName = fullName;
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
  public BranchImpl name(String name) {
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
  public BranchImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
  * Get parameters
  * @return parameters
  */
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  /**
   * Sets the <code>parameters</code> property.
   */
 public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   * Sets the <code>parameters</code> property.
   */
  public BranchImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  /**
   * Adds a new item to the <code>parameters</code> list.
   */
  public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
    this.parameters.add(parametersItem);
    return this;
  }

 /**
  * Get permissions
  * @return permissions
  */
  @JsonProperty("permissions")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  /**
   * Sets the <code>permissions</code> property.
   */
 public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

  /**
   * Sets the <code>permissions</code> property.
   */
  public BranchImpl permissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
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
  public BranchImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
  * Get pullRequest
  * @return pullRequest
  */
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }

  /**
   * Sets the <code>pullRequest</code> property.
   */
 public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  /**
   * Sets the <code>pullRequest</code> property.
   */
  public BranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public BranchImpllinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public BranchImpl links(BranchImpllinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get latestRun
  * @return latestRun
  */
  @JsonProperty("latestRun")
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
 public void setLatestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
  }

  /**
   * Sets the <code>latestRun</code> property.
   */
  public BranchImpl latestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    parameters: ").append(toIndentedString(parameters)).append("\n");
    sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    pullRequest: ").append(toIndentedString(pullRequest)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

