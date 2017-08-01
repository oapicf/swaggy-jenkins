package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class HudsonmodelQueueBlockedItem   {
  
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
  private Integer buildableStartMilliseconds = null;

  /**
   **/
  
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
  
  @ApiModelProperty(value = "")
  @JsonProperty("buildableStartMilliseconds")
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
    HudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem = (HudsonmodelQueueBlockedItem) o;
    return Objects.equals(propertyClass, hudsonmodelQueueBlockedItem.propertyClass) &&
        Objects.equals(actions, hudsonmodelQueueBlockedItem.actions) &&
        Objects.equals(blocked, hudsonmodelQueueBlockedItem.blocked) &&
        Objects.equals(buildable, hudsonmodelQueueBlockedItem.buildable) &&
        Objects.equals(id, hudsonmodelQueueBlockedItem.id) &&
        Objects.equals(inQueueSince, hudsonmodelQueueBlockedItem.inQueueSince) &&
        Objects.equals(params, hudsonmodelQueueBlockedItem.params) &&
        Objects.equals(stuck, hudsonmodelQueueBlockedItem.stuck) &&
        Objects.equals(task, hudsonmodelQueueBlockedItem.task) &&
        Objects.equals(url, hudsonmodelQueueBlockedItem.url) &&
        Objects.equals(why, hudsonmodelQueueBlockedItem.why) &&
        Objects.equals(buildableStartMilliseconds, hudsonmodelQueueBlockedItem.buildableStartMilliseconds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, buildableStartMilliseconds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelQueueBlockedItem {\n");
    
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

