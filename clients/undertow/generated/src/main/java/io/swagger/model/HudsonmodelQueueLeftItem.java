package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class HudsonmodelQueueLeftItem   {
  
  private String propertyClass = null;
  private List<HudsonmodelCauseAction> actions = new ArrayList<HudsonmodelCauseAction>();
  private Boolean blocked = null;
  private Boolean buildable = null;
  private Integer id = null;
  private Integer inQueueSince = null;
  private String params = null;
  private Boolean stuck = null;
  private HudsonmodelFreeStyleProject task = null;
  private String url = null;
  private String why = null;
  private Boolean cancelled = null;
  private HudsonmodelFreeStyleBuild executable = null;

  /**
   **/
  public HudsonmodelQueueLeftItem propertyClass(String propertyClass) {
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
  public HudsonmodelQueueLeftItem actions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  public List<HudsonmodelCauseAction> getActions() {
    return actions;
  }
  public void setActions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("blocked")
  public Boolean getBlocked() {
    return blocked;
  }
  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem id(Integer id) {
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
  public HudsonmodelQueueLeftItem inQueueSince(Integer inQueueSince) {
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
  public HudsonmodelQueueLeftItem params(String params) {
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
  public HudsonmodelQueueLeftItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("stuck")
  public Boolean getStuck() {
    return stuck;
  }
  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem task(HudsonmodelFreeStyleProject task) {
    this.task = task;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("task")
  public HudsonmodelFreeStyleProject getTask() {
    return task;
  }
  public void setTask(HudsonmodelFreeStyleProject task) {
    this.task = task;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem url(String url) {
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
  public HudsonmodelQueueLeftItem why(String why) {
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
  public HudsonmodelQueueLeftItem cancelled(Boolean cancelled) {
    this.cancelled = cancelled;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("cancelled")
  public Boolean getCancelled() {
    return cancelled;
  }
  public void setCancelled(Boolean cancelled) {
    this.cancelled = cancelled;
  }

  /**
   **/
  public HudsonmodelQueueLeftItem executable(HudsonmodelFreeStyleBuild executable) {
    this.executable = executable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("executable")
  public HudsonmodelFreeStyleBuild getExecutable() {
    return executable;
  }
  public void setExecutable(HudsonmodelFreeStyleBuild executable) {
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
    HudsonmodelQueueLeftItem hudsonmodelQueueLeftItem = (HudsonmodelQueueLeftItem) o;
    return Objects.equals(propertyClass, hudsonmodelQueueLeftItem.propertyClass) &&
        Objects.equals(actions, hudsonmodelQueueLeftItem.actions) &&
        Objects.equals(blocked, hudsonmodelQueueLeftItem.blocked) &&
        Objects.equals(buildable, hudsonmodelQueueLeftItem.buildable) &&
        Objects.equals(id, hudsonmodelQueueLeftItem.id) &&
        Objects.equals(inQueueSince, hudsonmodelQueueLeftItem.inQueueSince) &&
        Objects.equals(params, hudsonmodelQueueLeftItem.params) &&
        Objects.equals(stuck, hudsonmodelQueueLeftItem.stuck) &&
        Objects.equals(task, hudsonmodelQueueLeftItem.task) &&
        Objects.equals(url, hudsonmodelQueueLeftItem.url) &&
        Objects.equals(why, hudsonmodelQueueLeftItem.why) &&
        Objects.equals(cancelled, hudsonmodelQueueLeftItem.cancelled) &&
        Objects.equals(executable, hudsonmodelQueueLeftItem.executable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, cancelled, executable);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelQueueLeftItem {\n");
    
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

