package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.PipelineRunNodeedges;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PipelineRunNode   {
  
  private String propertyClass;
  private String displayName;
  private Integer durationInMillis;
  private List<PipelineRunNodeedges> edges = new ArrayList<>();
  private String id;
  private String result;
  private String startTime;
  private String state;

  public PipelineRunNode () {

  }

  public PipelineRunNode (String propertyClass, String displayName, Integer durationInMillis, List<PipelineRunNodeedges> edges, String id, String result, String startTime, String state) {
    this.propertyClass = propertyClass;
    this.displayName = displayName;
    this.durationInMillis = durationInMillis;
    this.edges = edges;
    this.id = id;
    this.result = result;
    this.startTime = startTime;
    this.state = state;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

    
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }
  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

    
  @JsonProperty("edges")
  public List<PipelineRunNodeedges> getEdges() {
    return edges;
  }
  public void setEdges(List<PipelineRunNodeedges> edges) {
    this.edges = edges;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("result")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineRunNode pipelineRunNode = (PipelineRunNode) o;
    return Objects.equals(propertyClass, pipelineRunNode.propertyClass) &&
        Objects.equals(displayName, pipelineRunNode.displayName) &&
        Objects.equals(durationInMillis, pipelineRunNode.durationInMillis) &&
        Objects.equals(edges, pipelineRunNode.edges) &&
        Objects.equals(id, pipelineRunNode.id) &&
        Objects.equals(result, pipelineRunNode.result) &&
        Objects.equals(startTime, pipelineRunNode.startTime) &&
        Objects.equals(state, pipelineRunNode.state);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, durationInMillis, edges, id, result, startTime, state);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunNode {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
    sb.append("    edges: ").append(toIndentedString(edges)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
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
