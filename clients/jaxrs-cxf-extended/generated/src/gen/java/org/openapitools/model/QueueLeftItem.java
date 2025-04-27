package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QueueLeftItem  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid CauseAction> actions = new ArrayList<>();

  @ApiModelProperty(value = "")
  private Boolean blocked;

  @ApiModelProperty(value = "")
  private Boolean buildable;

  @ApiModelProperty(value = "")
  private Integer id;

  @ApiModelProperty(value = "")
  private Integer inQueueSince;

  @ApiModelProperty(value = "")
  private String params;

  @ApiModelProperty(value = "")
  private Boolean stuck;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleProject task;

  @ApiModelProperty(value = "")
  private String url;

  @ApiModelProperty(value = "")
  private String why;

  @ApiModelProperty(value = "")
  private Boolean cancelled;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild executable;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public QueueLeftItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get actions
  * @return actions
  */
  @JsonProperty("actions")
  public List<@Valid CauseAction> getActions() {
    return actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
 public void setActions(List<@Valid CauseAction> actions) {
    this.actions = actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
  public QueueLeftItem actions(List<@Valid CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Adds a new item to the <code>actions</code> list.
   */
  public QueueLeftItem addActionsItem(CauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
  * Get blocked
  * @return blocked
  */
  @JsonProperty("blocked")
  public Boolean getBlocked() {
    return blocked;
  }

  /**
   * Sets the <code>blocked</code> property.
   */
 public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  /**
   * Sets the <code>blocked</code> property.
   */
  public QueueLeftItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

 /**
  * Get buildable
  * @return buildable
  */
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  /**
   * Sets the <code>buildable</code> property.
   */
 public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   * Sets the <code>buildable</code> property.
   */
  public QueueLeftItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
 public void setId(Integer id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public QueueLeftItem id(Integer id) {
    this.id = id;
    return this;
  }

 /**
  * Get inQueueSince
  * @return inQueueSince
  */
  @JsonProperty("inQueueSince")
  public Integer getInQueueSince() {
    return inQueueSince;
  }

  /**
   * Sets the <code>inQueueSince</code> property.
   */
 public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  /**
   * Sets the <code>inQueueSince</code> property.
   */
  public QueueLeftItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

 /**
  * Get params
  * @return params
  */
  @JsonProperty("params")
  public String getParams() {
    return params;
  }

  /**
   * Sets the <code>params</code> property.
   */
 public void setParams(String params) {
    this.params = params;
  }

  /**
   * Sets the <code>params</code> property.
   */
  public QueueLeftItem params(String params) {
    this.params = params;
    return this;
  }

 /**
  * Get stuck
  * @return stuck
  */
  @JsonProperty("stuck")
  public Boolean getStuck() {
    return stuck;
  }

  /**
   * Sets the <code>stuck</code> property.
   */
 public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  /**
   * Sets the <code>stuck</code> property.
   */
  public QueueLeftItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

 /**
  * Get task
  * @return task
  */
  @JsonProperty("task")
  public FreeStyleProject getTask() {
    return task;
  }

  /**
   * Sets the <code>task</code> property.
   */
 public void setTask(FreeStyleProject task) {
    this.task = task;
  }

  /**
   * Sets the <code>task</code> property.
   */
  public QueueLeftItem task(FreeStyleProject task) {
    this.task = task;
    return this;
  }

 /**
  * Get url
  * @return url
  */
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  /**
   * Sets the <code>url</code> property.
   */
 public void setUrl(String url) {
    this.url = url;
  }

  /**
   * Sets the <code>url</code> property.
   */
  public QueueLeftItem url(String url) {
    this.url = url;
    return this;
  }

 /**
  * Get why
  * @return why
  */
  @JsonProperty("why")
  public String getWhy() {
    return why;
  }

  /**
   * Sets the <code>why</code> property.
   */
 public void setWhy(String why) {
    this.why = why;
  }

  /**
   * Sets the <code>why</code> property.
   */
  public QueueLeftItem why(String why) {
    this.why = why;
    return this;
  }

 /**
  * Get cancelled
  * @return cancelled
  */
  @JsonProperty("cancelled")
  public Boolean getCancelled() {
    return cancelled;
  }

  /**
   * Sets the <code>cancelled</code> property.
   */
 public void setCancelled(Boolean cancelled) {
    this.cancelled = cancelled;
  }

  /**
   * Sets the <code>cancelled</code> property.
   */
  public QueueLeftItem cancelled(Boolean cancelled) {
    this.cancelled = cancelled;
    return this;
  }

 /**
  * Get executable
  * @return executable
  */
  @JsonProperty("executable")
  public FreeStyleBuild getExecutable() {
    return executable;
  }

  /**
   * Sets the <code>executable</code> property.
   */
 public void setExecutable(FreeStyleBuild executable) {
    this.executable = executable;
  }

  /**
   * Sets the <code>executable</code> property.
   */
  public QueueLeftItem executable(FreeStyleBuild executable) {
    this.executable = executable;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

