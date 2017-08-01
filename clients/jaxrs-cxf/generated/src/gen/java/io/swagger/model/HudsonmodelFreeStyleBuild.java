package io.swagger.model;

import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonscmEmptyChangeLogSet;
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

public class HudsonmodelFreeStyleBuild  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private Integer number = null;
  @ApiModelProperty(value = "")
  private String url = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelCauseAction> actions = new ArrayList<HudsonmodelCauseAction>();
  @ApiModelProperty(value = "")
  private Boolean building = null;
  @ApiModelProperty(value = "")
  private String description = null;
  @ApiModelProperty(value = "")
  private String displayName = null;
  @ApiModelProperty(value = "")
  private Integer duration = null;
  @ApiModelProperty(value = "")
  private Integer estimatedDuration = null;
  @ApiModelProperty(value = "")
  private String executor = null;
  @ApiModelProperty(value = "")
  private String fullDisplayName = null;
  @ApiModelProperty(value = "")
  private String id = null;
  @ApiModelProperty(value = "")
  private Boolean keepLog = null;
  @ApiModelProperty(value = "")
  private Integer queueId = null;
  @ApiModelProperty(value = "")
  private String result = null;
  @ApiModelProperty(value = "")
  private Integer timestamp = null;
  @ApiModelProperty(value = "")
  private String builtOn = null;
  @ApiModelProperty(value = "")
  private HudsonscmEmptyChangeLogSet changeSet = null;

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

  public HudsonmodelFreeStyleBuild propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get number
   * @return number
  **/
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  public HudsonmodelFreeStyleBuild number(Integer number) {
    this.number = number;
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

  public HudsonmodelFreeStyleBuild url(String url) {
    this.url = url;
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

  public HudsonmodelFreeStyleBuild actions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelFreeStyleBuild addActionsItem(HudsonmodelCauseAction actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
   * Get building
   * @return building
  **/
  public Boolean getBuilding() {
    return building;
  }

  public void setBuilding(Boolean building) {
    this.building = building;
  }

  public HudsonmodelFreeStyleBuild building(Boolean building) {
    this.building = building;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public HudsonmodelFreeStyleBuild description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonmodelFreeStyleBuild displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get duration
   * @return duration
  **/
  public Integer getDuration() {
    return duration;
  }

  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  public HudsonmodelFreeStyleBuild duration(Integer duration) {
    this.duration = duration;
    return this;
  }

 /**
   * Get estimatedDuration
   * @return estimatedDuration
  **/
  public Integer getEstimatedDuration() {
    return estimatedDuration;
  }

  public void setEstimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
  }

  public HudsonmodelFreeStyleBuild estimatedDuration(Integer estimatedDuration) {
    this.estimatedDuration = estimatedDuration;
    return this;
  }

 /**
   * Get executor
   * @return executor
  **/
  public String getExecutor() {
    return executor;
  }

  public void setExecutor(String executor) {
    this.executor = executor;
  }

  public HudsonmodelFreeStyleBuild executor(String executor) {
    this.executor = executor;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public HudsonmodelFreeStyleBuild fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public HudsonmodelFreeStyleBuild id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get keepLog
   * @return keepLog
  **/
  public Boolean getKeepLog() {
    return keepLog;
  }

  public void setKeepLog(Boolean keepLog) {
    this.keepLog = keepLog;
  }

  public HudsonmodelFreeStyleBuild keepLog(Boolean keepLog) {
    this.keepLog = keepLog;
    return this;
  }

 /**
   * Get queueId
   * @return queueId
  **/
  public Integer getQueueId() {
    return queueId;
  }

  public void setQueueId(Integer queueId) {
    this.queueId = queueId;
  }

  public HudsonmodelFreeStyleBuild queueId(Integer queueId) {
    this.queueId = queueId;
    return this;
  }

 /**
   * Get result
   * @return result
  **/
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public HudsonmodelFreeStyleBuild result(String result) {
    this.result = result;
    return this;
  }

 /**
   * Get timestamp
   * @return timestamp
  **/
  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  public HudsonmodelFreeStyleBuild timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

 /**
   * Get builtOn
   * @return builtOn
  **/
  public String getBuiltOn() {
    return builtOn;
  }

  public void setBuiltOn(String builtOn) {
    this.builtOn = builtOn;
  }

  public HudsonmodelFreeStyleBuild builtOn(String builtOn) {
    this.builtOn = builtOn;
    return this;
  }

 /**
   * Get changeSet
   * @return changeSet
  **/
  public HudsonscmEmptyChangeLogSet getChangeSet() {
    return changeSet;
  }

  public void setChangeSet(HudsonscmEmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
  }

  public HudsonmodelFreeStyleBuild changeSet(HudsonscmEmptyChangeLogSet changeSet) {
    this.changeSet = changeSet;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

