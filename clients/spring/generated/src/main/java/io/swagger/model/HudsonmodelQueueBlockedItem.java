package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * HudsonmodelQueueBlockedItem
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class HudsonmodelQueueBlockedItem   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("actions")
  private List<HudsonmodelCauseAction> actions = null;

  @JsonProperty("blocked")
  private Boolean blocked = null;

  @JsonProperty("buildable")
  private Boolean buildable = null;

  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("inQueueSince")
  private Integer inQueueSince = null;

  @JsonProperty("params")
  private String params = null;

  @JsonProperty("stuck")
  private Boolean stuck = null;

  @JsonProperty("task")
  private HudsonmodelFreeStyleProject task = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("why")
  private String why = null;

  @JsonProperty("buildableStartMilliseconds")
  private Integer buildableStartMilliseconds = null;

  public HudsonmodelQueueBlockedItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelQueueBlockedItem actions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelQueueBlockedItem addActionsItem(HudsonmodelCauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<HudsonmodelCauseAction>();
    }
    this.actions.add(actionsItem);
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @ApiModelProperty(value = "")

  @Valid

  public List<HudsonmodelCauseAction> getActions() {
    return actions;
  }

  public void setActions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
  }

  public HudsonmodelQueueBlockedItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

   /**
   * Get blocked
   * @return blocked
  **/
  @ApiModelProperty(value = "")


  public Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  public HudsonmodelQueueBlockedItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

   /**
   * Get buildable
   * @return buildable
  **/
  @ApiModelProperty(value = "")


  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public HudsonmodelQueueBlockedItem id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(value = "")


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public HudsonmodelQueueBlockedItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

   /**
   * Get inQueueSince
   * @return inQueueSince
  **/
  @ApiModelProperty(value = "")


  public Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public HudsonmodelQueueBlockedItem params(String params) {
    this.params = params;
    return this;
  }

   /**
   * Get params
   * @return params
  **/
  @ApiModelProperty(value = "")


  public String getParams() {
    return params;
  }

  public void setParams(String params) {
    this.params = params;
  }

  public HudsonmodelQueueBlockedItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

   /**
   * Get stuck
   * @return stuck
  **/
  @ApiModelProperty(value = "")


  public Boolean getStuck() {
    return stuck;
  }

  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  public HudsonmodelQueueBlockedItem task(HudsonmodelFreeStyleProject task) {
    this.task = task;
    return this;
  }

   /**
   * Get task
   * @return task
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleProject getTask() {
    return task;
  }

  public void setTask(HudsonmodelFreeStyleProject task) {
    this.task = task;
  }

  public HudsonmodelQueueBlockedItem url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @ApiModelProperty(value = "")


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public HudsonmodelQueueBlockedItem why(String why) {
    this.why = why;
    return this;
  }

   /**
   * Get why
   * @return why
  **/
  @ApiModelProperty(value = "")


  public String getWhy() {
    return why;
  }

  public void setWhy(String why) {
    this.why = why;
  }

  public HudsonmodelQueueBlockedItem buildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
  }

   /**
   * Get buildableStartMilliseconds
   * @return buildableStartMilliseconds
  **/
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
    HudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem = (HudsonmodelQueueBlockedItem) o;
    return Objects.equals(this.propertyClass, hudsonmodelQueueBlockedItem.propertyClass) &&
        Objects.equals(this.actions, hudsonmodelQueueBlockedItem.actions) &&
        Objects.equals(this.blocked, hudsonmodelQueueBlockedItem.blocked) &&
        Objects.equals(this.buildable, hudsonmodelQueueBlockedItem.buildable) &&
        Objects.equals(this.id, hudsonmodelQueueBlockedItem.id) &&
        Objects.equals(this.inQueueSince, hudsonmodelQueueBlockedItem.inQueueSince) &&
        Objects.equals(this.params, hudsonmodelQueueBlockedItem.params) &&
        Objects.equals(this.stuck, hudsonmodelQueueBlockedItem.stuck) &&
        Objects.equals(this.task, hudsonmodelQueueBlockedItem.task) &&
        Objects.equals(this.url, hudsonmodelQueueBlockedItem.url) &&
        Objects.equals(this.why, hudsonmodelQueueBlockedItem.why) &&
        Objects.equals(this.buildableStartMilliseconds, hudsonmodelQueueBlockedItem.buildableStartMilliseconds);
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

