/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.BranchImpllinks;
import org.openapitools.client.model.BranchImplpermissions;
import org.openapitools.client.model.PipelineRunImpl;
import org.openapitools.client.model.StringParameterDefinition;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class BranchImpl {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("displayName")
  private String displayName = null;
  @SerializedName("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;
  @SerializedName("fullDisplayName")
  private String fullDisplayName = null;
  @SerializedName("fullName")
  private String fullName = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("organization")
  private String organization = null;
  @SerializedName("parameters")
  private List<StringParameterDefinition> parameters = null;
  @SerializedName("permissions")
  private BranchImplpermissions permissions = null;
  @SerializedName("weatherScore")
  private Integer weatherScore = null;
  @SerializedName("pullRequest")
  private String pullRequest = null;
  @SerializedName("_links")
  private BranchImpllinks links = null;
  @SerializedName("latestRun")
  private PipelineRunImpl latestRun = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPullRequest() {
    return pullRequest;
  }
  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BranchImpllinks getLinks() {
    return links;
  }
  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BranchImpl branchImpl = (BranchImpl) o;
    return (this._class == null ? branchImpl._class == null : this._class.equals(branchImpl._class)) &&
        (this.displayName == null ? branchImpl.displayName == null : this.displayName.equals(branchImpl.displayName)) &&
        (this.estimatedDurationInMillis == null ? branchImpl.estimatedDurationInMillis == null : this.estimatedDurationInMillis.equals(branchImpl.estimatedDurationInMillis)) &&
        (this.fullDisplayName == null ? branchImpl.fullDisplayName == null : this.fullDisplayName.equals(branchImpl.fullDisplayName)) &&
        (this.fullName == null ? branchImpl.fullName == null : this.fullName.equals(branchImpl.fullName)) &&
        (this.name == null ? branchImpl.name == null : this.name.equals(branchImpl.name)) &&
        (this.organization == null ? branchImpl.organization == null : this.organization.equals(branchImpl.organization)) &&
        (this.parameters == null ? branchImpl.parameters == null : this.parameters.equals(branchImpl.parameters)) &&
        (this.permissions == null ? branchImpl.permissions == null : this.permissions.equals(branchImpl.permissions)) &&
        (this.weatherScore == null ? branchImpl.weatherScore == null : this.weatherScore.equals(branchImpl.weatherScore)) &&
        (this.pullRequest == null ? branchImpl.pullRequest == null : this.pullRequest.equals(branchImpl.pullRequest)) &&
        (this.links == null ? branchImpl.links == null : this.links.equals(branchImpl.links)) &&
        (this.latestRun == null ? branchImpl.latestRun == null : this.latestRun.equals(branchImpl.latestRun));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.displayName == null ? 0: this.displayName.hashCode());
    result = 31 * result + (this.estimatedDurationInMillis == null ? 0: this.estimatedDurationInMillis.hashCode());
    result = 31 * result + (this.fullDisplayName == null ? 0: this.fullDisplayName.hashCode());
    result = 31 * result + (this.fullName == null ? 0: this.fullName.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.organization == null ? 0: this.organization.hashCode());
    result = 31 * result + (this.parameters == null ? 0: this.parameters.hashCode());
    result = 31 * result + (this.permissions == null ? 0: this.permissions.hashCode());
    result = 31 * result + (this.weatherScore == null ? 0: this.weatherScore.hashCode());
    result = 31 * result + (this.pullRequest == null ? 0: this.pullRequest.hashCode());
    result = 31 * result + (this.links == null ? 0: this.links.hashCode());
    result = 31 * result + (this.latestRun == null ? 0: this.latestRun.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpl {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  displayName: ").append(displayName).append("\n");
    sb.append("  estimatedDurationInMillis: ").append(estimatedDurationInMillis).append("\n");
    sb.append("  fullDisplayName: ").append(fullDisplayName).append("\n");
    sb.append("  fullName: ").append(fullName).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  organization: ").append(organization).append("\n");
    sb.append("  parameters: ").append(parameters).append("\n");
    sb.append("  permissions: ").append(permissions).append("\n");
    sb.append("  weatherScore: ").append(weatherScore).append("\n");
    sb.append("  pullRequest: ").append(pullRequest).append("\n");
    sb.append("  links: ").append(links).append("\n");
    sb.append("  latestRun: ").append(latestRun).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
