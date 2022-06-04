/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 1.5.1-pre.0
 * Maintained by: blah@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
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





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2022-06-04T08:08:37.196387Z[Etc/UTC]")
public class HudsonMasterComputer   {
  
  private String propertyClass;
  private String displayName;
  private List<HudsonMasterComputerexecutors> executors = new ArrayList<>();
  private String icon;
  private String iconClassName;
  private Boolean idle;
  private Boolean jnlpAgent;
  private Boolean launchSupported;
  private Label1 loadStatistics;
  private Boolean manualLaunchAllowed;
  private HudsonMasterComputermonitorData monitorData;
  private Integer numExecutors;
  private Boolean offline;
  private String offlineCause;
  private String offlineCauseReason;
  private Boolean temporarilyOffline;

  /**
   */
  public HudsonMasterComputer propertyClass(String propertyClass) {
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
   */
  public HudsonMasterComputer displayName(String displayName) {
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
   */
  public HudsonMasterComputer executors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("executors")
  public List<HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }
  public void setExecutors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  /**
   */
  public HudsonMasterComputer icon(String icon) {
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
   */
  public HudsonMasterComputer iconClassName(String iconClassName) {
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
   */
  public HudsonMasterComputer idle(Boolean idle) {
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
   */
  public HudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
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
   */
  public HudsonMasterComputer launchSupported(Boolean launchSupported) {
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
   */
  public HudsonMasterComputer loadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("loadStatistics")
  public Label1 getLoadStatistics() {
    return loadStatistics;
  }
  public void setLoadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  /**
   */
  public HudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
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
   */
  public HudsonMasterComputer monitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("monitorData")
  public HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }
  public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

  /**
   */
  public HudsonMasterComputer numExecutors(Integer numExecutors) {
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
   */
  public HudsonMasterComputer offline(Boolean offline) {
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
   */
  public HudsonMasterComputer offlineCause(String offlineCause) {
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
   */
  public HudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
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
   */
  public HudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonMasterComputer hudsonMasterComputer = (HudsonMasterComputer) o;
    return Objects.equals(propertyClass, hudsonMasterComputer.propertyClass) &&
        Objects.equals(displayName, hudsonMasterComputer.displayName) &&
        Objects.equals(executors, hudsonMasterComputer.executors) &&
        Objects.equals(icon, hudsonMasterComputer.icon) &&
        Objects.equals(iconClassName, hudsonMasterComputer.iconClassName) &&
        Objects.equals(idle, hudsonMasterComputer.idle) &&
        Objects.equals(jnlpAgent, hudsonMasterComputer.jnlpAgent) &&
        Objects.equals(launchSupported, hudsonMasterComputer.launchSupported) &&
        Objects.equals(loadStatistics, hudsonMasterComputer.loadStatistics) &&
        Objects.equals(manualLaunchAllowed, hudsonMasterComputer.manualLaunchAllowed) &&
        Objects.equals(monitorData, hudsonMasterComputer.monitorData) &&
        Objects.equals(numExecutors, hudsonMasterComputer.numExecutors) &&
        Objects.equals(offline, hudsonMasterComputer.offline) &&
        Objects.equals(offlineCause, hudsonMasterComputer.offlineCause) &&
        Objects.equals(offlineCauseReason, hudsonMasterComputer.offlineCauseReason) &&
        Objects.equals(temporarilyOffline, hudsonMasterComputer.temporarilyOffline);
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

