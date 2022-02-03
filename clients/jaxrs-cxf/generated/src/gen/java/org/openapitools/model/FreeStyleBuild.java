package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
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
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FreeStyleBuild propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get number
   * @return number
  **/
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  public FreeStyleBuild number(Integer number) {
    this.number = number;
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

  public FreeStyleBuild url(String url) {
    this.url = url;
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

  public FreeStyleBuild actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public FreeStyleBuild addActionsItem(CauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
   * Get building
   * @return building
  **/
  @JsonProperty("building")
  public Boolean getBuilding() {
    return building;
  }

  public void setBuilding(Boolean building) {
    this.building = building;
  }

  public FreeStyleBuild building(Boolean building) {
    this.building = building;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleBuild description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public FreeStyleBuild displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get duration
   * @return duration
  **/
  @JsonProperty("duration")
  public Integer getDuration() {
    return duration;
  }

  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  public FreeStyleBuild duration(Integer duration) {
    this.duration = duration;
    return this;
  }

 /**
   * Get estimatedDuration
   * @return estimatedDuration
  **/
  @JsonProperty("estimatedDuration")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  public FreeStyleBuild estimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

 /**
   * Get executor
   * @return executor
  **/
  @JsonProperty("executor")
  public String getExecutor() {
    return executor;
  }

  public void setExecutor(String executor) {
    this.executor = executor;
  }

  public FreeStyleBuild executor(String executor) {
    this.executor = executor;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleBuild fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public FreeStyleBuild id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get keepLog
   * @return keepLog
  **/
  @JsonProperty("keepLog")
  public Boolean getKeepLog() {
    return keepLog;
  }

  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  public FreeStyleBuild keepLog(Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

 /**
   * Get queueId
   * @return queueId
  **/
  @JsonProperty("queueId")
  public Integer getQueueId() {
    return queueId;
  }

  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  public FreeStyleBuild queueId(Integer queueId) {
    this.queueId = queueId;
    return this;
  }

 /**
   * Get result
   * @return result
  **/
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public FreeStyleBuild result(String result) {
    this.result = result;
    return this;
  }

 /**
   * Get timestamp
   * @return timestamp
  **/
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  public FreeStyleBuild timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

 /**
   * Get builtOn
   * @return builtOn
  **/
  @JsonProperty("builtOn")
  public String getBuiltOn() {
    return builtOn;
  }

  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  public FreeStyleBuild builtOn(String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

 /**
   * Get changeSet
   * @return changeSet
  **/
  @JsonProperty("changeSet")
  public EmptyChangeLogSet getChangeSet() {
    return changeSet;
  }

  public void setChangeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }

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

