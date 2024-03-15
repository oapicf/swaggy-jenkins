package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * FreeStyleBuild
 */

@Generated(value = "org.openapitools.codegen.languages.JavaCamelServerCodegen", date = "2024-03-15T14:13:46.253868088Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class FreeStyleBuild {

  private String propertyClass;

  private Integer number;

  private String url;

  @Valid
  private List<@Valid CauseAction> actions;

  private Boolean building;

  private String description;

  private String displayName;

  private Integer duration;

  private Integer estimatedDuration;

  private String executor;

  private String fullDisplayName;

  private String id;

  private Boolean keepLog;

  private Integer queueId;

  private String result;

  private Integer timestamp;

  private String builtOn;

  private EmptyChangeLogSet changeSet;

  public FreeStyleBuild propertyClass(String propertyClass) {
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

  public FreeStyleBuild number(Integer number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
  */
  
  @Schema(name = "number", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  public FreeStyleBuild url(String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
  */
  
  @Schema(name = "url", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public FreeStyleBuild actions(List<@Valid CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public FreeStyleBuild addActionsItem(CauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<>();
    }
    this.actions.add(actionsItem);
    return this;
  }

  /**
   * Get actions
   * @return actions
  */
  @Valid 
  @Schema(name = "actions", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("actions")
  public List<@Valid CauseAction> getActions() {
    return actions;
  }

  public void setActions(List<@Valid CauseAction> actions) {
    this.actions = actions;
  }

  public FreeStyleBuild building(Boolean building) {
    this.building = building;
    return this;
  }

  /**
   * Get building
   * @return building
  */
  
  @Schema(name = "building", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("building")
  public Boolean getBuilding() {
    return building;
  }

  public void setBuilding(Boolean building) {
    this.building = building;
  }

  public FreeStyleBuild description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  
  @Schema(name = "description", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleBuild displayName(String displayName) {
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

  public FreeStyleBuild duration(Integer duration) {
    this.duration = duration;
    return this;
  }

  /**
   * Get duration
   * @return duration
  */
  
  @Schema(name = "duration", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("duration")
  public Integer getDuration() {
    return duration;
  }

  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  public FreeStyleBuild estimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

  /**
   * Get estimatedDuration
   * @return estimatedDuration
  */
  
  @Schema(name = "estimatedDuration", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("estimatedDuration")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  public FreeStyleBuild executor(String executor) {
    this.executor = executor;
    return this;
  }

  /**
   * Get executor
   * @return executor
  */
  
  @Schema(name = "executor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("executor")
  public String getExecutor() {
    return executor;
  }

  public void setExecutor(String executor) {
    this.executor = executor;
  }

  public FreeStyleBuild fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  /**
   * Get fullDisplayName
   * @return fullDisplayName
  */
  
  @Schema(name = "fullDisplayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleBuild id(String id) {
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

  public FreeStyleBuild keepLog(Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

  /**
   * Get keepLog
   * @return keepLog
  */
  
  @Schema(name = "keepLog", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("keepLog")
  public Boolean getKeepLog() {
    return keepLog;
  }

  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  public FreeStyleBuild queueId(Integer queueId) {
    this.queueId = queueId;
    return this;
  }

  /**
   * Get queueId
   * @return queueId
  */
  
  @Schema(name = "queueId", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("queueId")
  public Integer getQueueId() {
    return queueId;
  }

  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  public FreeStyleBuild result(String result) {
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

  public FreeStyleBuild timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  /**
   * Get timestamp
   * @return timestamp
  */
  
  @Schema(name = "timestamp", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  public FreeStyleBuild builtOn(String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

  /**
   * Get builtOn
   * @return builtOn
  */
  
  @Schema(name = "builtOn", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("builtOn")
  public String getBuiltOn() {
    return builtOn;
  }

  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  public FreeStyleBuild changeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
    return this;
  }

  /**
   * Get changeSet
   * @return changeSet
  */
  @Valid 
  @Schema(name = "changeSet", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

