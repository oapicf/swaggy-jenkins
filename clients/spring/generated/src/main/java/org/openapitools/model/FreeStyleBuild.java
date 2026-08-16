package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * FreeStyleBuild
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-16T01:42:02.317096987Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class FreeStyleBuild {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer number;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String url;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid CauseAction> actions = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean building;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String description;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String displayName;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer duration;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer estimatedDuration;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String executor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String fullDisplayName;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String id;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean keepLog;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer queueId;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String result;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer timestamp;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String builtOn;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable EmptyChangeLogSet changeSet;

  public FreeStyleBuild propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FreeStyleBuild number(@Nullable Integer number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
   */
  
  @Schema(name = "number", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("number")
  public @Nullable Integer getNumber() {
    return number;
  }

  @JsonProperty("number")
  public void setNumber(@Nullable Integer number) {
    this.number = number;
  }

  public FreeStyleBuild url(@Nullable String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   */
  
  @Schema(name = "url", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("url")
  public @Nullable String getUrl() {
    return url;
  }

  @JsonProperty("url")
  public void setUrl(@Nullable String url) {
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

  @JsonProperty("actions")
  public void setActions(List<@Valid CauseAction> actions) {
    this.actions = actions;
  }

  public FreeStyleBuild building(@Nullable Boolean building) {
    this.building = building;
    return this;
  }

  /**
   * Get building
   * @return building
   */
  
  @Schema(name = "building", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("building")
  public @Nullable Boolean getBuilding() {
    return building;
  }

  @JsonProperty("building")
  public void setBuilding(@Nullable Boolean building) {
    this.building = building;
  }

  public FreeStyleBuild description(@Nullable String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  
  @Schema(name = "description", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("description")
  public @Nullable String getDescription() {
    return description;
  }

  @JsonProperty("description")
  public void setDescription(@Nullable String description) {
    this.description = description;
  }

  public FreeStyleBuild displayName(@Nullable String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public @Nullable String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(@Nullable String displayName) {
    this.displayName = displayName;
  }

  public FreeStyleBuild duration(@Nullable Integer duration) {
    this.duration = duration;
    return this;
  }

  /**
   * Get duration
   * @return duration
   */
  
  @Schema(name = "duration", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("duration")
  public @Nullable Integer getDuration() {
    return duration;
  }

  @JsonProperty("duration")
  public void setDuration(@Nullable Integer duration) {
    this.duration = duration;
  }

  public FreeStyleBuild estimatedDuration(@Nullable Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

  /**
   * Get estimatedDuration
   * @return estimatedDuration
   */
  
  @Schema(name = "estimatedDuration", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("estimatedDuration")
  public @Nullable Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  @JsonProperty("estimatedDuration")
  public void setEstimatedDuration(@Nullable Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  public FreeStyleBuild executor(@Nullable String executor) {
    this.executor = executor;
    return this;
  }

  /**
   * Get executor
   * @return executor
   */
  
  @Schema(name = "executor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("executor")
  public @Nullable String getExecutor() {
    return executor;
  }

  @JsonProperty("executor")
  public void setExecutor(@Nullable String executor) {
    this.executor = executor;
  }

  public FreeStyleBuild fullDisplayName(@Nullable String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  /**
   * Get fullDisplayName
   * @return fullDisplayName
   */
  
  @Schema(name = "fullDisplayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("fullDisplayName")
  public @Nullable String getFullDisplayName() {
    return fullDisplayName;
  }

  @JsonProperty("fullDisplayName")
  public void setFullDisplayName(@Nullable String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleBuild id(@Nullable String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  
  @Schema(name = "id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("id")
  public @Nullable String getId() {
    return id;
  }

  @JsonProperty("id")
  public void setId(@Nullable String id) {
    this.id = id;
  }

  public FreeStyleBuild keepLog(@Nullable Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

  /**
   * Get keepLog
   * @return keepLog
   */
  
  @Schema(name = "keepLog", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("keepLog")
  public @Nullable Boolean getKeepLog() {
    return keepLog;
  }

  @JsonProperty("keepLog")
  public void setKeepLog(@Nullable Boolean keepLog) {
    this.keepLog = keepLog;
  }

  public FreeStyleBuild queueId(@Nullable Integer queueId) {
    this.queueId = queueId;
    return this;
  }

  /**
   * Get queueId
   * @return queueId
   */
  
  @Schema(name = "queueId", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("queueId")
  public @Nullable Integer getQueueId() {
    return queueId;
  }

  @JsonProperty("queueId")
  public void setQueueId(@Nullable Integer queueId) {
    this.queueId = queueId;
  }

  public FreeStyleBuild result(@Nullable String result) {
    this.result = result;
    return this;
  }

  /**
   * Get result
   * @return result
   */
  
  @Schema(name = "result", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("result")
  public @Nullable String getResult() {
    return result;
  }

  @JsonProperty("result")
  public void setResult(@Nullable String result) {
    this.result = result;
  }

  public FreeStyleBuild timestamp(@Nullable Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  /**
   * Get timestamp
   * @return timestamp
   */
  
  @Schema(name = "timestamp", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("timestamp")
  public @Nullable Integer getTimestamp() {
    return timestamp;
  }

  @JsonProperty("timestamp")
  public void setTimestamp(@Nullable Integer timestamp) {
    this.timestamp = timestamp;
  }

  public FreeStyleBuild builtOn(@Nullable String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

  /**
   * Get builtOn
   * @return builtOn
   */
  
  @Schema(name = "builtOn", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("builtOn")
  public @Nullable String getBuiltOn() {
    return builtOn;
  }

  @JsonProperty("builtOn")
  public void setBuiltOn(@Nullable String builtOn) {
    this.builtOn = builtOn;
  }

  public FreeStyleBuild changeSet(@Nullable EmptyChangeLogSet changeSet) {
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
  public @Nullable EmptyChangeLogSet getChangeSet() {
    return changeSet;
  }

  @JsonProperty("changeSet")
  public void setChangeSet(@Nullable EmptyChangeLogSet changeSet) {
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
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

