package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleProject;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("QueueBlockedItem")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class QueueBlockedItem   {
  private String propertyClass;
  private @Valid List<@Valid CauseAction> actions = new ArrayList<>();
  private Boolean blocked;
  private Boolean buildable;
  private Integer id;
  private Integer inQueueSince;
  private String params;
  private Boolean stuck;
  private FreeStyleProject task;
  private String url;
  private String why;
  private Integer buildableStartMilliseconds;

  public QueueBlockedItem() {
  }

  /**
   **/
  public QueueBlockedItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public QueueBlockedItem actions(List<@Valid CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  @Valid public List<@Valid CauseAction> getActions() {
    return actions;
  }

  @JsonProperty("actions")
  public void setActions(List<@Valid CauseAction> actions) {
    this.actions = actions;
  }

  public QueueBlockedItem addActionsItem(CauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<>();
    }

    this.actions.add(actionsItem);
    return this;
  }

  public QueueBlockedItem removeActionsItem(CauseAction actionsItem) {
    if (actionsItem != null && this.actions != null) {
      this.actions.remove(actionsItem);
    }

    return this;
  }
  /**
   **/
  public QueueBlockedItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("blocked")
  public Boolean getBlocked() {
    return blocked;
  }

  @JsonProperty("blocked")
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
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  @JsonProperty("buildable")
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
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }

  @JsonProperty("id")
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
  @JsonProperty("inQueueSince")
  public Integer getInQueueSince() {
    return inQueueSince;
  }

  @JsonProperty("inQueueSince")
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
  @JsonProperty("params")
  public String getParams() {
    return params;
  }

  @JsonProperty("params")
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
  @JsonProperty("stuck")
  public Boolean getStuck() {
    return stuck;
  }

  @JsonProperty("stuck")
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
  @JsonProperty("task")
  @Valid public FreeStyleProject getTask() {
    return task;
  }

  @JsonProperty("task")
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
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  @JsonProperty("url")
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
  @JsonProperty("why")
  public String getWhy() {
    return why;
  }

  @JsonProperty("why")
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
  @JsonProperty("buildableStartMilliseconds")
  public Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }

  @JsonProperty("buildableStartMilliseconds")
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

