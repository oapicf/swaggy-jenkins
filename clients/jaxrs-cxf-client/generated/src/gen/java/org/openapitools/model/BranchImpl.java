package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BranchImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;

  @ApiModelProperty(value = "")
  private String displayName = null;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis = null;

  @ApiModelProperty(value = "")
  private String fullDisplayName = null;

  @ApiModelProperty(value = "")
  private String fullName = null;

  @ApiModelProperty(value = "")
  private String name = null;

  @ApiModelProperty(value = "")
  private String organization = null;

  @ApiModelProperty(value = "")
  private List<StringParameterDefinition> parameters = null;

  @ApiModelProperty(value = "")
  private BranchImplpermissions permissions = null;

  @ApiModelProperty(value = "")
  private Integer weatherScore = null;

  @ApiModelProperty(value = "")
  private String pullRequest = null;

  @ApiModelProperty(value = "")
  private BranchImpllinks links = null;

  @ApiModelProperty(value = "")
  private PipelineRunImpl latestRun = null;
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

  public BranchImpl propertyClass(String propertyClass) {
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

  public BranchImpl displayName(String displayName) {
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

  public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public BranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
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

  public BranchImpl fullName(String fullName) {
    this.fullName = fullName;
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

  public BranchImpl name(String name) {
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

  public BranchImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
   * Get parameters
   * @return parameters
  **/
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public BranchImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
    this.parameters.add(parametersItem);
    return this;
  }

 /**
   * Get permissions
   * @return permissions
  **/
  @JsonProperty("permissions")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

  public BranchImpl permissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
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

  public BranchImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get pullRequest
   * @return pullRequest
  **/
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  public BranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public BranchImpllinks getLinks() {
    return links;
  }

  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  public BranchImpl links(BranchImpllinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  @JsonProperty("latestRun")
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
  }

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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

