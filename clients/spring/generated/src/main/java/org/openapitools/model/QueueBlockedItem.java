package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleProject;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * QueueBlockedItem
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class QueueBlockedItem {

  private @Nullable String propertyClass;

  @Valid
  private List<@Valid CauseAction> actions = new ArrayList<>();

  private @Nullable Boolean blocked;

  private @Nullable Boolean buildable;

  private @Nullable Integer id;

  private @Nullable Integer inQueueSince;

  private @Nullable String params;

  private @Nullable Boolean stuck;

  private @Nullable FreeStyleProject task;

  private @Nullable String url;

  private @Nullable String why;

  private @Nullable Integer buildableStartMilliseconds;

  public QueueBlockedItem propertyClass(@Nullable String propertyClass) {
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

  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public QueueBlockedItem actions(List<@Valid CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public QueueBlockedItem addActionsItem(CauseAction actionsItem) {
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

  public QueueBlockedItem blocked(@Nullable Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

  /**
   * Get blocked
   * @return blocked
   */
  
  @Schema(name = "blocked", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("blocked")
  public @Nullable Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(@Nullable Boolean blocked) {
    this.blocked = blocked;
  }

  public QueueBlockedItem buildable(@Nullable Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  /**
   * Get buildable
   * @return buildable
   */
  
  @Schema(name = "buildable", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("buildable")
  public @Nullable Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(@Nullable Boolean buildable) {
    this.buildable = buildable;
  }

  public QueueBlockedItem id(@Nullable Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  
  @Schema(name = "id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("id")
  public @Nullable Integer getId() {
    return id;
  }

  public void setId(@Nullable Integer id) {
    this.id = id;
  }

  public QueueBlockedItem inQueueSince(@Nullable Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

  /**
   * Get inQueueSince
   * @return inQueueSince
   */
  
  @Schema(name = "inQueueSince", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("inQueueSince")
  public @Nullable Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(@Nullable Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public QueueBlockedItem params(@Nullable String params) {
    this.params = params;
    return this;
  }

  /**
   * Get params
   * @return params
   */
  
  @Schema(name = "params", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("params")
  public @Nullable String getParams() {
    return params;
  }

  public void setParams(@Nullable String params) {
    this.params = params;
  }

  public QueueBlockedItem stuck(@Nullable Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

  /**
   * Get stuck
   * @return stuck
   */
  
  @Schema(name = "stuck", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("stuck")
  public @Nullable Boolean getStuck() {
    return stuck;
  }

  public void setStuck(@Nullable Boolean stuck) {
    this.stuck = stuck;
  }

  public QueueBlockedItem task(@Nullable FreeStyleProject task) {
    this.task = task;
    return this;
  }

  /**
   * Get task
   * @return task
   */
  @Valid 
  @Schema(name = "task", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("task")
  public @Nullable FreeStyleProject getTask() {
    return task;
  }

  public void setTask(@Nullable FreeStyleProject task) {
    this.task = task;
  }

  public QueueBlockedItem url(@Nullable String url) {
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

  public void setUrl(@Nullable String url) {
    this.url = url;
  }

  public QueueBlockedItem why(@Nullable String why) {
    this.why = why;
    return this;
  }

  /**
   * Get why
   * @return why
   */
  
  @Schema(name = "why", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("why")
  public @Nullable String getWhy() {
    return why;
  }

  public void setWhy(@Nullable String why) {
    this.why = why;
  }

  public QueueBlockedItem buildableStartMilliseconds(@Nullable Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
  }

  /**
   * Get buildableStartMilliseconds
   * @return buildableStartMilliseconds
   */
  
  @Schema(name = "buildableStartMilliseconds", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("buildableStartMilliseconds")
  public @Nullable Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }

  public void setBuildableStartMilliseconds(@Nullable Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueBlockedItem queueBlockedItem = (QueueBlockedItem) o;
    return Objects.equals(this.propertyClass, queueBlockedItem.propertyClass) &&
        Objects.equals(this.actions, queueBlockedItem.actions) &&
        Objects.equals(this.blocked, queueBlockedItem.blocked) &&
        Objects.equals(this.buildable, queueBlockedItem.buildable) &&
        Objects.equals(this.id, queueBlockedItem.id) &&
        Objects.equals(this.inQueueSince, queueBlockedItem.inQueueSince) &&
        Objects.equals(this.params, queueBlockedItem.params) &&
        Objects.equals(this.stuck, queueBlockedItem.stuck) &&
        Objects.equals(this.task, queueBlockedItem.task) &&
        Objects.equals(this.url, queueBlockedItem.url) &&
        Objects.equals(this.why, queueBlockedItem.why) &&
        Objects.equals(this.buildableStartMilliseconds, queueBlockedItem.buildableStartMilliseconds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, buildableStartMilliseconds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueueBlockedItem {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    blocked: ").append(toIndentedString(blocked)).append("\n");
    sb.append("    buildable: ").append(toIndentedString(buildable)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    inQueueSince: ").append(toIndentedString(inQueueSince)).append("\n");
    sb.append("    params: ").append(toIndentedString(params)).append("\n");
    sb.append("    stuck: ").append(toIndentedString(stuck)).append("\n");
    sb.append("    task: ").append(toIndentedString(task)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    why: ").append(toIndentedString(why)).append("\n");
    sb.append("    buildableStartMilliseconds: ").append(toIndentedString(buildableStartMilliseconds)).append("\n");
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

