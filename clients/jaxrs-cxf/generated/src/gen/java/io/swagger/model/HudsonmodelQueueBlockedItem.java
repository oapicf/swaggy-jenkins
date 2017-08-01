package io.swagger.model;

import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class HudsonmodelQueueBlockedItem  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelCauseAction> actions = new ArrayList<HudsonmodelCauseAction>();
  @ApiModelProperty(value = "")
  private Boolean blocked = null;
  @ApiModelProperty(value = "")
  private Boolean buildable = null;
  @ApiModelProperty(value = "")
  private Integer id = null;
  @ApiModelProperty(value = "")
  private Integer inQueueSince = null;
  @ApiModelProperty(value = "")
  private String params = null;
  @ApiModelProperty(value = "")
  private Boolean stuck = null;
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleProject task = null;
  @ApiModelProperty(value = "")
  private String url = null;
  @ApiModelProperty(value = "")
  private String why = null;
  @ApiModelProperty(value = "")
  private Integer buildableStartMilliseconds = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelQueueBlockedItem propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  public List<HudsonmodelCauseAction> getActions() {
    return actions;
  }

  public void setActions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
  }

  public HudsonmodelQueueBlockedItem actions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelQueueBlockedItem addActionsItem(HudsonmodelCauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
   * Get blocked
   * @return blocked
  **/
  public Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  public HudsonmodelQueueBlockedItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

 /**
   * Get buildable
   * @return buildable
  **/
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public HudsonmodelQueueBlockedItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public HudsonmodelQueueBlockedItem id(Integer id) {
    this.id = id;
    return this;
  }

 /**
   * Get inQueueSince
   * @return inQueueSince
  **/
  public Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public HudsonmodelQueueBlockedItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

 /**
   * Get params
   * @return params
  **/
  public String getParams() {
    return params;
  }

  public void setParams(String params) {
    this.params = params;
  }

  public HudsonmodelQueueBlockedItem params(String params) {
    this.params = params;
    return this;
  }

 /**
   * Get stuck
   * @return stuck
  **/
  public Boolean getStuck() {
    return stuck;
  }

  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  public HudsonmodelQueueBlockedItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

 /**
   * Get task
   * @return task
  **/
  public HudsonmodelFreeStyleProject getTask() {
    return task;
  }

  public void setTask(HudsonmodelFreeStyleProject task) {
    this.task = task;
  }

  public HudsonmodelQueueBlockedItem task(HudsonmodelFreeStyleProject task) {
    this.task = task;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public HudsonmodelQueueBlockedItem url(String url) {
    this.url = url;
    return this;
  }

 /**
   * Get why
   * @return why
  **/
  public String getWhy() {
    return why;
  }

  public void setWhy(String why) {
    this.why = why;
  }

  public HudsonmodelQueueBlockedItem why(String why) {
    this.why = why;
    return this;
  }

 /**
   * Get buildableStartMilliseconds
   * @return buildableStartMilliseconds
  **/
  public Integer getBuildableStartMilliseconds() {
    return buildableStartMilliseconds;
  }

  public void setBuildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
  }

  public HudsonmodelQueueBlockedItem buildableStartMilliseconds(Integer buildableStartMilliseconds) {
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

