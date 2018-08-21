package apimodels;

import apimodels.PipelineRunNodeedges;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * PipelineRunNode
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T02:12:05.971Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class PipelineRunNode   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("durationInMillis")
  private Integer durationInMillis = null;

  @JsonProperty("edges")
  private List<PipelineRunNodeedges> edges = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("result")
  private String result = null;

  @JsonProperty("startTime")
  private String startTime = null;

  @JsonProperty("state")
  private String state = null;

  public PipelineRunNode propertyClass(String propertyClass) {
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

  public PipelineRunNode displayName(String displayName) {
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

  public PipelineRunNode durationInMillis(Integer durationInMillis) {
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

  public PipelineRunNode edges(List<PipelineRunNodeedges> edges) {
    this.edges = edges;
    return this;
  }

  public PipelineRunNode addEdgesItem(PipelineRunNodeedges edgesItem) {
    if (edges == null) {
      edges = new ArrayList<>();
    }
    edges.add(edgesItem);
    return this;
  }

   /**
   * Get edges
   * @return edges
  **/
  @Valid
  public List<PipelineRunNodeedges> getEdges() {
    return edges;
  }

  public void setEdges(List<PipelineRunNodeedges> edges) {
    this.edges = edges;
  }

  public PipelineRunNode id(String id) {
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

  public PipelineRunNode result(String result) {
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

  public PipelineRunNode startTime(String startTime) {
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

  public PipelineRunNode state(String state) {
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


  @Override
  public boolean equals(java.lang.Object o) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

