package apimodels;

import java.util.Objects;
import apimodels.GetPipelineBranchesitemLatestRun;
import apimodels.GetPipelineBranchesitemPullRequest;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * GetPipelineBranchesitem
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class GetPipelineBranchesitem   {
  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("weatherScore")
  private Integer weatherScore = null;

  @JsonProperty("latestRun")
  private GetPipelineBranchesitemLatestRun latestRun = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("pullRequest")
  private GetPipelineBranchesitemPullRequest pullRequest = null;

  @JsonProperty("totalNumberOfPullRequests")
  private Integer totalNumberOfPullRequests = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GetPipelineBranchesitem displayName(String displayName) {
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

  public GetPipelineBranchesitem estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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

  public GetPipelineBranchesitem name(String name) {
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

  public GetPipelineBranchesitem weatherScore(Integer weatherScore) {
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

  public GetPipelineBranchesitem latestRun(GetPipelineBranchesitemLatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

   /**
   * Get latestRun
   * @return latestRun
  **/
    public GetPipelineBranchesitemLatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(GetPipelineBranchesitemLatestRun latestRun) {
    this.latestRun = latestRun;
  }

  public GetPipelineBranchesitem organization(String organization) {
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

  public GetPipelineBranchesitem pullRequest(GetPipelineBranchesitemPullRequest pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

   /**
   * Get pullRequest
   * @return pullRequest
  **/
    public GetPipelineBranchesitemPullRequest getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(GetPipelineBranchesitemPullRequest pullRequest) {
    this.pullRequest = pullRequest;
  }

  public GetPipelineBranchesitem totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
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

  public GetPipelineBranchesitem propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetPipelineBranchesitem getPipelineBranchesitem = (GetPipelineBranchesitem) o;
    return Objects.equals(this.displayName, getPipelineBranchesitem.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, getPipelineBranchesitem.estimatedDurationInMillis) &&
        Objects.equals(this.name, getPipelineBranchesitem.name) &&
        Objects.equals(this.weatherScore, getPipelineBranchesitem.weatherScore) &&
        Objects.equals(this.latestRun, getPipelineBranchesitem.latestRun) &&
        Objects.equals(this.organization, getPipelineBranchesitem.organization) &&
        Objects.equals(this.pullRequest, getPipelineBranchesitem.pullRequest) &&
        Objects.equals(this.totalNumberOfPullRequests, getPipelineBranchesitem.totalNumberOfPullRequests) &&
        Objects.equals(this.propertyClass, getPipelineBranchesitem.propertyClass);
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
