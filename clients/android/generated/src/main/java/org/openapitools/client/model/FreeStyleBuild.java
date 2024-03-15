/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.CauseAction;
import org.openapitools.client.model.EmptyChangeLogSet;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class FreeStyleBuild {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("actions")
  private List<CauseAction> actions = null;
  @SerializedName("building")
  private Boolean building = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("displayName")
  private String displayName = null;
  @SerializedName("duration")
  private Integer duration = null;
  @SerializedName("estimatedDuration")
  private Integer estimatedDuration = null;
  @SerializedName("executor")
  private String executor = null;
  @SerializedName("fullDisplayName")
  private String fullDisplayName = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("keepLog")
  private Boolean keepLog = null;
  @SerializedName("queueId")
  private Integer queueId = null;
  @SerializedName("result")
  private String result = null;
  @SerializedName("timestamp")
  private Integer timestamp = null;
  @SerializedName("builtOn")
  private String builtOn = null;
  @SerializedName("changeSet")
  private EmptyChangeLogSet changeSet = null;

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
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getBuilding() {
    return building;
  }
  public void setBuilding(Boolean building) {
    this.building = building;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
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
  public Integer getDuration() {
    return duration;
  }
  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }
  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getExecutor() {
    return executor;
  }
  public void setExecutor(String executor) {
    this.executor = executor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
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
  public Boolean getKeepLog() {
    return keepLog;
  }
  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getQueueId() {
    return queueId;
  }
  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
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
  public Integer getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getBuiltOn() {
    return builtOn;
  }
  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public EmptyChangeLogSet getChangeSet() {
    return changeSet;
  }
  public void setChangeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FreeStyleBuild freeStyleBuild = (FreeStyleBuild) o;
    return (this._class == null ? freeStyleBuild._class == null : this._class.equals(freeStyleBuild._class)) &&
        (this.number == null ? freeStyleBuild.number == null : this.number.equals(freeStyleBuild.number)) &&
        (this.url == null ? freeStyleBuild.url == null : this.url.equals(freeStyleBuild.url)) &&
        (this.actions == null ? freeStyleBuild.actions == null : this.actions.equals(freeStyleBuild.actions)) &&
        (this.building == null ? freeStyleBuild.building == null : this.building.equals(freeStyleBuild.building)) &&
        (this.description == null ? freeStyleBuild.description == null : this.description.equals(freeStyleBuild.description)) &&
        (this.displayName == null ? freeStyleBuild.displayName == null : this.displayName.equals(freeStyleBuild.displayName)) &&
        (this.duration == null ? freeStyleBuild.duration == null : this.duration.equals(freeStyleBuild.duration)) &&
        (this.estimatedDuration == null ? freeStyleBuild.estimatedDuration == null : this.estimatedDuration.equals(freeStyleBuild.estimatedDuration)) &&
        (this.executor == null ? freeStyleBuild.executor == null : this.executor.equals(freeStyleBuild.executor)) &&
        (this.fullDisplayName == null ? freeStyleBuild.fullDisplayName == null : this.fullDisplayName.equals(freeStyleBuild.fullDisplayName)) &&
        (this.id == null ? freeStyleBuild.id == null : this.id.equals(freeStyleBuild.id)) &&
        (this.keepLog == null ? freeStyleBuild.keepLog == null : this.keepLog.equals(freeStyleBuild.keepLog)) &&
        (this.queueId == null ? freeStyleBuild.queueId == null : this.queueId.equals(freeStyleBuild.queueId)) &&
        (this.result == null ? freeStyleBuild.result == null : this.result.equals(freeStyleBuild.result)) &&
        (this.timestamp == null ? freeStyleBuild.timestamp == null : this.timestamp.equals(freeStyleBuild.timestamp)) &&
        (this.builtOn == null ? freeStyleBuild.builtOn == null : this.builtOn.equals(freeStyleBuild.builtOn)) &&
        (this.changeSet == null ? freeStyleBuild.changeSet == null : this.changeSet.equals(freeStyleBuild.changeSet));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.actions == null ? 0: this.actions.hashCode());
    result = 31 * result + (this.building == null ? 0: this.building.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.displayName == null ? 0: this.displayName.hashCode());
    result = 31 * result + (this.duration == null ? 0: this.duration.hashCode());
    result = 31 * result + (this.estimatedDuration == null ? 0: this.estimatedDuration.hashCode());
    result = 31 * result + (this.executor == null ? 0: this.executor.hashCode());
    result = 31 * result + (this.fullDisplayName == null ? 0: this.fullDisplayName.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.keepLog == null ? 0: this.keepLog.hashCode());
    result = 31 * result + (this.queueId == null ? 0: this.queueId.hashCode());
    result = 31 * result + (this.result == null ? 0: this.result.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.builtOn == null ? 0: this.builtOn.hashCode());
    result = 31 * result + (this.changeSet == null ? 0: this.changeSet.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleBuild {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  actions: ").append(actions).append("\n");
    sb.append("  building: ").append(building).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  displayName: ").append(displayName).append("\n");
    sb.append("  duration: ").append(duration).append("\n");
    sb.append("  estimatedDuration: ").append(estimatedDuration).append("\n");
    sb.append("  executor: ").append(executor).append("\n");
    sb.append("  fullDisplayName: ").append(fullDisplayName).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  keepLog: ").append(keepLog).append("\n");
    sb.append("  queueId: ").append(queueId).append("\n");
    sb.append("  result: ").append(result).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  builtOn: ").append(builtOn).append("\n");
    sb.append("  changeSet: ").append(changeSet).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
