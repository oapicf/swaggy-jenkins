package org.openapitools.model;

import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleProject;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class QueueBlockedItem implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("actions")
  private List<CauseAction> actions = new ArrayList<>();

  @JsonProperty("blocked")
  private Boolean blocked;

  @JsonProperty("buildable")
  private Boolean buildable;

  @JsonProperty("id")
  private Integer id;

  @JsonProperty("inQueueSince")
  private Integer inQueueSince;

  @JsonProperty("params")
  private String params;

  @JsonProperty("stuck")
  private Boolean stuck;

  @JsonProperty("task")
  private FreeStyleProject task;

  @JsonProperty("url")
  private String url;

  @JsonProperty("why")
  private String why;

  @JsonProperty("buildableStartMilliseconds")
  private Integer buildableStartMilliseconds;

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
   * @return blocked
   */
  public Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  /**
   * 
   * @return buildable
   */
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   * 
   * @return id
   */
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  /**
   * 
   * @return inQueueSince
   */
  public Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  /**
   * 
   * @return params
   */
  public String getParams() {
    return params;
  }

  public void setParams(String params) {
    this.params = params;
  }

  /**
   * 
   * @return stuck
   */
  public Boolean getStuck() {
    return stuck;
  }

  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  /**
   * 
   * @return task
   */
  public FreeStyleProject getTask() {
    return task;
  }

  public void setTask(FreeStyleProject task) {
    this.task = task;
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
   * @return why
   */
  public String getWhy() {
    return why;
  }

  public void setWhy(String why) {
    this.why = why;
  }

  /**
   * 
   * @return buildableStartMilliseconds
   */
  public Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }

  public void setBuildableStartMilliseconds(Integer buildableStartMilliseconds) {
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
