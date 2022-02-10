package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.PipelineRunImpllinks;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PipelineRunImpl   {
  
  private String propertyClass;
  private PipelineRunImpllinks links;
  private Integer durationInMillis;
  private String enQueueTime;
  private String endTime;
  private Integer estimatedDurationInMillis;
  private String id;
  private String organization;
  private String pipeline;
  private String result;
  private String runSummary;
  private String startTime;
  private String state;
  private String type;
  private String commitId;

  public PipelineRunImpl () {

  }

  public PipelineRunImpl (String propertyClass, PipelineRunImpllinks links, Integer durationInMillis, String enQueueTime, String endTime, Integer estimatedDurationInMillis, String id, String organization, String pipeline, String result, String runSummary, String startTime, String state, String type, String commitId) {
    this.propertyClass = propertyClass;
    this.links = links;
    this.durationInMillis = durationInMillis;
    this.enQueueTime = enQueueTime;
    this.endTime = endTime;
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    this.id = id;
    this.organization = organization;
    this.pipeline = pipeline;
    this.result = result;
    this.runSummary = runSummary;
    this.startTime = startTime;
    this.state = state;
    this.type = type;
    this.commitId = commitId;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public PipelineRunImpllinks getLinks() {
    return links;
  }
  public void setLinks(PipelineRunImpllinks links) {
    this.links = links;
  }

    
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }
  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

    
  @JsonProperty("enQueueTime")
  public String getEnQueueTime() {
    return enQueueTime;
  }
  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

    
  @JsonProperty("endTime")
  public String getEndTime() {
    return endTime;
  }
  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

    
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

    
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }
  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

    
  @JsonProperty("result")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
  }

    
  @JsonProperty("runSummary")
  public String getRunSummary() {
    return runSummary;
  }
  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

    
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }
  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

    
  @JsonProperty("state")
  public String getState() {
    return state;
  }
  public void setState(String state) {
    this.state = state;
  }

    
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

    
  @JsonProperty("commitId")
  public String getCommitId() {
    return commitId;
  }
  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineRunImpl pipelineRunImpl = (PipelineRunImpl) o;
    return Objects.equals(propertyClass, pipelineRunImpl.propertyClass) &&
        Objects.equals(links, pipelineRunImpl.links) &&
        Objects.equals(durationInMillis, pipelineRunImpl.durationInMillis) &&
        Objects.equals(enQueueTime, pipelineRunImpl.enQueueTime) &&
        Objects.equals(endTime, pipelineRunImpl.endTime) &&
        Objects.equals(estimatedDurationInMillis, pipelineRunImpl.estimatedDurationInMillis) &&
        Objects.equals(id, pipelineRunImpl.id) &&
        Objects.equals(organization, pipelineRunImpl.organization) &&
        Objects.equals(pipeline, pipelineRunImpl.pipeline) &&
        Objects.equals(result, pipelineRunImpl.result) &&
        Objects.equals(runSummary, pipelineRunImpl.runSummary) &&
        Objects.equals(startTime, pipelineRunImpl.startTime) &&
        Objects.equals(state, pipelineRunImpl.state) &&
        Objects.equals(type, pipelineRunImpl.type) &&
        Objects.equals(commitId, pipelineRunImpl.commitId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, durationInMillis, enQueueTime, endTime, estimatedDurationInMillis, id, organization, pipeline, result, runSummary, startTime, state, type, commitId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
    sb.append("    enQueueTime: ").append(toIndentedString(enQueueTime)).append("\n");
    sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    runSummary: ").append(toIndentedString(runSummary)).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    commitId: ").append(toIndentedString(commitId)).append("\n");
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
