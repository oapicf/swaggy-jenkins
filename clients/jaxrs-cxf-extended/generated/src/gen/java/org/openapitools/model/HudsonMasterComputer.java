package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class HudsonMasterComputer  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  @Valid
  private List<HudsonMasterComputerexecutors> executors = null;

  @ApiModelProperty(value = "")
  private String icon;

  @ApiModelProperty(value = "")
  private String iconClassName;

  @ApiModelProperty(value = "")
  private Boolean idle;

  @ApiModelProperty(value = "")
  private Boolean jnlpAgent;

  @ApiModelProperty(value = "")
  private Boolean launchSupported;

  @ApiModelProperty(value = "")
  @Valid
  private Label1 loadStatistics;

  @ApiModelProperty(value = "")
  private Boolean manualLaunchAllowed;

  @ApiModelProperty(value = "")
  @Valid
  private HudsonMasterComputermonitorData monitorData;

  @ApiModelProperty(value = "")
  private Integer numExecutors;

  @ApiModelProperty(value = "")
  private Boolean offline;

  @ApiModelProperty(value = "")
  private String offlineCause;

  @ApiModelProperty(value = "")
  private String offlineCauseReason;

  @ApiModelProperty(value = "")
  private Boolean temporarilyOffline;
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
  public HudsonMasterComputer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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
  public HudsonMasterComputer displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
  * Get executors
  * @return executors
  */
  @JsonProperty("executors")
  public List<HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  /**
   * Sets the <code>executors</code> property.
   */
 public void setExecutors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  /**
   * Sets the <code>executors</code> property.
   */
  public HudsonMasterComputer executors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  /**
   * Adds a new item to the <code>executors</code> list.
   */
  public HudsonMasterComputer addExecutorsItem(HudsonMasterComputerexecutors executorsItem) {
    this.executors.add(executorsItem);
    return this;
  }

 /**
  * Get icon
  * @return icon
  */
  @JsonProperty("icon")
  public String getIcon() {
    return icon;
  }

  /**
   * Sets the <code>icon</code> property.
   */
 public void setIcon(String icon) {
    this.icon = icon;
  }

  /**
   * Sets the <code>icon</code> property.
   */
  public HudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

 /**
  * Get iconClassName
  * @return iconClassName
  */
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }

  /**
   * Sets the <code>iconClassName</code> property.
   */
 public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   * Sets the <code>iconClassName</code> property.
   */
  public HudsonMasterComputer iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

 /**
  * Get idle
  * @return idle
  */
  @JsonProperty("idle")
  public Boolean getIdle() {
    return idle;
  }

  /**
   * Sets the <code>idle</code> property.
   */
 public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  /**
   * Sets the <code>idle</code> property.
   */
  public HudsonMasterComputer idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

 /**
  * Get jnlpAgent
  * @return jnlpAgent
  */
  @JsonProperty("jnlpAgent")
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  /**
   * Sets the <code>jnlpAgent</code> property.
   */
 public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  /**
   * Sets the <code>jnlpAgent</code> property.
   */
  public HudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

 /**
  * Get launchSupported
  * @return launchSupported
  */
  @JsonProperty("launchSupported")
  public Boolean getLaunchSupported() {
    return launchSupported;
  }

  /**
   * Sets the <code>launchSupported</code> property.
   */
 public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  /**
   * Sets the <code>launchSupported</code> property.
   */
  public HudsonMasterComputer launchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

 /**
  * Get loadStatistics
  * @return loadStatistics
  */
  @JsonProperty("loadStatistics")
  public Label1 getLoadStatistics() {
    return loadStatistics;
  }

  /**
   * Sets the <code>loadStatistics</code> property.
   */
 public void setLoadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  /**
   * Sets the <code>loadStatistics</code> property.
   */
  public HudsonMasterComputer loadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

 /**
  * Get manualLaunchAllowed
  * @return manualLaunchAllowed
  */
  @JsonProperty("manualLaunchAllowed")
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  /**
   * Sets the <code>manualLaunchAllowed</code> property.
   */
 public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  /**
   * Sets the <code>manualLaunchAllowed</code> property.
   */
  public HudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

 /**
  * Get monitorData
  * @return monitorData
  */
  @JsonProperty("monitorData")
  public HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }

  /**
   * Sets the <code>monitorData</code> property.
   */
 public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

  /**
   * Sets the <code>monitorData</code> property.
   */
  public HudsonMasterComputer monitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

 /**
  * Get numExecutors
  * @return numExecutors
  */
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }

  /**
   * Sets the <code>numExecutors</code> property.
   */
 public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   * Sets the <code>numExecutors</code> property.
   */
  public HudsonMasterComputer numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

 /**
  * Get offline
  * @return offline
  */
  @JsonProperty("offline")
  public Boolean getOffline() {
    return offline;
  }

  /**
   * Sets the <code>offline</code> property.
   */
 public void setOffline(Boolean offline) {
    this.offline = offline;
  }

  /**
   * Sets the <code>offline</code> property.
   */
  public HudsonMasterComputer offline(Boolean offline) {
    this.offline = offline;
    return this;
  }

 /**
  * Get offlineCause
  * @return offlineCause
  */
  @JsonProperty("offlineCause")
  public String getOfflineCause() {
    return offlineCause;
  }

  /**
   * Sets the <code>offlineCause</code> property.
   */
 public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

  /**
   * Sets the <code>offlineCause</code> property.
   */
  public HudsonMasterComputer offlineCause(String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

 /**
  * Get offlineCauseReason
  * @return offlineCauseReason
  */
  @JsonProperty("offlineCauseReason")
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  /**
   * Sets the <code>offlineCauseReason</code> property.
   */
 public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  /**
   * Sets the <code>offlineCauseReason</code> property.
   */
  public HudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

 /**
  * Get temporarilyOffline
  * @return temporarilyOffline
  */
  @JsonProperty("temporarilyOffline")
  public Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }

  /**
   * Sets the <code>temporarilyOffline</code> property.
   */
 public void setTemporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
  }

  /**
   * Sets the <code>temporarilyOffline</code> property.
   */
  public HudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

