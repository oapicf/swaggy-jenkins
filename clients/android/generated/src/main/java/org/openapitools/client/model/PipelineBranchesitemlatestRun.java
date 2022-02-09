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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PipelineBranchesitemlatestRun {
  
  @SerializedName("durationInMillis")
  private Integer durationInMillis = null;
  @SerializedName("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;
  @SerializedName("enQueueTime")
  private String enQueueTime = null;
  @SerializedName("endTime")
  private String endTime = null;
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
  @SerializedName("_class")
  private String _class = null;

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
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
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

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineBranchesitemlatestRun pipelineBranchesitemlatestRun = (PipelineBranchesitemlatestRun) o;
    return (this.durationInMillis == null ? pipelineBranchesitemlatestRun.durationInMillis == null : this.durationInMillis.equals(pipelineBranchesitemlatestRun.durationInMillis)) &&
        (this.estimatedDurationInMillis == null ? pipelineBranchesitemlatestRun.estimatedDurationInMillis == null : this.estimatedDurationInMillis.equals(pipelineBranchesitemlatestRun.estimatedDurationInMillis)) &&
        (this.enQueueTime == null ? pipelineBranchesitemlatestRun.enQueueTime == null : this.enQueueTime.equals(pipelineBranchesitemlatestRun.enQueueTime)) &&
        (this.endTime == null ? pipelineBranchesitemlatestRun.endTime == null : this.endTime.equals(pipelineBranchesitemlatestRun.endTime)) &&
        (this.id == null ? pipelineBranchesitemlatestRun.id == null : this.id.equals(pipelineBranchesitemlatestRun.id)) &&
        (this.organization == null ? pipelineBranchesitemlatestRun.organization == null : this.organization.equals(pipelineBranchesitemlatestRun.organization)) &&
        (this.pipeline == null ? pipelineBranchesitemlatestRun.pipeline == null : this.pipeline.equals(pipelineBranchesitemlatestRun.pipeline)) &&
        (this.result == null ? pipelineBranchesitemlatestRun.result == null : this.result.equals(pipelineBranchesitemlatestRun.result)) &&
        (this.runSummary == null ? pipelineBranchesitemlatestRun.runSummary == null : this.runSummary.equals(pipelineBranchesitemlatestRun.runSummary)) &&
        (this.startTime == null ? pipelineBranchesitemlatestRun.startTime == null : this.startTime.equals(pipelineBranchesitemlatestRun.startTime)) &&
        (this.state == null ? pipelineBranchesitemlatestRun.state == null : this.state.equals(pipelineBranchesitemlatestRun.state)) &&
        (this.type == null ? pipelineBranchesitemlatestRun.type == null : this.type.equals(pipelineBranchesitemlatestRun.type)) &&
        (this.commitId == null ? pipelineBranchesitemlatestRun.commitId == null : this.commitId.equals(pipelineBranchesitemlatestRun.commitId)) &&
        (this._class == null ? pipelineBranchesitemlatestRun._class == null : this._class.equals(pipelineBranchesitemlatestRun._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.durationInMillis == null ? 0: this.durationInMillis.hashCode());
    result = 31 * result + (this.estimatedDurationInMillis == null ? 0: this.estimatedDurationInMillis.hashCode());
    result = 31 * result + (this.enQueueTime == null ? 0: this.enQueueTime.hashCode());
    result = 31 * result + (this.endTime == null ? 0: this.endTime.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.organization == null ? 0: this.organization.hashCode());
    result = 31 * result + (this.pipeline == null ? 0: this.pipeline.hashCode());
    result = 31 * result + (this.result == null ? 0: this.result.hashCode());
    result = 31 * result + (this.runSummary == null ? 0: this.runSummary.hashCode());
    result = 31 * result + (this.startTime == null ? 0: this.startTime.hashCode());
    result = 31 * result + (this.state == null ? 0: this.state.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.commitId == null ? 0: this.commitId.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitemlatestRun {\n");
    
    sb.append("  durationInMillis: ").append(durationInMillis).append("\n");
    sb.append("  estimatedDurationInMillis: ").append(estimatedDurationInMillis).append("\n");
    sb.append("  enQueueTime: ").append(enQueueTime).append("\n");
    sb.append("  endTime: ").append(endTime).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  organization: ").append(organization).append("\n");
    sb.append("  pipeline: ").append(pipeline).append("\n");
    sb.append("  result: ").append(result).append("\n");
    sb.append("  runSummary: ").append(runSummary).append("\n");
    sb.append("  startTime: ").append(startTime).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  commitId: ").append(commitId).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
