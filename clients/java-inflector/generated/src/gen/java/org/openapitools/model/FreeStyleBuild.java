package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2026-02-01T01:23:57.874111660Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class FreeStyleBuild   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("number")
  private Integer number;

  @JsonProperty("url")
  private String url;

  @JsonProperty("actions")
  private List<CauseAction> actions = null;

  @JsonProperty("building")
  private Boolean building;

  @JsonProperty("description")
  private String description;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("duration")
  private Integer duration;

  @JsonProperty("estimatedDuration")
  private Integer estimatedDuration;

  @JsonProperty("executor")
  private String executor;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName;

  @JsonProperty("id")
  private String id;

  @JsonProperty("keepLog")
  private Boolean keepLog;

  @JsonProperty("queueId")
  private Integer queueId;

  @JsonProperty("result")
  private String result;

  @JsonProperty("timestamp")
  private Integer timestamp;

  @JsonProperty("builtOn")
  private String builtOn;

  @JsonProperty("changeSet")
  private EmptyChangeLogSet changeSet;

  /**
   **/
  public FreeStyleBuild propertyClass(String propertyClass) {
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
  public FreeStyleBuild number(Integer number) {
    this.number = number;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  public FreeStyleBuild url(String url) {
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
  public FreeStyleBuild actions(List<CauseAction> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  public List<CauseAction> getActions() {
    return actions;
  }
  public void setActions(List<CauseAction> actions) {
    this.actions = actions;
  }

  /**
   **/
  public FreeStyleBuild building(Boolean building) {
    this.building = building;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("building")
  public Boolean getBuilding() {
    return building;
  }
  public void setBuilding(Boolean building) {
    this.building = building;
  }

  /**
   **/
  public FreeStyleBuild description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public FreeStyleBuild displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  public FreeStyleBuild duration(Integer duration) {
    this.duration = duration;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("duration")
  public Integer getDuration() {
    return duration;
  }
  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  /**
   **/
  public FreeStyleBuild estimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDuration")
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }
  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  /**
   **/
  public FreeStyleBuild executor(String executor) {
    this.executor = executor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("executor")
  public String getExecutor() {
    return executor;
  }
  public void setExecutor(String executor) {
    this.executor = executor;
  }

  /**
   **/
  public FreeStyleBuild fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  public FreeStyleBuild id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public FreeStyleBuild keepLog(Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("keepLog")
  public Boolean getKeepLog() {
    return keepLog;
  }
  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  /**
   **/
  public FreeStyleBuild queueId(Integer queueId) {
    this.queueId = queueId;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("queueId")
  public Integer getQueueId() {
    return queueId;
  }
  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  /**
   **/
  public FreeStyleBuild result(String result) {
    this.result = result;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("result")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
  }

  /**
   **/
  public FreeStyleBuild timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   **/
  public FreeStyleBuild builtOn(String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("builtOn")
  public String getBuiltOn() {
    return builtOn;
  }
  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  /**
   **/
  public FreeStyleBuild changeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("changeSet")
  public EmptyChangeLogSet getChangeSet() {
    return changeSet;
  }
  public void setChangeSet(EmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FreeStyleBuild freeStyleBuild = (FreeStyleBuild) o;
    return Objects.equals(propertyClass, freeStyleBuild.propertyClass) &&
        Objects.equals(number, freeStyleBuild.number) &&
        Objects.equals(url, freeStyleBuild.url) &&
        Objects.equals(actions, freeStyleBuild.actions) &&
        Objects.equals(building, freeStyleBuild.building) &&
        Objects.equals(description, freeStyleBuild.description) &&
        Objects.equals(displayName, freeStyleBuild.displayName) &&
        Objects.equals(duration, freeStyleBuild.duration) &&
        Objects.equals(estimatedDuration, freeStyleBuild.estimatedDuration) &&
        Objects.equals(executor, freeStyleBuild.executor) &&
        Objects.equals(fullDisplayName, freeStyleBuild.fullDisplayName) &&
        Objects.equals(id, freeStyleBuild.id) &&
        Objects.equals(keepLog, freeStyleBuild.keepLog) &&
        Objects.equals(queueId, freeStyleBuild.queueId) &&
        Objects.equals(result, freeStyleBuild.result) &&
        Objects.equals(timestamp, freeStyleBuild.timestamp) &&
        Objects.equals(builtOn, freeStyleBuild.builtOn) &&
        Objects.equals(changeSet, freeStyleBuild.changeSet);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, number, url, actions, building, description, displayName, duration, estimatedDuration, executor, fullDisplayName, id, keepLog, queueId, result, timestamp, builtOn, changeSet);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

