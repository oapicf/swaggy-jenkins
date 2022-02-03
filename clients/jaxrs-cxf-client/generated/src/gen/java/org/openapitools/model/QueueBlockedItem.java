package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleProject;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

public class QueueBlockedItem  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private List<CauseAction> actions = null;

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
  private FreeStyleProject task;

  @ApiModelProperty(value = "")
  private String url;

  @ApiModelProperty(value = "")
  private String why;

  @ApiModelProperty(value = "")
  private Integer buildableStartMilliseconds;
 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public QueueBlockedItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }

  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  public QueueBlockedItem actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public QueueBlockedItem addActionsItem(CauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
   * Get blocked
   * @return blocked
  **/
  @JsonProperty("blocked")
  public Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  public QueueBlockedItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

 /**
   * Get buildable
   * @return buildable
  **/
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public QueueBlockedItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public QueueBlockedItem id(Integer id) {
    this.id = id;
    return this;
  }

 /**
   * Get inQueueSince
   * @return inQueueSince
  **/
  @JsonProperty("inQueueSince")
  public Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public QueueBlockedItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

 /**
   * Get params
   * @return params
  **/
  @JsonProperty("params")
  public String getParams() {
    return params;
  }

  public void setParams(String params) {
    this.params = params;
  }

  public QueueBlockedItem params(String params) {
    this.params = params;
    return this;
  }

 /**
   * Get stuck
   * @return stuck
  **/
  @JsonProperty("stuck")
  public Boolean getStuck() {
    return stuck;
  }

  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  public QueueBlockedItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

 /**
   * Get task
   * @return task
  **/
  @JsonProperty("task")
  public FreeStyleProject getTask() {
    return task;
  }

  public void setTask(FreeStyleProject task) {
    this.task = task;
  }

  public QueueBlockedItem task(FreeStyleProject task) {
    this.task = task;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public QueueBlockedItem url(String url) {
    this.url = url;
    return this;
  }

 /**
   * Get why
   * @return why
  **/
  @JsonProperty("why")
  public String getWhy() {
    return why;
  }

  public void setWhy(String why) {
    this.why = why;
  }

  public QueueBlockedItem why(String why) {
    this.why = why;
    return this;
  }

 /**
   * Get buildableStartMilliseconds
   * @return buildableStartMilliseconds
  **/
  @JsonProperty("buildableStartMilliseconds")
  public Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }

  public void setBuildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
  }

  public QueueBlockedItem buildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

