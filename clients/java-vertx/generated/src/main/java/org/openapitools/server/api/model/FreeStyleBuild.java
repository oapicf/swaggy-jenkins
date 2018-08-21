package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.CauseAction;
import org.openapitools.server.api.model.EmptyChangeLogSet;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class FreeStyleBuild   {
  
  private String propertyClass = null;
  private Integer number = null;
  private String url = null;
  private List<CauseAction> actions = new ArrayList<>();
  private Boolean building = null;
  private String description = null;
  private String displayName = null;
  private Integer duration = null;
  private Integer estimatedDuration = null;
  private String executor = null;
  private String fullDisplayName = null;
  private String id = null;
  private Boolean keepLog = null;
  private Integer queueId = null;
  private String result = null;
  private Integer timestamp = null;
  private String builtOn = null;
  private EmptyChangeLogSet changeSet = null;

  public FreeStyleBuild () {

  }

  public FreeStyleBuild (String propertyClass, Integer number, String url, List<CauseAction> actions, Boolean building, String description, String displayName, Integer duration, Integer estimatedDuration, String executor, String fullDisplayName, String id, Boolean keepLog, Integer queueId, String result, Integer timestamp, String builtOn, EmptyChangeLogSet changeSet) {
    this.propertyClass = propertyClass;
    this.number = number;
    this.url = url;
    this.actions = actions;
    this.building = building;
    this.description = description;
    this.displayName = displayName;
    this.duration = duration;
    this.estimatedDuration = estimatedDuration;
    this.executor = executor;
    this.fullDisplayName = fullDisplayName;
    this.id = id;
    this.keepLog = keepLog;
    this.queueId = queueId;
    this.result = result;
    this.timestamp = timestamp;
    this.builtOn = builtOn;
    this.changeSet = changeSet;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

    
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

    
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

    
  @JsonProperty("building")
  public Boolean getBuilding() {
    return building;
  }
  public void setBuilding(Boolean building) {
    this.building = building;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

    
  @JsonProperty("duration")
  public Integer getDuration() {
    return duration;
  }
  public void setDuration(Integer duration) {
    this.duration = duration;
  }

    
  @JsonProperty("estimatedDuration")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }
  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

    
  @JsonProperty("executor")
  public String getExecutor() {
    return executor;
  }
  public void setExecutor(String executor) {
    this.executor = executor;
  }

    
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("keepLog")
  public Boolean getKeepLog() {
    return keepLog;
  }
  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

    
  @JsonProperty("queueId")
  public Integer getQueueId() {
    return queueId;
  }
  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

    
  @JsonProperty("result")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
  }

    
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

    
  @JsonProperty("builtOn")
  public String getBuiltOn() {
    return builtOn;
  }
  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

    
  @JsonProperty("changeSet")
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
    return Objects.equals(propertyClass, freeStyleBuild.propertyClass) &&
        Objects.equals(number, freeStyleBuild.number) &&
        Objects.equals(url, freeStyleBuild.url) &&
        Objects.equals(actions, freeStyleBuild.actions) &&
        Objects.equals(building, freeStyleBuild.building) &&
        Objects.equals(description, freeStyleBuild.description) &&
        Objects.equals(displayName, freeStyleBuild.displayName) &&
        Objects.equals(duration, freeStyleBuild.duration) &&
        Objects.equals(estimatedDuration, freeStyleBuild.estimatedDuration) &&
        Objects.equals(executor, freeStyleBuild.executor) &&
        Objects.equals(fullDisplayName, freeStyleBuild.fullDisplayName) &&
        Objects.equals(id, freeStyleBuild.id) &&
        Objects.equals(keepLog, freeStyleBuild.keepLog) &&
        Objects.equals(queueId, freeStyleBuild.queueId) &&
        Objects.equals(result, freeStyleBuild.result) &&
        Objects.equals(timestamp, freeStyleBuild.timestamp) &&
        Objects.equals(builtOn, freeStyleBuild.builtOn) &&
        Objects.equals(changeSet, freeStyleBuild.changeSet);
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
