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

import org.openapitools.client.model.PipelineRunImpllinks;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PipelineRunImpl {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("_links")
  private PipelineRunImpllinks links = null;
  @SerializedName("durationInMillis")
  private Integer durationInMillis = null;
  @SerializedName("enQueueTime")
  private String enQueueTime = null;
  @SerializedName("endTime")
  private String endTime = null;
  @SerializedName("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("organization")
  private String organization = null;
  @SerializedName("pipeline")
  private String pipeline = null;
  @SerializedName("result")
  private String result = null;
  @SerializedName("runSummary")
  private String runSummary = null;
  @SerializedName("startTime")
  private String startTime = null;
  @SerializedName("state")
  private String state = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("commitId")
  private String commitId = null;

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
  public PipelineRunImpllinks getLinks() {
    return links;
  }
  public void setLinks(PipelineRunImpllinks links) {
    this.links = links;
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
  public String getEnQueueTime() {
    return enQueueTime;
  }
  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getEndTime() {
    return endTime;
  }
  public void setEndTime(String endTime) {
    this.endTime = endTime;
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
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
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
  public String getPipeline() {
    return pipeline;
  }
  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
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
  public String getRunSummary() {
    return runSummary;
  }
  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
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

  /**
   **/
  @ApiModelProperty(value = "")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this._class == null ? pipelineRunImpl._class == null : this._class.equals(pipelineRunImpl._class)) &&
        (this.links == null ? pipelineRunImpl.links == null : this.links.equals(pipelineRunImpl.links)) &&
        (this.durationInMillis == null ? pipelineRunImpl.durationInMillis == null : this.durationInMillis.equals(pipelineRunImpl.durationInMillis)) &&
        (this.enQueueTime == null ? pipelineRunImpl.enQueueTime == null : this.enQueueTime.equals(pipelineRunImpl.enQueueTime)) &&
        (this.endTime == null ? pipelineRunImpl.endTime == null : this.endTime.equals(pipelineRunImpl.endTime)) &&
        (this.estimatedDurationInMillis == null ? pipelineRunImpl.estimatedDurationInMillis == null : this.estimatedDurationInMillis.equals(pipelineRunImpl.estimatedDurationInMillis)) &&
        (this.id == null ? pipelineRunImpl.id == null : this.id.equals(pipelineRunImpl.id)) &&
        (this.organization == null ? pipelineRunImpl.organization == null : this.organization.equals(pipelineRunImpl.organization)) &&
        (this.pipeline == null ? pipelineRunImpl.pipeline == null : this.pipeline.equals(pipelineRunImpl.pipeline)) &&
        (this.result == null ? pipelineRunImpl.result == null : this.result.equals(pipelineRunImpl.result)) &&
        (this.runSummary == null ? pipelineRunImpl.runSummary == null : this.runSummary.equals(pipelineRunImpl.runSummary)) &&
        (this.startTime == null ? pipelineRunImpl.startTime == null : this.startTime.equals(pipelineRunImpl.startTime)) &&
        (this.state == null ? pipelineRunImpl.state == null : this.state.equals(pipelineRunImpl.state)) &&
        (this.type == null ? pipelineRunImpl.type == null : this.type.equals(pipelineRunImpl.type)) &&
        (this.commitId == null ? pipelineRunImpl.commitId == null : this.commitId.equals(pipelineRunImpl.commitId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.links == null ? 0: this.links.hashCode());
    result = 31 * result + (this.durationInMillis == null ? 0: this.durationInMillis.hashCode());
    result = 31 * result + (this.enQueueTime == null ? 0: this.enQueueTime.hashCode());
    result = 31 * result + (this.endTime == null ? 0: this.endTime.hashCode());
    result = 31 * result + (this.estimatedDurationInMillis == null ? 0: this.estimatedDurationInMillis.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.organization == null ? 0: this.organization.hashCode());
    result = 31 * result + (this.pipeline == null ? 0: this.pipeline.hashCode());
    result = 31 * result + (this.result == null ? 0: this.result.hashCode());
    result = 31 * result + (this.runSummary == null ? 0: this.runSummary.hashCode());
    result = 31 * result + (this.startTime == null ? 0: this.startTime.hashCode());
    result = 31 * result + (this.state == null ? 0: this.state.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.commitId == null ? 0: this.commitId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunImpl {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  links: ").append(links).append("\n");
    sb.append("  durationInMillis: ").append(durationInMillis).append("\n");
    sb.append("  enQueueTime: ").append(enQueueTime).append("\n");
    sb.append("  endTime: ").append(endTime).append("\n");
    sb.append("  estimatedDurationInMillis: ").append(estimatedDurationInMillis).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  organization: ").append(organization).append("\n");
    sb.append("  pipeline: ").append(pipeline).append("\n");
    sb.append("  result: ").append(result).append("\n");
    sb.append("  runSummary: ").append(runSummary).append("\n");
    sb.append("  startTime: ").append(startTime).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  commitId: ").append(commitId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
