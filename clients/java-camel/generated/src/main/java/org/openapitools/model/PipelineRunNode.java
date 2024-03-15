package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.PipelineRunNodeedges;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PipelineRunNode
 */

@Generated(value = "org.openapitools.codegen.languages.JavaCamelServerCodegen", date = "2024-03-15T14:13:46.253868088Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class PipelineRunNode {

  private String propertyClass;

  private String displayName;

  private Integer durationInMillis;

  @Valid
  private List<@Valid PipelineRunNodeedges> edges;

  private String id;

  private String result;

  private String startTime;

  private String state;

  public PipelineRunNode propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelineRunNode displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
  */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public PipelineRunNode durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

  /**
   * Get durationInMillis
   * @return durationInMillis
  */
  
  @Schema(name = "durationInMillis", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public PipelineRunNode edges(List<@Valid PipelineRunNodeedges> edges) {
    this.edges = edges;
    return this;
  }

  public PipelineRunNode addEdgesItem(PipelineRunNodeedges edgesItem) {
    if (this.edges == null) {
      this.edges = new ArrayList<>();
    }
    this.edges.add(edgesItem);
    return this;
  }

  /**
   * Get edges
   * @return edges
  */
  @Valid 
  @Schema(name = "edges", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("edges")
  public List<@Valid PipelineRunNodeedges> getEdges() {
    return edges;
  }

  public void setEdges(List<@Valid PipelineRunNodeedges> edges) {
    this.edges = edges;
  }

  public PipelineRunNode id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
  */
  
  @Schema(name = "id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public PipelineRunNode result(String result) {
    this.result = result;
    return this;
  }

  /**
   * Get result
   * @return result
  */
  
  @Schema(name = "result", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public PipelineRunNode startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

  /**
   * Get startTime
   * @return startTime
  */
  
  @Schema(name = "startTime", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public PipelineRunNode state(String state) {
    this.state = state;
    return this;
  }

  /**
   * Get state
   * @return state
  */
  
  @Schema(name = "state", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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
    return Objects.equals(this.propertyClass, pipelineRunNode.propertyClass) &&
        Objects.equals(this.displayName, pipelineRunNode.displayName) &&
        Objects.equals(this.durationInMillis, pipelineRunNode.durationInMillis) &&
        Objects.equals(this.edges, pipelineRunNode.edges) &&
        Objects.equals(this.id, pipelineRunNode.id) &&
        Objects.equals(this.result, pipelineRunNode.result) &&
        Objects.equals(this.startTime, pipelineRunNode.startTime) &&
        Objects.equals(this.state, pipelineRunNode.state);
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

