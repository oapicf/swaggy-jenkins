package apimodels;

import java.util.Objects;
import apimodels.SwaggyjenkinsPipelineLatestRunartifacts;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * SwaggyjenkinsPipelineLatestRun
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class SwaggyjenkinsPipelineLatestRun   {
  @JsonProperty("artifacts")
  private List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts = null;

  @JsonProperty("durationInMillis")
  private Integer durationInMillis = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("enQueueTime")
  private String enQueueTime = null;

  @JsonProperty("endTime")
  private String endTime = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("pipeline")
  private String pipeline = null;

  @JsonProperty("result")
  private String result = null;

  @JsonProperty("runSummary")
  private String runSummary = null;

  @JsonProperty("startTime")
  private String startTime = null;

  @JsonProperty("state")
  private String state = null;

  @JsonProperty("type")
  private String type = null;

  @JsonProperty("commitId")
  private String commitId = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public SwaggyjenkinsPipelineLatestRun artifacts(List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
    return this;
  }

  public SwaggyjenkinsPipelineLatestRun addArtifactsItem(SwaggyjenkinsPipelineLatestRunartifacts artifactsItem) {
    if (this.artifacts == null) {
      this.artifacts = new ArrayList<SwaggyjenkinsPipelineLatestRunartifacts>();
    }
    this.artifacts.add(artifactsItem);
    return this;
  }

   /**
   * Get artifacts
   * @return artifacts
  **/
    public List<SwaggyjenkinsPipelineLatestRunartifacts> getArtifacts() {
    return artifacts;
  }

  public void setArtifacts(List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  public SwaggyjenkinsPipelineLatestRun durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

   /**
   * Get durationInMillis
   * @return durationInMillis
  **/
    public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public SwaggyjenkinsPipelineLatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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

  public SwaggyjenkinsPipelineLatestRun enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

   /**
   * Get enQueueTime
   * @return enQueueTime
  **/
    public String getEnQueueTime() {
    return enQueueTime;
  }

  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  public SwaggyjenkinsPipelineLatestRun endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

   /**
   * Get endTime
   * @return endTime
  **/
    public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  public SwaggyjenkinsPipelineLatestRun id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
    public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public SwaggyjenkinsPipelineLatestRun organization(String organization) {
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

  public SwaggyjenkinsPipelineLatestRun pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

   /**
   * Get pipeline
   * @return pipeline
  **/
    public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  public SwaggyjenkinsPipelineLatestRun result(String result) {
    this.result = result;
    return this;
  }

   /**
   * Get result
   * @return result
  **/
    public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public SwaggyjenkinsPipelineLatestRun runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

   /**
   * Get runSummary
   * @return runSummary
  **/
    public String getRunSummary() {
    return runSummary;
  }

  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  public SwaggyjenkinsPipelineLatestRun startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

   /**
   * Get startTime
   * @return startTime
  **/
    public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public SwaggyjenkinsPipelineLatestRun state(String state) {
    this.state = state;
    return this;
  }

   /**
   * Get state
   * @return state
  **/
    public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public SwaggyjenkinsPipelineLatestRun type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
    public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public SwaggyjenkinsPipelineLatestRun commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }

   /**
   * Get commitId
   * @return commitId
  **/
    public String getCommitId() {
    return commitId;
  }

  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }

  public SwaggyjenkinsPipelineLatestRun propertyClass(String propertyClass) {
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
    SwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun = (SwaggyjenkinsPipelineLatestRun) o;
    return Objects.equals(this.artifacts, swaggyjenkinsPipelineLatestRun.artifacts) &&
        Objects.equals(this.durationInMillis, swaggyjenkinsPipelineLatestRun.durationInMillis) &&
        Objects.equals(this.estimatedDurationInMillis, swaggyjenkinsPipelineLatestRun.estimatedDurationInMillis) &&
        Objects.equals(this.enQueueTime, swaggyjenkinsPipelineLatestRun.enQueueTime) &&
        Objects.equals(this.endTime, swaggyjenkinsPipelineLatestRun.endTime) &&
        Objects.equals(this.id, swaggyjenkinsPipelineLatestRun.id) &&
        Objects.equals(this.organization, swaggyjenkinsPipelineLatestRun.organization) &&
        Objects.equals(this.pipeline, swaggyjenkinsPipelineLatestRun.pipeline) &&
        Objects.equals(this.result, swaggyjenkinsPipelineLatestRun.result) &&
        Objects.equals(this.runSummary, swaggyjenkinsPipelineLatestRun.runSummary) &&
        Objects.equals(this.startTime, swaggyjenkinsPipelineLatestRun.startTime) &&
        Objects.equals(this.state, swaggyjenkinsPipelineLatestRun.state) &&
        Objects.equals(this.type, swaggyjenkinsPipelineLatestRun.type) &&
        Objects.equals(this.commitId, swaggyjenkinsPipelineLatestRun.commitId) &&
        Objects.equals(this.propertyClass, swaggyjenkinsPipelineLatestRun.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(artifacts, durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwaggyjenkinsPipelineLatestRun {\n");
    
    sb.append("    artifacts: ").append(toIndentedString(artifacts)).append("\n");
    sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    enQueueTime: ").append(toIndentedString(enQueueTime)).append("\n");
    sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    runSummary: ").append(toIndentedString(runSummary)).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    commitId: ").append(toIndentedString(commitId)).append("\n");
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

