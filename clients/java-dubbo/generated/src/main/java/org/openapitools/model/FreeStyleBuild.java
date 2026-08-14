package org.openapitools.model;

import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class FreeStyleBuild implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("number")
  private Integer number;

  @JsonProperty("url")
  private String url;

  @JsonProperty("actions")
  private List<CauseAction> actions = new ArrayList<>();

  @JsonProperty("building")
  private Boolean building;

  @JsonProperty("description")
  private String description;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("duration")
  private Integer duration;

  @JsonProperty("estimatedDuration")
  private Integer estimatedDuration;

  @JsonProperty("executor")
  private String executor;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName;

  @JsonProperty("id")
  private String id;

  @JsonProperty("keepLog")
  private Boolean keepLog;

  @JsonProperty("queueId")
  private Integer queueId;

  @JsonProperty("result")
  private String result;

  @JsonProperty("timestamp")
  private Integer timestamp;

  @JsonProperty("builtOn")
  private String builtOn;

  @JsonProperty("changeSet")
  private EmptyChangeLogSet changeSet;

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return number
   */
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   * 
   * @return url
   */
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  /**
   * 
   * @return actions
   */
  public List<CauseAction> getActions() {
    return actions;
  }

  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   * 
   * @return building
   */
  public Boolean getBuilding() {
    return building;
  }

  public void setBuilding(Boolean building) {
    this.building = building;
  }

  /**
   * 
   * @return description
   */
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * 
   * @return displayName
   */
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * 
   * @return duration
   */
  public Integer getDuration() {
    return duration;
  }

  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  /**
   * 
   * @return estimatedDuration
   */
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  /**
   * 
   * @return executor
   */
  public String getExecutor() {
    return executor;
  }

  public void setExecutor(String executor) {
    this.executor = executor;
  }

  /**
   * 
   * @return fullDisplayName
   */
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * 
   * @return id
   */
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  /**
   * 
   * @return keepLog
   */
  public Boolean getKeepLog() {
    return keepLog;
  }

  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  /**
   * 
   * @return queueId
   */
  public Integer getQueueId() {
    return queueId;
  }

  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  /**
   * 
   * @return result
   */
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  /**
   * 
   * @return timestamp
   */
  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * 
   * @return builtOn
   */
  public String getBuiltOn() {
    return builtOn;
  }

  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  /**
   * 
   * @return changeSet
   */
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
    return Objects.equals(this.propertyClass, freeStyleBuild.propertyClass) &&
        Objects.equals(this.number, freeStyleBuild.number) &&
        Objects.equals(this.url, freeStyleBuild.url) &&
        Objects.equals(this.actions, freeStyleBuild.actions) &&
        Objects.equals(this.building, freeStyleBuild.building) &&
        Objects.equals(this.description, freeStyleBuild.description) &&
        Objects.equals(this.displayName, freeStyleBuild.displayName) &&
        Objects.equals(this.duration, freeStyleBuild.duration) &&
        Objects.equals(this.estimatedDuration, freeStyleBuild.estimatedDuration) &&
        Objects.equals(this.executor, freeStyleBuild.executor) &&
        Objects.equals(this.fullDisplayName, freeStyleBuild.fullDisplayName) &&
        Objects.equals(this.id, freeStyleBuild.id) &&
        Objects.equals(this.keepLog, freeStyleBuild.keepLog) &&
        Objects.equals(this.queueId, freeStyleBuild.queueId) &&
        Objects.equals(this.result, freeStyleBuild.result) &&
        Objects.equals(this.timestamp, freeStyleBuild.timestamp) &&
        Objects.equals(this.builtOn, freeStyleBuild.builtOn) &&
        Objects.equals(this.changeSet, freeStyleBuild.changeSet);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, number, url, actions, building, description, displayName, duration, estimatedDuration, executor, fullDisplayName, id, keepLog, queueId, result, timestamp, builtOn, changeSet);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleBuild {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    building: ").append(toIndentedString(building)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    duration: ").append(toIndentedString(duration)).append("\n");
    sb.append("    estimatedDuration: ").append(toIndentedString(estimatedDuration)).append("\n");
    sb.append("    executor: ").append(toIndentedString(executor)).append("\n");
    sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    keepLog: ").append(toIndentedString(keepLog)).append("\n");
    sb.append("    queueId: ").append(toIndentedString(queueId)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    builtOn: ").append(toIndentedString(builtOn)).append("\n");
    sb.append("    changeSet: ").append(toIndentedString(changeSet)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
