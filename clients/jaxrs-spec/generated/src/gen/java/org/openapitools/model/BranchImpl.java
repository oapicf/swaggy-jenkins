package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("BranchImpl")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-09T13:05:51.152086Z[Etc/UTC]")public class BranchImpl   {
  
  private @Valid String propertyClass;
  private @Valid String displayName;
  private @Valid Integer estimatedDurationInMillis;
  private @Valid String fullDisplayName;
  private @Valid String fullName;
  private @Valid String name;
  private @Valid String organization;
  private @Valid List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>();
  private @Valid BranchImplpermissions permissions;
  private @Valid Integer weatherScore;
  private @Valid String pullRequest;
  private @Valid BranchImpllinks links;
  private @Valid PipelineRunImpl latestRun;

  /**
   **/
  public BranchImpl propertyClass(String propertyClass) {
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

/**
   **/
  public BranchImpl displayName(String displayName) {
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
  public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
  public BranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  @JsonProperty("fullDisplayName")
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

/**
   **/
  public BranchImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  @JsonProperty("fullName")
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

/**
   **/
  public BranchImpl name(String name) {
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
  public BranchImpl organization(String organization) {
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
  public BranchImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  @JsonProperty("parameters")
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
    if (this.parameters == null) {
      this.parameters = new ArrayList<StringParameterDefinition>();
    }

    this.parameters.add(parametersItem);
    return this;
  }

  public BranchImpl removeParametersItem(StringParameterDefinition parametersItem) {
    if (parametersItem != null && this.parameters != null) {
      this.parameters.remove(parametersItem);
    }

    return this;
  }
/**
   **/
  public BranchImpl permissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("permissions")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  @JsonProperty("permissions")
  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

/**
   **/
  public BranchImpl weatherScore(Integer weatherScore) {
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
  public BranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }

  @JsonProperty("pullRequest")
  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

/**
   **/
  public BranchImpl links(BranchImpllinks links) {
    this.links = links;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public BranchImpllinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

/**
   **/
  public BranchImpl latestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }

  @JsonProperty("latestRun")
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
    return Objects.equals(this.propertyClass, branchImpl.propertyClass) &&
        Objects.equals(this.displayName, branchImpl.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, branchImpl.estimatedDurationInMillis) &&
        Objects.equals(this.fullDisplayName, branchImpl.fullDisplayName) &&
        Objects.equals(this.fullName, branchImpl.fullName) &&
        Objects.equals(this.name, branchImpl.name) &&
        Objects.equals(this.organization, branchImpl.organization) &&
        Objects.equals(this.parameters, branchImpl.parameters) &&
        Objects.equals(this.permissions, branchImpl.permissions) &&
        Objects.equals(this.weatherScore, branchImpl.weatherScore) &&
        Objects.equals(this.pullRequest, branchImpl.pullRequest) &&
        Objects.equals(this.links, branchImpl.links) &&
        Objects.equals(this.latestRun, branchImpl.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullDisplayName, fullName, name, organization, parameters, permissions, weatherScore, pullRequest, links, latestRun);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

