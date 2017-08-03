package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.CauseAction;
import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class QueueLeftItem   {
  
  private String propertyClass = null;
  private List<CauseAction> actions = new ArrayList<CauseAction>();
  private Boolean blocked = null;
  private Boolean buildable = null;
  private Integer id = null;
  private Integer inQueueSince = null;
  private String params = null;
  private Boolean stuck = null;
  private FreeStyleProject task = null;
  private String url = null;
  private String why = null;
  private Boolean cancelled = null;
  private FreeStyleBuild executable = null;

  /**
   **/
  public QueueLeftItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public QueueLeftItem actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   **/
  public QueueLeftItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("blocked")
  public Boolean isBlocked() {
    return blocked;
  }
  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  /**
   **/
  public QueueLeftItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("buildable")
  public Boolean isBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  public QueueLeftItem id(Integer id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  public QueueLeftItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("inQueueSince")
  public Integer getInQueueSince() {
    return inQueueSince;
  }
  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  /**
   **/
  public QueueLeftItem params(String params) {
    this.params = params;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("params")
  public String getParams() {
    return params;
  }
  public void setParams(String params) {
    this.params = params;
  }

  /**
   **/
  public QueueLeftItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("stuck")
  public Boolean isStuck() {
    return stuck;
  }
  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  /**
   **/
  public QueueLeftItem task(FreeStyleProject task) {
    this.task = task;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("task")
  public FreeStyleProject getTask() {
    return task;
  }
  public void setTask(FreeStyleProject task) {
    this.task = task;
  }

  /**
   **/
  public QueueLeftItem url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  public QueueLeftItem why(String why) {
    this.why = why;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("why")
  public String getWhy() {
    return why;
  }
  public void setWhy(String why) {
    this.why = why;
  }

  /**
   **/
  public QueueLeftItem cancelled(Boolean cancelled) {
    this.cancelled = cancelled;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("cancelled")
  public Boolean isCancelled() {
    return cancelled;
  }
  public void setCancelled(Boolean cancelled) {
    this.cancelled = cancelled;
  }

  /**
   **/
  public QueueLeftItem executable(FreeStyleBuild executable) {
    this.executable = executable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("executable")
  public FreeStyleBuild getExecutable() {
    return executable;
  }
  public void setExecutable(FreeStyleBuild executable) {
    this.executable = executable;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueLeftItem queueLeftItem = (QueueLeftItem) o;
    return Objects.equals(propertyClass, queueLeftItem.propertyClass) &&
        Objects.equals(actions, queueLeftItem.actions) &&
        Objects.equals(blocked, queueLeftItem.blocked) &&
        Objects.equals(buildable, queueLeftItem.buildable) &&
        Objects.equals(id, queueLeftItem.id) &&
        Objects.equals(inQueueSince, queueLeftItem.inQueueSince) &&
        Objects.equals(params, queueLeftItem.params) &&
        Objects.equals(stuck, queueLeftItem.stuck) &&
        Objects.equals(task, queueLeftItem.task) &&
        Objects.equals(url, queueLeftItem.url) &&
        Objects.equals(why, queueLeftItem.why) &&
        Objects.equals(cancelled, queueLeftItem.cancelled) &&
        Objects.equals(executable, queueLeftItem.executable);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

