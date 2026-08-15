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
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * QueueLeftItem
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class QueueLeftItem {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid CauseAction> actions = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean blocked;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean buildable;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer id;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer inQueueSince;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String params;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean stuck;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable FreeStyleProject task;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String url;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String why;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean cancelled;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable FreeStyleBuild executable;

  public QueueLeftItem propertyClass(@Nullable String propertyClass) {
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

  public QueueLeftItem actions(List<@Valid CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public QueueLeftItem addActionsItem(CauseAction actionsItem) {
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

  public QueueLeftItem blocked(@Nullable Boolean blocked) {
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

  @JsonProperty("blocked")
  public void setBlocked(@Nullable Boolean blocked) {
    this.blocked = blocked;
  }

  public QueueLeftItem buildable(@Nullable Boolean buildable) {
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

  @JsonProperty("buildable")
  public void setBuildable(@Nullable Boolean buildable) {
    this.buildable = buildable;
  }

  public QueueLeftItem id(@Nullable Integer id) {
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

  @JsonProperty("id")
  public void setId(@Nullable Integer id) {
    this.id = id;
  }

  public QueueLeftItem inQueueSince(@Nullable Integer inQueueSince) {
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

  @JsonProperty("inQueueSince")
  public void setInQueueSince(@Nullable Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public QueueLeftItem params(@Nullable String params) {
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

  @JsonProperty("params")
  public void setParams(@Nullable String params) {
    this.params = params;
  }

  public QueueLeftItem stuck(@Nullable Boolean stuck) {
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

  @JsonProperty("stuck")
  public void setStuck(@Nullable Boolean stuck) {
    this.stuck = stuck;
  }

  public QueueLeftItem task(@Nullable FreeStyleProject task) {
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

  @JsonProperty("task")
  public void setTask(@Nullable FreeStyleProject task) {
    this.task = task;
  }

  public QueueLeftItem url(@Nullable String url) {
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

  public QueueLeftItem why(@Nullable String why) {
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

  @JsonProperty("why")
  public void setWhy(@Nullable String why) {
    this.why = why;
  }

  public QueueLeftItem cancelled(@Nullable Boolean cancelled) {
    this.cancelled = cancelled;
    return this;
  }

  /**
   * Get cancelled
   * @return cancelled
   */
  
  @Schema(name = "cancelled", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("cancelled")
  public @Nullable Boolean getCancelled() {
    return cancelled;
  }

  @JsonProperty("cancelled")
  public void setCancelled(@Nullable Boolean cancelled) {
    this.cancelled = cancelled;
  }

  public QueueLeftItem executable(@Nullable FreeStyleBuild executable) {
    this.executable = executable;
    return this;
  }

  /**
   * Get executable
   * @return executable
   */
  @Valid 
  @Schema(name = "executable", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("executable")
  public @Nullable FreeStyleBuild getExecutable() {
    return executable;
  }

  @JsonProperty("executable")
  public void setExecutable(@Nullable FreeStyleBuild executable) {
    this.executable = executable;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueLeftItem queueLeftItem = (QueueLeftItem) o;
    return Objects.equals(this.propertyClass, queueLeftItem.propertyClass) &&
        Objects.equals(this.actions, queueLeftItem.actions) &&
        Objects.equals(this.blocked, queueLeftItem.blocked) &&
        Objects.equals(this.buildable, queueLeftItem.buildable) &&
        Objects.equals(this.id, queueLeftItem.id) &&
        Objects.equals(this.inQueueSince, queueLeftItem.inQueueSince) &&
        Objects.equals(this.params, queueLeftItem.params) &&
        Objects.equals(this.stuck, queueLeftItem.stuck) &&
        Objects.equals(this.task, queueLeftItem.task) &&
        Objects.equals(this.url, queueLeftItem.url) &&
        Objects.equals(this.why, queueLeftItem.why) &&
        Objects.equals(this.cancelled, queueLeftItem.cancelled) &&
        Objects.equals(this.executable, queueLeftItem.executable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, cancelled, executable);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueueLeftItem {\n");
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
    sb.append("    cancelled: ").append(toIndentedString(cancelled)).append("\n");
    sb.append("    executable: ").append(toIndentedString(executable)).append("\n");
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

