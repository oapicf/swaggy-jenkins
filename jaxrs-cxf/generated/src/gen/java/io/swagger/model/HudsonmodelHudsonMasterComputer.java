package io.swagger.model;

import io.swagger.model.HudsonmodelHudsonMasterComputerMonitorData;
import io.swagger.model.HudsonmodelHudsonMasterComputerexecutors;
import io.swagger.model.HudsonmodelLabel1;
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

public class HudsonmodelHudsonMasterComputer  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private String displayName = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelHudsonMasterComputerexecutors> executors = new ArrayList<HudsonmodelHudsonMasterComputerexecutors>();
  @ApiModelProperty(value = "")
  private String icon = null;
  @ApiModelProperty(value = "")
  private String iconClassName = null;
  @ApiModelProperty(value = "")
  private Boolean idle = null;
  @ApiModelProperty(value = "")
  private Boolean jnlpAgent = null;
  @ApiModelProperty(value = "")
  private Boolean launchSupported = null;
  @ApiModelProperty(value = "")
  private HudsonmodelLabel1 loadStatistics = null;
  @ApiModelProperty(value = "")
  private Boolean manualLaunchAllowed = null;
  @ApiModelProperty(value = "")
  private HudsonmodelHudsonMasterComputerMonitorData monitorData = null;
  @ApiModelProperty(value = "")
  private Integer numExecutors = null;
  @ApiModelProperty(value = "")
  private Boolean offline = null;
  @ApiModelProperty(value = "")
  private String offlineCause = null;
  @ApiModelProperty(value = "")
  private String offlineCauseReason = null;
  @ApiModelProperty(value = "")
  private Boolean temporarilyOffline = null;

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

  public HudsonmodelHudsonMasterComputer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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

  public HudsonmodelHudsonMasterComputer displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get executors
   * @return executors
  **/
  public List<HudsonmodelHudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  public void setExecutors(List<HudsonmodelHudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  public HudsonmodelHudsonMasterComputer executors(List<HudsonmodelHudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  public HudsonmodelHudsonMasterComputer addExecutorsItem(HudsonmodelHudsonMasterComputerexecutors executorsItem) {
    this.executors.add(executorsItem);
    return this;
  }

 /**
   * Get icon
   * @return icon
  **/
  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  public HudsonmodelHudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

 /**
   * Get iconClassName
   * @return iconClassName
  **/
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public HudsonmodelHudsonMasterComputer iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

 /**
   * Get idle
   * @return idle
  **/
  public Boolean getIdle() {
    return idle;
  }

  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  public HudsonmodelHudsonMasterComputer idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

 /**
   * Get jnlpAgent
   * @return jnlpAgent
  **/
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  public HudsonmodelHudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

 /**
   * Get launchSupported
   * @return launchSupported
  **/
  public Boolean getLaunchSupported() {
    return launchSupported;
  }

  public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  public HudsonmodelHudsonMasterComputer launchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

 /**
   * Get loadStatistics
   * @return loadStatistics
  **/
  public HudsonmodelLabel1 getLoadStatistics() {
    return loadStatistics;
  }

  public void setLoadStatistics(HudsonmodelLabel1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  public HudsonmodelHudsonMasterComputer loadStatistics(HudsonmodelLabel1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

 /**
   * Get manualLaunchAllowed
   * @return manualLaunchAllowed
  **/
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  public HudsonmodelHudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

 /**
   * Get monitorData
   * @return monitorData
  **/
  public HudsonmodelHudsonMasterComputerMonitorData getMonitorData() {
    return monitorData;
  }

  public void setMonitorData(HudsonmodelHudsonMasterComputerMonitorData monitorData) {
    this.monitorData = monitorData;
  }

  public HudsonmodelHudsonMasterComputer monitorData(HudsonmodelHudsonMasterComputerMonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

 /**
   * Get numExecutors
   * @return numExecutors
  **/
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public HudsonmodelHudsonMasterComputer numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

 /**
   * Get offline
   * @return offline
  **/
  public Boolean getOffline() {
    return offline;
  }

  public void setOffline(Boolean offline) {
    this.offline = offline;
  }

  public HudsonmodelHudsonMasterComputer offline(Boolean offline) {
    this.offline = offline;
    return this;
  }

 /**
   * Get offlineCause
   * @return offlineCause
  **/
  public String getOfflineCause() {
    return offlineCause;
  }

  public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

  public HudsonmodelHudsonMasterComputer offlineCause(String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

 /**
   * Get offlineCauseReason
   * @return offlineCauseReason
  **/
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  public HudsonmodelHudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

 /**
   * Get temporarilyOffline
   * @return temporarilyOffline
  **/
  public Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }

  public void setTemporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
  }

  public HudsonmodelHudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelHudsonMasterComputer {\n");
    
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

