package io.swagger.model;

import io.swagger.model.CauseAction;
import io.swagger.model.FreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class QueueBlockedItem   {
  
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
  private Integer buildableStartMilliseconds = null;

  /**
   **/
  public QueueBlockedItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public QueueBlockedItem actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   **/
  public QueueBlockedItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Boolean isBlocked() {
    return blocked;
  }
  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  /**
   **/
  public QueueBlockedItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Boolean isBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  public QueueBlockedItem id(Integer id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  public QueueBlockedItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Integer getInQueueSince() {
    return inQueueSince;
  }
  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  /**
   **/
  public QueueBlockedItem params(String params) {
    this.params = params;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getParams() {
    return params;
  }
  public void setParams(String params) {
    this.params = params;
  }

  /**
   **/
  public QueueBlockedItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Boolean isStuck() {
    return stuck;
  }
  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  /**
   **/
  public QueueBlockedItem task(FreeStyleProject task) {
    this.task = task;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public FreeStyleProject getTask() {
    return task;
  }
  public void setTask(FreeStyleProject task) {
    this.task = task;
  }

  /**
   **/
  public QueueBlockedItem url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  public QueueBlockedItem why(String why) {
    this.why = why;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getWhy() {
    return why;
  }
  public void setWhy(String why) {
    this.why = why;
  }

  /**
   **/
  public QueueBlockedItem buildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }
  public void setBuildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueBlockedItem queueBlockedItem = (QueueBlockedItem) o;
    return Objects.equals(propertyClass, queueBlockedItem.propertyClass) &&
        Objects.equals(actions, queueBlockedItem.actions) &&
        Objects.equals(blocked, queueBlockedItem.blocked) &&
        Objects.equals(buildable, queueBlockedItem.buildable) &&
        Objects.equals(id, queueBlockedItem.id) &&
        Objects.equals(inQueueSince, queueBlockedItem.inQueueSince) &&
        Objects.equals(params, queueBlockedItem.params) &&
        Objects.equals(stuck, queueBlockedItem.stuck) &&
        Objects.equals(task, queueBlockedItem.task) &&
        Objects.equals(url, queueBlockedItem.url) &&
        Objects.equals(why, queueBlockedItem.why) &&
        Objects.equals(buildableStartMilliseconds, queueBlockedItem.buildableStartMilliseconds);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

