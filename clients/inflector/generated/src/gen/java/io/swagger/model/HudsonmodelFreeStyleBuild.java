package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonscmEmptyChangeLogSet;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaInflectorServerCodegen", date = "2017-07-25T10:44:14.875+10:00")
public class HudsonmodelFreeStyleBuild   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("number")
  private Integer number = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("actions")
  private List<HudsonmodelCauseAction> actions = null;

  @JsonProperty("building")
  private Boolean building = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("duration")
  private Integer duration = null;

  @JsonProperty("estimatedDuration")
  private Integer estimatedDuration = null;

  @JsonProperty("executor")
  private String executor = null;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("keepLog")
  private Boolean keepLog = null;

  @JsonProperty("queueId")
  private Integer queueId = null;

  @JsonProperty("result")
  private String result = null;

  @JsonProperty("timestamp")
  private Integer timestamp = null;

  @JsonProperty("builtOn")
  private String builtOn = null;

  @JsonProperty("changeSet")
  private HudsonscmEmptyChangeLogSet changeSet = null;

  /**
   **/
  public HudsonmodelFreeStyleBuild propertyClass(String propertyClass) {
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
  public HudsonmodelFreeStyleBuild number(Integer number) {
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
  public HudsonmodelFreeStyleBuild url(String url) {
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
  public HudsonmodelFreeStyleBuild actions(List<HudsonmodelCauseAction> actions) {
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
  public HudsonmodelFreeStyleBuild building(Boolean building) {
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
  public HudsonmodelFreeStyleBuild description(String description) {
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
  public HudsonmodelFreeStyleBuild displayName(String displayName) {
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
  public HudsonmodelFreeStyleBuild duration(Integer duration) {
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
  public HudsonmodelFreeStyleBuild estimatedDuration(Integer estimatedDuration) {
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
  public HudsonmodelFreeStyleBuild executor(String executor) {
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
  public HudsonmodelFreeStyleBuild fullDisplayName(String fullDisplayName) {
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
  public HudsonmodelFreeStyleBuild id(String id) {
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
  public HudsonmodelFreeStyleBuild keepLog(Boolean keepLog) {
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
  public HudsonmodelFreeStyleBuild queueId(Integer queueId) {
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
  public HudsonmodelFreeStyleBuild result(String result) {
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
  public HudsonmodelFreeStyleBuild timestamp(Integer timestamp) {
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
  public HudsonmodelFreeStyleBuild builtOn(String builtOn) {
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
  public HudsonmodelFreeStyleBuild changeSet(HudsonscmEmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("changeSet")
  public HudsonscmEmptyChangeLogSet getChangeSet() {
    return changeSet;
  }
  public void setChangeSet(HudsonscmEmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild = (HudsonmodelFreeStyleBuild) o;
    return Objects.equals(propertyClass, hudsonmodelFreeStyleBuild.propertyClass) &&
        Objects.equals(number, hudsonmodelFreeStyleBuild.number) &&
        Objects.equals(url, hudsonmodelFreeStyleBuild.url) &&
        Objects.equals(actions, hudsonmodelFreeStyleBuild.actions) &&
        Objects.equals(building, hudsonmodelFreeStyleBuild.building) &&
        Objects.equals(description, hudsonmodelFreeStyleBuild.description) &&
        Objects.equals(displayName, hudsonmodelFreeStyleBuild.displayName) &&
        Objects.equals(duration, hudsonmodelFreeStyleBuild.duration) &&
        Objects.equals(estimatedDuration, hudsonmodelFreeStyleBuild.estimatedDuration) &&
        Objects.equals(executor, hudsonmodelFreeStyleBuild.executor) &&
        Objects.equals(fullDisplayName, hudsonmodelFreeStyleBuild.fullDisplayName) &&
        Objects.equals(id, hudsonmodelFreeStyleBuild.id) &&
        Objects.equals(keepLog, hudsonmodelFreeStyleBuild.keepLog) &&
        Objects.equals(queueId, hudsonmodelFreeStyleBuild.queueId) &&
        Objects.equals(result, hudsonmodelFreeStyleBuild.result) &&
        Objects.equals(timestamp, hudsonmodelFreeStyleBuild.timestamp) &&
        Objects.equals(builtOn, hudsonmodelFreeStyleBuild.builtOn) &&
        Objects.equals(changeSet, hudsonmodelFreeStyleBuild.changeSet);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, number, url, actions, building, description, displayName, duration, estimatedDuration, executor, fullDisplayName, id, keepLog, queueId, result, timestamp, builtOn, changeSet);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelFreeStyleBuild {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

