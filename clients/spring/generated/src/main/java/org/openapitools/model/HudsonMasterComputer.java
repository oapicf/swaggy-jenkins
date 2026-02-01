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

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

  public HudsonMasterComputer propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonMasterComputer displayName(@Nullable String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public @Nullable String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(@Nullable String displayName) {
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

  public HudsonMasterComputer icon(@Nullable String icon) {
    this.icon = icon;
    return this;
  }

  /**
   * Get icon
   * @return icon
   */
  
  @Schema(name = "icon", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("icon")
  public @Nullable String getIcon() {
    return icon;
  }

  public void setIcon(@Nullable String icon) {
    this.icon = icon;
  }

  public HudsonMasterComputer iconClassName(@Nullable String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  /**
   * Get iconClassName
   * @return iconClassName
   */
  
  @Schema(name = "iconClassName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("iconClassName")
  public @Nullable String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(@Nullable String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public HudsonMasterComputer idle(@Nullable Boolean idle) {
    this.idle = idle;
    return this;
  }

  /**
   * Get idle
   * @return idle
   */
  
  @Schema(name = "idle", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("idle")
  public @Nullable Boolean getIdle() {
    return idle;
  }

  public void setIdle(@Nullable Boolean idle) {
    this.idle = idle;
  }

  public HudsonMasterComputer jnlpAgent(@Nullable Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

  /**
   * Get jnlpAgent
   * @return jnlpAgent
   */
  
  @Schema(name = "jnlpAgent", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("jnlpAgent")
  public @Nullable Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  public void setJnlpAgent(@Nullable Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

  public HudsonMasterComputer launchSupported(@Nullable Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

  /**
   * Get launchSupported
   * @return launchSupported
   */
  
  @Schema(name = "launchSupported", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("launchSupported")
  public @Nullable Boolean getLaunchSupported() {
    return launchSupported;
  }

  public void setLaunchSupported(@Nullable Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

  public HudsonMasterComputer loadStatistics(@Nullable Label1 loadStatistics) {
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
  public @Nullable Label1 getLoadStatistics() {
    return loadStatistics;
  }

  public void setLoadStatistics(@Nullable Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

  public HudsonMasterComputer manualLaunchAllowed(@Nullable Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

  /**
   * Get manualLaunchAllowed
   * @return manualLaunchAllowed
   */
  
  @Schema(name = "manualLaunchAllowed", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("manualLaunchAllowed")
  public @Nullable Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  public void setManualLaunchAllowed(@Nullable Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

  public HudsonMasterComputer monitorData(@Nullable HudsonMasterComputermonitorData monitorData) {
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
  public @Nullable HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }

  public void setMonitorData(@Nullable HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

  public HudsonMasterComputer numExecutors(@Nullable Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  /**
   * Get numExecutors
   * @return numExecutors
   */
  
  @Schema(name = "numExecutors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("numExecutors")
  public @Nullable Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(@Nullable Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public HudsonMasterComputer offline(@Nullable Boolean offline) {
    this.offline = offline;
    return this;
  }

  /**
   * Get offline
   * @return offline
   */
  
  @Schema(name = "offline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offline")
  public @Nullable Boolean getOffline() {
    return offline;
  }

  public void setOffline(@Nullable Boolean offline) {
    this.offline = offline;
  }

  public HudsonMasterComputer offlineCause(@Nullable String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

  /**
   * Get offlineCause
   * @return offlineCause
   */
  
  @Schema(name = "offlineCause", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offlineCause")
  public @Nullable String getOfflineCause() {
    return offlineCause;
  }

  public void setOfflineCause(@Nullable String offlineCause) {
    this.offlineCause = offlineCause;
  }

  public HudsonMasterComputer offlineCauseReason(@Nullable String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

  /**
   * Get offlineCauseReason
   * @return offlineCauseReason
   */
  
  @Schema(name = "offlineCauseReason", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("offlineCauseReason")
  public @Nullable String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  public void setOfflineCauseReason(@Nullable String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

  public HudsonMasterComputer temporarilyOffline(@Nullable Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
  }

  /**
   * Get temporarilyOffline
   * @return temporarilyOffline
   */
  
  @Schema(name = "temporarilyOffline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("temporarilyOffline")
  public @Nullable Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }

  public void setTemporarilyOffline(@Nullable Boolean temporarilyOffline) {
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

