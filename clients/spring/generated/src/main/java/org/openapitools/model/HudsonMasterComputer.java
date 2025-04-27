package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * HudsonMasterComputer
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2025-04-27T08:11:13.649076561Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class HudsonMasterComputer {

  private @Nullable String propertyClass;

  private @Nullable String displayName;

  @Valid
  private List<@Valid HudsonMasterComputerexecutors> executors = new ArrayList<>();

  private @Nullable String icon;

  private @Nullable String iconClassName;

  private @Nullable Boolean idle;

  private @Nullable Boolean jnlpAgent;

  private @Nullable Boolean launchSupported;

  private @Nullable Label1 loadStatistics;

  private @Nullable Boolean manualLaunchAllowed;

  private @Nullable HudsonMasterComputermonitorData monitorData;

  private @Nullable Integer numExecutors;

  private @Nullable Boolean offline;

  private @Nullable String offlineCause;

  private @Nullable String offlineCauseReason;

  private @Nullable Boolean temporarilyOffline;

  public HudsonMasterComputer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
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
   */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonMasterComputer executors(List<@Valid HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  public HudsonMasterComputer addExecutorsItem(HudsonMasterComputerexecutors executorsItem) {
    if (this.executors == null) {
      this.executors = new ArrayList<>();
    }
    this.executors.add(executorsItem);
    return this;
  }

  /**
   * Get executors
   * @return executors
   */
  @Valid 
  @Schema(name = "executors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("executors")
  public List<@Valid HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  public void setExecutors(List<@Valid HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  public HudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

  /**
   * Get icon
   * @return icon
   */
  
  @Schema(name = "icon", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("icon")
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
   */
  
  @Schema(name = "iconClassName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("iconClassName")
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
   */
  
  @Schema(name = "idle", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("idle")
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
   */
  
  @Schema(name = "jnlpAgent", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("jnlpAgent")
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
   */
  
  @Schema(name = "launchSupported", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("launchSupported")
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
   */
  @Valid 
  @Schema(name = "loadStatistics", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("loadStatistics")
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
   */
  
  @Schema(name = "manualLaunchAllowed", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("manualLaunchAllowed")
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
   */
  @Valid 
  @Schema(name = "monitorData", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("monitorData")
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
   */
  
  @Schema(name = "numExecutors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("numExecutors")
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
   */
  
  @Schema(name = "offline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offline")
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
   */
  
  @Schema(name = "offlineCause", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offlineCause")
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
   */
  
  @Schema(name = "offlineCauseReason", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offlineCauseReason")
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
   */
  
  @Schema(name = "temporarilyOffline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

