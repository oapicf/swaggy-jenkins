package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class FreeStyleBuild  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private Integer number;

  @ApiModelProperty(value = "")
  private String url;

  @ApiModelProperty(value = "")
  @Valid
  private List<CauseAction> actions = null;

  @ApiModelProperty(value = "")
  private Boolean building;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer duration;

  @ApiModelProperty(value = "")
  private Integer estimatedDuration;

  @ApiModelProperty(value = "")
  private String executor;

  @ApiModelProperty(value = "")
  private String fullDisplayName;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private Boolean keepLog;

  @ApiModelProperty(value = "")
  private Integer queueId;

  @ApiModelProperty(value = "")
  private String result;

  @ApiModelProperty(value = "")
  private Integer timestamp;

  @ApiModelProperty(value = "")
  private String builtOn;

  @ApiModelProperty(value = "")
  @Valid
  private EmptyChangeLogSet changeSet;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public FreeStyleBuild propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get number
  * @return number
  */
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }

  /**
   * Sets the <code>number</code> property.
   */
 public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   * Sets the <code>number</code> property.
   */
  public FreeStyleBuild number(Integer number) {
    this.number = number;
    return this;
  }

 /**
  * Get url
  * @return url
  */
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  /**
   * Sets the <code>url</code> property.
   */
 public void setUrl(String url) {
    this.url = url;
  }

  /**
   * Sets the <code>url</code> property.
   */
  public FreeStyleBuild url(String url) {
    this.url = url;
    return this;
  }

 /**
  * Get actions
  * @return actions
  */
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
 public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
  public FreeStyleBuild actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Adds a new item to the <code>actions</code> list.
   */
  public FreeStyleBuild addActionsItem(CauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
  * Get building
  * @return building
  */
  @JsonProperty("building")
  public Boolean getBuilding() {
    return building;
  }

  /**
   * Sets the <code>building</code> property.
   */
 public void setBuilding(Boolean building) {
    this.building = building;
  }

  /**
   * Sets the <code>building</code> property.
   */
  public FreeStyleBuild building(Boolean building) {
    this.building = building;
    return this;
  }

 /**
  * Get description
  * @return description
  */
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  /**
   * Sets the <code>description</code> property.
   */
 public void setDescription(String description) {
    this.description = description;
  }

  /**
   * Sets the <code>description</code> property.
   */
  public FreeStyleBuild description(String description) {
    this.description = description;
    return this;
  }

 /**
  * Get displayName
  * @return displayName
  */
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
 public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
  public FreeStyleBuild displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
  * Get duration
  * @return duration
  */
  @JsonProperty("duration")
  public Integer getDuration() {
    return duration;
  }

  /**
   * Sets the <code>duration</code> property.
   */
 public void setDuration(Integer duration) {
    this.duration = duration;
  }

  /**
   * Sets the <code>duration</code> property.
   */
  public FreeStyleBuild duration(Integer duration) {
    this.duration = duration;
    return this;
  }

 /**
  * Get estimatedDuration
  * @return estimatedDuration
  */
  @JsonProperty("estimatedDuration")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  /**
   * Sets the <code>estimatedDuration</code> property.
   */
 public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  /**
   * Sets the <code>estimatedDuration</code> property.
   */
  public FreeStyleBuild estimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

 /**
  * Get executor
  * @return executor
  */
  @JsonProperty("executor")
  public String getExecutor() {
    return executor;
  }

  /**
   * Sets the <code>executor</code> property.
   */
 public void setExecutor(String executor) {
    this.executor = executor;
  }

  /**
   * Sets the <code>executor</code> property.
   */
  public FreeStyleBuild executor(String executor) {
    this.executor = executor;
    return this;
  }

 /**
  * Get fullDisplayName
  * @return fullDisplayName
  */
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
 public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
  public FreeStyleBuild fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
 public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public FreeStyleBuild id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get keepLog
  * @return keepLog
  */
  @JsonProperty("keepLog")
  public Boolean getKeepLog() {
    return keepLog;
  }

  /**
   * Sets the <code>keepLog</code> property.
   */
 public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  /**
   * Sets the <code>keepLog</code> property.
   */
  public FreeStyleBuild keepLog(Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

 /**
  * Get queueId
  * @return queueId
  */
  @JsonProperty("queueId")
  public Integer getQueueId() {
    return queueId;
  }

  /**
   * Sets the <code>queueId</code> property.
   */
 public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  /**
   * Sets the <code>queueId</code> property.
   */
  public FreeStyleBuild queueId(Integer queueId) {
    this.queueId = queueId;
    return this;
  }

 /**
  * Get result
  * @return result
  */
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  /**
   * Sets the <code>result</code> property.
   */
 public void setResult(String result) {
    this.result = result;
  }

  /**
   * Sets the <code>result</code> property.
   */
  public FreeStyleBuild result(String result) {
    this.result = result;
    return this;
  }

 /**
  * Get timestamp
  * @return timestamp
  */
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }

  /**
   * Sets the <code>timestamp</code> property.
   */
 public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Sets the <code>timestamp</code> property.
   */
  public FreeStyleBuild timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

 /**
  * Get builtOn
  * @return builtOn
  */
  @JsonProperty("builtOn")
  public String getBuiltOn() {
    return builtOn;
  }

  /**
   * Sets the <code>builtOn</code> property.
   */
 public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  /**
   * Sets the <code>builtOn</code> property.
   */
  public FreeStyleBuild builtOn(String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

 /**
  * Get changeSet
  * @return changeSet
  */
  @JsonProperty("changeSet")
  public EmptyChangeLogSet getChangeSet() {
    return changeSet;
  }

  /**
   * Sets the <code>changeSet</code> property.
   */
 public void setChangeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }

  /**
   * Sets the <code>changeSet</code> property.
   */
  public FreeStyleBuild changeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleBuild {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    building: ").append(toIndentedString(building)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    duration: ").append(toIndentedString(duration)).append("\n");
    sb.append("    estimatedDuration: ").append(toIndentedString(estimatedDuration)).append("\n");
    sb.append("    executor: ").append(toIndentedString(executor)).append("\n");
    sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    keepLog: ").append(toIndentedString(keepLog)).append("\n");
    sb.append("    queueId: ").append(toIndentedString(queueId)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    builtOn: ").append(toIndentedString(builtOn)).append("\n");
    sb.append("    changeSet: ").append(toIndentedString(changeSet)).append("\n");
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

