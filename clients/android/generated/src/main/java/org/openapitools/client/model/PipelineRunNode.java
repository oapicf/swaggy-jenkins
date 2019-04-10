/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.PipelineRunNodeedges;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PipelineRunNode {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("displayName")
  private String displayName = null;
  @SerializedName("durationInMillis")
  private Integer durationInMillis = null;
  @SerializedName("edges")
  private List<PipelineRunNodeedges> edges = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("result")
  private String result = null;
  @SerializedName("startTime")
  private String startTime = null;
  @SerializedName("state")
  private String state = null;

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
  public Integer getDurationInMillis() {
    return durationInMillis;
  }
  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<PipelineRunNodeedges> getEdges() {
    return edges;
  }
  public void setEdges(List<PipelineRunNodeedges> edges) {
    this.edges = edges;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getStartTime() {
    return startTime;
  }
  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this._class == null ? pipelineRunNode._class == null : this._class.equals(pipelineRunNode._class)) &&
        (this.displayName == null ? pipelineRunNode.displayName == null : this.displayName.equals(pipelineRunNode.displayName)) &&
        (this.durationInMillis == null ? pipelineRunNode.durationInMillis == null : this.durationInMillis.equals(pipelineRunNode.durationInMillis)) &&
        (this.edges == null ? pipelineRunNode.edges == null : this.edges.equals(pipelineRunNode.edges)) &&
        (this.id == null ? pipelineRunNode.id == null : this.id.equals(pipelineRunNode.id)) &&
        (this.result == null ? pipelineRunNode.result == null : this.result.equals(pipelineRunNode.result)) &&
        (this.startTime == null ? pipelineRunNode.startTime == null : this.startTime.equals(pipelineRunNode.startTime)) &&
        (this.state == null ? pipelineRunNode.state == null : this.state.equals(pipelineRunNode.state));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.displayName == null ? 0: this.displayName.hashCode());
    result = 31 * result + (this.durationInMillis == null ? 0: this.durationInMillis.hashCode());
    result = 31 * result + (this.edges == null ? 0: this.edges.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.result == null ? 0: this.result.hashCode());
    result = 31 * result + (this.startTime == null ? 0: this.startTime.hashCode());
    result = 31 * result + (this.state == null ? 0: this.state.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunNode {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  displayName: ").append(displayName).append("\n");
    sb.append("  durationInMillis: ").append(durationInMillis).append("\n");
    sb.append("  edges: ").append(edges).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  result: ").append(result).append("\n");
    sb.append("  startTime: ").append(startTime).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
