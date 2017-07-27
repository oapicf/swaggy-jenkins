package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelHudsonMasterComputerMonitorData;
import io.swagger.model.HudsonmodelHudsonMasterComputerexecutors;
import io.swagger.model.HudsonmodelLabel1;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class HudsonmodelHudsonMasterComputer   {
  
  private String propertyClass = null;
  private String displayName = null;
  private List<HudsonmodelHudsonMasterComputerexecutors> executors = new ArrayList<HudsonmodelHudsonMasterComputerexecutors>();
  private String icon = null;
  private String iconClassName = null;
  private Boolean idle = null;
  private Boolean jnlpAgent = null;
  private Boolean launchSupported = null;
  private HudsonmodelLabel1 loadStatistics = null;
  private Boolean manualLaunchAllowed = null;
  private HudsonmodelHudsonMasterComputerMonitorData monitorData = null;
  private Integer numExecutors = null;
  private Boolean offline = null;
  private String offlineCause = null;
  private String offlineCauseReason = null;
  private Boolean temporarilyOffline = null;

  /**
   **/
  public HudsonmodelHudsonMasterComputer propertyClass(String propertyClass) {
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
  public HudsonmodelHudsonMasterComputer displayName(String displayName) {
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
  public HudsonmodelHudsonMasterComputer executors(List<HudsonmodelHudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("executors")
  public List<HudsonmodelHudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }
  public void setExecutors(List<HudsonmodelHudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("icon")
  public String getIcon() {
    return icon;
  }
  public void setIcon(String icon) {
    this.icon = icon;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }
  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("idle")
  public Boolean getIdle() {
    return idle;
  }
  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("jnlpAgent")
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }
  public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer launchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("launchSupported")
  public Boolean getLaunchSupported() {
    return launchSupported;
  }
  public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer loadStatistics(HudsonmodelLabel1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("loadStatistics")
  public HudsonmodelLabel1 getLoadStatistics() {
    return loadStatistics;
  }
  public void setLoadStatistics(HudsonmodelLabel1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("manualLaunchAllowed")
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }
  public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer monitorData(HudsonmodelHudsonMasterComputerMonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("monitorData")
  public HudsonmodelHudsonMasterComputerMonitorData getMonitorData() {
    return monitorData;
  }
  public void setMonitorData(HudsonmodelHudsonMasterComputerMonitorData monitorData) {
    this.monitorData = monitorData;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }
  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer offline(Boolean offline) {
    this.offline = offline;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("offline")
  public Boolean getOffline() {
    return offline;
  }
  public void setOffline(Boolean offline) {
    this.offline = offline;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer offlineCause(String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("offlineCause")
  public String getOfflineCause() {
    return offlineCause;
  }
  public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("offlineCauseReason")
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }
  public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("temporarilyOffline")
  public Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }
  public void setTemporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer = (HudsonmodelHudsonMasterComputer) o;
    return Objects.equals(propertyClass, hudsonmodelHudsonMasterComputer.propertyClass) &&
        Objects.equals(displayName, hudsonmodelHudsonMasterComputer.displayName) &&
        Objects.equals(executors, hudsonmodelHudsonMasterComputer.executors) &&
        Objects.equals(icon, hudsonmodelHudsonMasterComputer.icon) &&
        Objects.equals(iconClassName, hudsonmodelHudsonMasterComputer.iconClassName) &&
        Objects.equals(idle, hudsonmodelHudsonMasterComputer.idle) &&
        Objects.equals(jnlpAgent, hudsonmodelHudsonMasterComputer.jnlpAgent) &&
        Objects.equals(launchSupported, hudsonmodelHudsonMasterComputer.launchSupported) &&
        Objects.equals(loadStatistics, hudsonmodelHudsonMasterComputer.loadStatistics) &&
        Objects.equals(manualLaunchAllowed, hudsonmodelHudsonMasterComputer.manualLaunchAllowed) &&
        Objects.equals(monitorData, hudsonmodelHudsonMasterComputer.monitorData) &&
        Objects.equals(numExecutors, hudsonmodelHudsonMasterComputer.numExecutors) &&
        Objects.equals(offline, hudsonmodelHudsonMasterComputer.offline) &&
        Objects.equals(offlineCause, hudsonmodelHudsonMasterComputer.offlineCause) &&
        Objects.equals(offlineCauseReason, hudsonmodelHudsonMasterComputer.offlineCauseReason) &&
        Objects.equals(temporarilyOffline, hudsonmodelHudsonMasterComputer.temporarilyOffline);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, executors, icon, iconClassName, idle, jnlpAgent, launchSupported, loadStatistics, manualLaunchAllowed, monitorData, numExecutors, offline, offlineCause, offlineCauseReason, temporarilyOffline);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

