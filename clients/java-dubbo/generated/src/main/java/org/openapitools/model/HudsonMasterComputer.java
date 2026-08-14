package org.openapitools.model;

import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class HudsonMasterComputer implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("executors")
  private List<HudsonMasterComputerexecutors> executors = new ArrayList<>();

  @JsonProperty("icon")
  private String icon;

  @JsonProperty("iconClassName")
  private String iconClassName;

  @JsonProperty("idle")
  private Boolean idle;

  @JsonProperty("jnlpAgent")
  private Boolean jnlpAgent;

  @JsonProperty("launchSupported")
  private Boolean launchSupported;

  @JsonProperty("loadStatistics")
  private Label1 loadStatistics;

  @JsonProperty("manualLaunchAllowed")
  private Boolean manualLaunchAllowed;

  @JsonProperty("monitorData")
  private HudsonMasterComputermonitorData monitorData;

  @JsonProperty("numExecutors")
  private Integer numExecutors;

  @JsonProperty("offline")
  private Boolean offline;

  @JsonProperty("offlineCause")
  private String offlineCause;

  @JsonProperty("offlineCauseReason")
  private String offlineCauseReason;

  @JsonProperty("temporarilyOffline")
  private Boolean temporarilyOffline;

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return displayName
   */
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * 
   * @return executors
   */
  public List<HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  public void setExecutors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  /**
   * 
   * @return icon
   */
  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  /**
   * 
   * @return iconClassName
   */
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   * 
   * @return idle
   */
  public Boolean getIdle() {
    return idle;
  }

  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  /**
   * 
   * @return jnlpAgent
   */
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  /**
   * 
   * @return launchSupported
   */
  public Boolean getLaunchSupported() {
    return launchSupported;
  }

  public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  /**
   * 
   * @return loadStatistics
   */
  public Label1 getLoadStatistics() {
    return loadStatistics;
  }

  public void setLoadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  /**
   * 
   * @return manualLaunchAllowed
   */
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  /**
   * 
   * @return monitorData
   */
  public HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }

  public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

  /**
   * 
   * @return numExecutors
   */
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   * 
   * @return offline
   */
  public Boolean getOffline() {
    return offline;
  }

  public void setOffline(Boolean offline) {
    this.offline = offline;
  }

  /**
   * 
   * @return offlineCause
   */
  public String getOfflineCause() {
    return offlineCause;
  }

  public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

  /**
   * 
   * @return offlineCauseReason
   */
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  /**
   * 
   * @return temporarilyOffline
   */
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
