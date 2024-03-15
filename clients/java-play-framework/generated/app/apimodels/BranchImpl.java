package apimodels;

import apimodels.BranchImpllinks;
import apimodels.BranchImplpermissions;
import apimodels.PipelineRunImpl;
import apimodels.StringParameterDefinition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
import javax.validation.Valid;
/**
 * BranchImpl
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2024-03-15T14:12:54.149422212Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class BranchImpl   {
  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("displayName")
  
  private String displayName;

  @JsonProperty("estimatedDurationInMillis")
  
  private Integer estimatedDurationInMillis;

  @JsonProperty("fullDisplayName")
  
  private String fullDisplayName;

  @JsonProperty("fullName")
  
  private String fullName;

  @JsonProperty("name")
  
  private String name;

  @JsonProperty("organization")
  
  private String organization;

  @JsonProperty("parameters")
  @Valid

  private List<@Valid StringParameterDefinition> parameters = null;

  @JsonProperty("permissions")
  @Valid

  private BranchImplpermissions permissions;

  @JsonProperty("weatherScore")
  
  private Integer weatherScore;

  @JsonProperty("pullRequest")
  
  private String pullRequest;

  @JsonProperty("_links")
  @Valid

  private BranchImpllinks links;

  @JsonProperty("latestRun")
  @Valid

  private PipelineRunImpl latestRun;

  public BranchImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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

  public BranchImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

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

  public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
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

  public BranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

   /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public BranchImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

   /**
   * Get fullName
   * @return fullName
  **/
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public BranchImpl name(String name) {
    this.name = name;
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

  public BranchImpl organization(String organization) {
    this.organization = organization;
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

  public BranchImpl parameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
    if (this.parameters == null) {
      this.parameters = new ArrayList<>();
    }
    this.parameters.add(parametersItem);
    return this;
  }

   /**
   * Get parameters
   * @return parameters
  **/
  public List<@Valid StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public BranchImpl permissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
    return this;
  }

   /**
   * Get permissions
   * @return permissions
  **/
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

  public BranchImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
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

  public BranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

   /**
   * Get pullRequest
   * @return pullRequest
  **/
  public String getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  public BranchImpl links(BranchImpllinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  public BranchImpllinks getLinks() {
    return links;
  }

  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  public BranchImpl latestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
    return this;
  }

   /**
   * Get latestRun
   * @return latestRun
  **/
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
    return Objects.equals(propertyClass, branchImpl.propertyClass) &&
        Objects.equals(displayName, branchImpl.displayName) &&
        Objects.equals(estimatedDurationInMillis, branchImpl.estimatedDurationInMillis) &&
        Objects.equals(fullDisplayName, branchImpl.fullDisplayName) &&
        Objects.equals(fullName, branchImpl.fullName) &&
        Objects.equals(name, branchImpl.name) &&
        Objects.equals(organization, branchImpl.organization) &&
        Objects.equals(parameters, branchImpl.parameters) &&
        Objects.equals(permissions, branchImpl.permissions) &&
        Objects.equals(weatherScore, branchImpl.weatherScore) &&
        Objects.equals(pullRequest, branchImpl.pullRequest) &&
        Objects.equals(links, branchImpl.links) &&
        Objects.equals(latestRun, branchImpl.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullDisplayName, fullName, name, organization, parameters, permissions, weatherScore, pullRequest, links, latestRun);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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

