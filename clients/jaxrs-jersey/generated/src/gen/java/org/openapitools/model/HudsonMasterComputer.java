/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * HudsonMasterComputer
 */
@JsonPropertyOrder({
  HudsonMasterComputer.JSON_PROPERTY_PROPERTY_CLASS,
  HudsonMasterComputer.JSON_PROPERTY_DISPLAY_NAME,
  HudsonMasterComputer.JSON_PROPERTY_EXECUTORS,
  HudsonMasterComputer.JSON_PROPERTY_ICON,
  HudsonMasterComputer.JSON_PROPERTY_ICON_CLASS_NAME,
  HudsonMasterComputer.JSON_PROPERTY_IDLE,
  HudsonMasterComputer.JSON_PROPERTY_JNLP_AGENT,
  HudsonMasterComputer.JSON_PROPERTY_LAUNCH_SUPPORTED,
  HudsonMasterComputer.JSON_PROPERTY_LOAD_STATISTICS,
  HudsonMasterComputer.JSON_PROPERTY_MANUAL_LAUNCH_ALLOWED,
  HudsonMasterComputer.JSON_PROPERTY_MONITOR_DATA,
  HudsonMasterComputer.JSON_PROPERTY_NUM_EXECUTORS,
  HudsonMasterComputer.JSON_PROPERTY_OFFLINE,
  HudsonMasterComputer.JSON_PROPERTY_OFFLINE_CAUSE,
  HudsonMasterComputer.JSON_PROPERTY_OFFLINE_CAUSE_REASON,
  HudsonMasterComputer.JSON_PROPERTY_TEMPORARILY_OFFLINE
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-09T13:05:29.098198Z[Etc/UTC]")
public class HudsonMasterComputer   {
  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
  @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
  private String displayName;

  public static final String JSON_PROPERTY_EXECUTORS = "executors";
  @JsonProperty(JSON_PROPERTY_EXECUTORS)
  private List<HudsonMasterComputerexecutors> executors = null;

  public static final String JSON_PROPERTY_ICON = "icon";
  @JsonProperty(JSON_PROPERTY_ICON)
  private String icon;

  public static final String JSON_PROPERTY_ICON_CLASS_NAME = "iconClassName";
  @JsonProperty(JSON_PROPERTY_ICON_CLASS_NAME)
  private String iconClassName;

  public static final String JSON_PROPERTY_IDLE = "idle";
  @JsonProperty(JSON_PROPERTY_IDLE)
  private Boolean idle;

  public static final String JSON_PROPERTY_JNLP_AGENT = "jnlpAgent";
  @JsonProperty(JSON_PROPERTY_JNLP_AGENT)
  private Boolean jnlpAgent;

  public static final String JSON_PROPERTY_LAUNCH_SUPPORTED = "launchSupported";
  @JsonProperty(JSON_PROPERTY_LAUNCH_SUPPORTED)
  private Boolean launchSupported;

  public static final String JSON_PROPERTY_LOAD_STATISTICS = "loadStatistics";
  @JsonProperty(JSON_PROPERTY_LOAD_STATISTICS)
  private Label1 loadStatistics;

  public static final String JSON_PROPERTY_MANUAL_LAUNCH_ALLOWED = "manualLaunchAllowed";
  @JsonProperty(JSON_PROPERTY_MANUAL_LAUNCH_ALLOWED)
  private Boolean manualLaunchAllowed;

  public static final String JSON_PROPERTY_MONITOR_DATA = "monitorData";
  @JsonProperty(JSON_PROPERTY_MONITOR_DATA)
  private HudsonMasterComputermonitorData monitorData;

  public static final String JSON_PROPERTY_NUM_EXECUTORS = "numExecutors";
  @JsonProperty(JSON_PROPERTY_NUM_EXECUTORS)
  private Integer numExecutors;

  public static final String JSON_PROPERTY_OFFLINE = "offline";
  @JsonProperty(JSON_PROPERTY_OFFLINE)
  private Boolean offline;

  public static final String JSON_PROPERTY_OFFLINE_CAUSE = "offlineCause";
  @JsonProperty(JSON_PROPERTY_OFFLINE_CAUSE)
  private String offlineCause;

  public static final String JSON_PROPERTY_OFFLINE_CAUSE_REASON = "offlineCauseReason";
  @JsonProperty(JSON_PROPERTY_OFFLINE_CAUSE_REASON)
  private String offlineCauseReason;

  public static final String JSON_PROPERTY_TEMPORARILY_OFFLINE = "temporarilyOffline";
  @JsonProperty(JSON_PROPERTY_TEMPORARILY_OFFLINE)
  private Boolean temporarilyOffline;

  public HudsonMasterComputer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonMasterComputer displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   **/
  @JsonProperty(value = "displayName")
  @ApiModelProperty(value = "")
  
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonMasterComputer executors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  public HudsonMasterComputer addExecutorsItem(HudsonMasterComputerexecutors executorsItem) {
    if (this.executors == null) {
      this.executors = new ArrayList<HudsonMasterComputerexecutors>();
    }
    this.executors.add(executorsItem);
    return this;
  }

  /**
   * Get executors
   * @return executors
   **/
  @JsonProperty(value = "executors")
  @ApiModelProperty(value = "")
  @Valid 
  public List<HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  public void setExecutors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  public HudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

  /**
   * Get icon
   * @return icon
   **/
  @JsonProperty(value = "icon")
  @ApiModelProperty(value = "")
  
  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  public HudsonMasterComputer iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  /**
   * Get iconClassName
   * @return iconClassName
   **/
  @JsonProperty(value = "iconClassName")
  @ApiModelProperty(value = "")
  
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public HudsonMasterComputer idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

  /**
   * Get idle
   * @return idle
   **/
  @JsonProperty(value = "idle")
  @ApiModelProperty(value = "")
  
  public Boolean getIdle() {
    return idle;
  }

  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  public HudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

  /**
   * Get jnlpAgent
   * @return jnlpAgent
   **/
  @JsonProperty(value = "jnlpAgent")
  @ApiModelProperty(value = "")
  
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  public HudsonMasterComputer launchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

  /**
   * Get launchSupported
   * @return launchSupported
   **/
  @JsonProperty(value = "launchSupported")
  @ApiModelProperty(value = "")
  
  public Boolean getLaunchSupported() {
    return launchSupported;
  }

  public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  public HudsonMasterComputer loadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

  /**
   * Get loadStatistics
   * @return loadStatistics
   **/
  @JsonProperty(value = "loadStatistics")
  @ApiModelProperty(value = "")
  @Valid 
  public Label1 getLoadStatistics() {
    return loadStatistics;
  }

  public void setLoadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  public HudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

  /**
   * Get manualLaunchAllowed
   * @return manualLaunchAllowed
   **/
  @JsonProperty(value = "manualLaunchAllowed")
  @ApiModelProperty(value = "")
  
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  public HudsonMasterComputer monitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

  /**
   * Get monitorData
   * @return monitorData
   **/
  @JsonProperty(value = "monitorData")
  @ApiModelProperty(value = "")
  @Valid 
  public HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }

  public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

  public HudsonMasterComputer numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  /**
   * Get numExecutors
   * @return numExecutors
   **/
  @JsonProperty(value = "numExecutors")
  @ApiModelProperty(value = "")
  
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public HudsonMasterComputer offline(Boolean offline) {
    this.offline = offline;
    return this;
  }

  /**
   * Get offline
   * @return offline
   **/
  @JsonProperty(value = "offline")
  @ApiModelProperty(value = "")
  
  public Boolean getOffline() {
    return offline;
  }

  public void setOffline(Boolean offline) {
    this.offline = offline;
  }

  public HudsonMasterComputer offlineCause(String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

  /**
   * Get offlineCause
   * @return offlineCause
   **/
  @JsonProperty(value = "offlineCause")
  @ApiModelProperty(value = "")
  
  public String getOfflineCause() {
    return offlineCause;
  }

  public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

  public HudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

  /**
   * Get offlineCauseReason
   * @return offlineCauseReason
   **/
  @JsonProperty(value = "offlineCauseReason")
  @ApiModelProperty(value = "")
  
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  public HudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
  }

  /**
   * Get temporarilyOffline
   * @return temporarilyOffline
   **/
  @JsonProperty(value = "temporarilyOffline")
  @ApiModelProperty(value = "")
  
  public Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }

  public void setTemporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonMasterComputer hudsonMasterComputer = (HudsonMasterComputer) o;
    return Objects.equals(this.propertyClass, hudsonMasterComputer.propertyClass) &&
        Objects.equals(this.displayName, hudsonMasterComputer.displayName) &&
        Objects.equals(this.executors, hudsonMasterComputer.executors) &&
        Objects.equals(this.icon, hudsonMasterComputer.icon) &&
        Objects.equals(this.iconClassName, hudsonMasterComputer.iconClassName) &&
        Objects.equals(this.idle, hudsonMasterComputer.idle) &&
        Objects.equals(this.jnlpAgent, hudsonMasterComputer.jnlpAgent) &&
        Objects.equals(this.launchSupported, hudsonMasterComputer.launchSupported) &&
        Objects.equals(this.loadStatistics, hudsonMasterComputer.loadStatistics) &&
        Objects.equals(this.manualLaunchAllowed, hudsonMasterComputer.manualLaunchAllowed) &&
        Objects.equals(this.monitorData, hudsonMasterComputer.monitorData) &&
        Objects.equals(this.numExecutors, hudsonMasterComputer.numExecutors) &&
        Objects.equals(this.offline, hudsonMasterComputer.offline) &&
        Objects.equals(this.offlineCause, hudsonMasterComputer.offlineCause) &&
        Objects.equals(this.offlineCauseReason, hudsonMasterComputer.offlineCauseReason) &&
        Objects.equals(this.temporarilyOffline, hudsonMasterComputer.temporarilyOffline);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, executors, icon, iconClassName, idle, jnlpAgent, launchSupported, loadStatistics, manualLaunchAllowed, monitorData, numExecutors, offline, offlineCause, offlineCauseReason, temporarilyOffline);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputer {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    executors: ").append(toIndentedString(executors)).append("\n");
    sb.append("    icon: ").append(toIndentedString(icon)).append("\n");
    sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
    sb.append("    idle: ").append(toIndentedString(idle)).append("\n");
    sb.append("    jnlpAgent: ").append(toIndentedString(jnlpAgent)).append("\n");
    sb.append("    launchSupported: ").append(toIndentedString(launchSupported)).append("\n");
    sb.append("    loadStatistics: ").append(toIndentedString(loadStatistics)).append("\n");
    sb.append("    manualLaunchAllowed: ").append(toIndentedString(manualLaunchAllowed)).append("\n");
    sb.append("    monitorData: ").append(toIndentedString(monitorData)).append("\n");
    sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
    sb.append("    offline: ").append(toIndentedString(offline)).append("\n");
    sb.append("    offlineCause: ").append(toIndentedString(offlineCause)).append("\n");
    sb.append("    offlineCauseReason: ").append(toIndentedString(offlineCauseReason)).append("\n");
    sb.append("    temporarilyOffline: ").append(toIndentedString(temporarilyOffline)).append("\n");
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

