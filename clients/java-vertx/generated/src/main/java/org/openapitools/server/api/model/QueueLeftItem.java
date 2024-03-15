package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.api.model.CauseAction;
import org.openapitools.server.api.model.FreeStyleBuild;
import org.openapitools.server.api.model.FreeStyleProject;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class QueueLeftItem   {
  
  private String propertyClass;
  private List<CauseAction> actions;
  private Boolean blocked;
  private Boolean buildable;
  private Integer id;
  private Integer inQueueSince;
  private String params;
  private Boolean stuck;
  private FreeStyleProject task;
  private String url;
  private String why;
  private Boolean cancelled;
  private FreeStyleBuild executable;

  public QueueLeftItem () {

  }

  public QueueLeftItem (String propertyClass, List<CauseAction> actions, Boolean blocked, Boolean buildable, Integer id, Integer inQueueSince, String params, Boolean stuck, FreeStyleProject task, String url, String why, Boolean cancelled, FreeStyleBuild executable) {
    this.propertyClass = propertyClass;
    this.actions = actions;
    this.blocked = blocked;
    this.buildable = buildable;
    this.id = id;
    this.inQueueSince = inQueueSince;
    this.params = params;
    this.stuck = stuck;
    this.task = task;
    this.url = url;
    this.why = why;
    this.cancelled = cancelled;
    this.executable = executable;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

    
  @JsonProperty("blocked")
  public Boolean getBlocked() {
    return blocked;
  }
  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

    
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

    
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

    
  @JsonProperty("inQueueSince")
  public Integer getInQueueSince() {
    return inQueueSince;
  }
  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

    
  @JsonProperty("params")
  public String getParams() {
    return params;
  }
  public void setParams(String params) {
    this.params = params;
  }

    
  @JsonProperty("stuck")
  public Boolean getStuck() {
    return stuck;
  }
  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

    
  @JsonProperty("task")
  public FreeStyleProject getTask() {
    return task;
  }
  public void setTask(FreeStyleProject task) {
    this.task = task;
  }

    
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

    
  @JsonProperty("why")
  public String getWhy() {
    return why;
  }
  public void setWhy(String why) {
    this.why = why;
  }

    
  @JsonProperty("cancelled")
  public Boolean getCancelled() {
    return cancelled;
  }
  public void setCancelled(Boolean cancelled) {
    this.cancelled = cancelled;
  }

    
  @JsonProperty("executable")
  public FreeStyleBuild getExecutable() {
    return executable;
  }
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
