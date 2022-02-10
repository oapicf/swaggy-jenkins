package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("QueueLeftItem")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-10T09:47:30.188253Z[Etc/UTC]")public class QueueLeftItem   {
  
  private @Valid String propertyClass;
  private @Valid List<CauseAction> actions = new ArrayList<CauseAction>();
  private @Valid Boolean blocked;
  private @Valid Boolean buildable;
  private @Valid Integer id;
  private @Valid Integer inQueueSince;
  private @Valid String params;
  private @Valid Boolean stuck;
  private @Valid FreeStyleProject task;
  private @Valid String url;
  private @Valid String why;
  private @Valid Boolean cancelled;
  private @Valid FreeStyleBuild executable;

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

  @JsonProperty("_class")
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

  @JsonProperty("actions")
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  public QueueLeftItem addActionsItem(CauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<CauseAction>();
    }

    this.actions.add(actionsItem);
    return this;
  }

  public QueueLeftItem removeActionsItem(CauseAction actionsItem) {
    if (actionsItem != null && this.actions != null) {
      this.actions.remove(actionsItem);
    }

    return this;
  }
/**
   **/
  public QueueLeftItem blocked(Boolean blocked) {
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
  public QueueLeftItem buildable(Boolean buildable) {
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
  public QueueLeftItem id(Integer id) {
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
  public QueueLeftItem inQueueSince(Integer inQueueSince) {
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
  public QueueLeftItem params(String params) {
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
  public QueueLeftItem stuck(Boolean stuck) {
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
  public QueueLeftItem task(FreeStyleProject task) {
    this.task = task;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("task")
  public FreeStyleProject getTask() {
    return task;
  }

  @JsonProperty("task")
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

  @JsonProperty("url")
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

  @JsonProperty("why")
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
  public Boolean getCancelled() {
    return cancelled;
  }

  @JsonProperty("cancelled")
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

  @JsonProperty("executable")
  public void setExecutable(FreeStyleBuild executable) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

