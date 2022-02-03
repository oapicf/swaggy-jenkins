/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.cliffano.swaggyjenkins.model.CauseAction;
import com.cliffano.swaggyjenkins.model.FreeStyleProject;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * QueueBlockedItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-02T10:43:57.983240Z[Etc/UTC]")
public class QueueBlockedItem {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public static final String SERIALIZED_NAME_ACTIONS = "actions";
  @SerializedName(SERIALIZED_NAME_ACTIONS)
  private List<CauseAction> actions = null;

  public static final String SERIALIZED_NAME_BLOCKED = "blocked";
  @SerializedName(SERIALIZED_NAME_BLOCKED)
  private Boolean blocked;

  public static final String SERIALIZED_NAME_BUILDABLE = "buildable";
  @SerializedName(SERIALIZED_NAME_BUILDABLE)
  private Boolean buildable;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_IN_QUEUE_SINCE = "inQueueSince";
  @SerializedName(SERIALIZED_NAME_IN_QUEUE_SINCE)
  private Integer inQueueSince;

  public static final String SERIALIZED_NAME_PARAMS = "params";
  @SerializedName(SERIALIZED_NAME_PARAMS)
  private String params;

  public static final String SERIALIZED_NAME_STUCK = "stuck";
  @SerializedName(SERIALIZED_NAME_STUCK)
  private Boolean stuck;

  public static final String SERIALIZED_NAME_TASK = "task";
  @SerializedName(SERIALIZED_NAME_TASK)
  private FreeStyleProject task;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_WHY = "why";
  @SerializedName(SERIALIZED_NAME_WHY)
  private String why;

  public static final String SERIALIZED_NAME_BUILDABLE_START_MILLISECONDS = "buildableStartMilliseconds";
  @SerializedName(SERIALIZED_NAME_BUILDABLE_START_MILLISECONDS)
  private Integer buildableStartMilliseconds;

  public QueueBlockedItem() { 
  }

  public QueueBlockedItem propertyClass(String propertyClass) {
    
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPropertyClass() {
    return propertyClass;
  }


  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  public QueueBlockedItem actions(List<CauseAction> actions) {
    
    this.actions = actions;
    return this;
  }

  public QueueBlockedItem addActionsItem(CauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<CauseAction>();
    }
    this.actions.add(actionsItem);
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<CauseAction> getActions() {
    return actions;
  }


  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }


  public QueueBlockedItem blocked(Boolean blocked) {
    
    this.blocked = blocked;
    return this;
  }

   /**
   * Get blocked
   * @return blocked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getBlocked() {
    return blocked;
  }


  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }


  public QueueBlockedItem buildable(Boolean buildable) {
    
    this.buildable = buildable;
    return this;
  }

   /**
   * Get buildable
   * @return buildable
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getBuildable() {
    return buildable;
  }


  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }


  public QueueBlockedItem id(Integer id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getId() {
    return id;
  }


  public void setId(Integer id) {
    this.id = id;
  }


  public QueueBlockedItem inQueueSince(Integer inQueueSince) {
    
    this.inQueueSince = inQueueSince;
    return this;
  }

   /**
   * Get inQueueSince
   * @return inQueueSince
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getInQueueSince() {
    return inQueueSince;
  }


  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }


  public QueueBlockedItem params(String params) {
    
    this.params = params;
    return this;
  }

   /**
   * Get params
   * @return params
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getParams() {
    return params;
  }


  public void setParams(String params) {
    this.params = params;
  }


  public QueueBlockedItem stuck(Boolean stuck) {
    
    this.stuck = stuck;
    return this;
  }

   /**
   * Get stuck
   * @return stuck
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getStuck() {
    return stuck;
  }


  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }


  public QueueBlockedItem task(FreeStyleProject task) {
    
    this.task = task;
    return this;
  }

   /**
   * Get task
   * @return task
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public FreeStyleProject getTask() {
    return task;
  }


  public void setTask(FreeStyleProject task) {
    this.task = task;
  }


  public QueueBlockedItem url(String url) {
    
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUrl() {
    return url;
  }


  public void setUrl(String url) {
    this.url = url;
  }


  public QueueBlockedItem why(String why) {
    
    this.why = why;
    return this;
  }

   /**
   * Get why
   * @return why
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getWhy() {
    return why;
  }


  public void setWhy(String why) {
    this.why = why;
  }


  public QueueBlockedItem buildableStartMilliseconds(Integer buildableStartMilliseconds) {
    
    this.buildableStartMilliseconds = buildableStartMilliseconds;
    return this;
  }

   /**
   * Get buildableStartMilliseconds
   * @return buildableStartMilliseconds
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

