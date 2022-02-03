package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HudsonMasterComputerexecutors;
import org.openapitools.model.HudsonMasterComputermonitorData;
import org.openapitools.model.Label1;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("HudsonMasterComputer")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class HudsonMasterComputer   {
  
  private @Valid String propertyClass;
  private @Valid String displayName;
  private @Valid List<HudsonMasterComputerexecutors> executors = new ArrayList<HudsonMasterComputerexecutors>();
  private @Valid String icon;
  private @Valid String iconClassName;
  private @Valid Boolean idle;
  private @Valid Boolean jnlpAgent;
  private @Valid Boolean launchSupported;
  private @Valid Label1 loadStatistics;
  private @Valid Boolean manualLaunchAllowed;
  private @Valid HudsonMasterComputermonitorData monitorData;
  private @Valid Integer numExecutors;
  private @Valid Boolean offline;
  private @Valid String offlineCause;
  private @Valid String offlineCauseReason;
  private @Valid Boolean temporarilyOffline;

  /**
   **/
  public HudsonMasterComputer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

/**
   **/
  public HudsonMasterComputer displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

/**
   **/
  public HudsonMasterComputer executors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("executors")
  public List<HudsonMasterComputerexecutors> getExecutors() {
    return executors;
  }

  @JsonProperty("executors")
  public void setExecutors(List<HudsonMasterComputerexecutors> executors) {
    this.executors = executors;
  }

  public HudsonMasterComputer addExecutorsItem(HudsonMasterComputerexecutors executorsItem) {
    if (this.executors == null) {
      this.executors = new ArrayList<HudsonMasterComputerexecutors>();
    }

    this.executors.add(executorsItem);
    return this;
  }

  public HudsonMasterComputer removeExecutorsItem(HudsonMasterComputerexecutors executorsItem) {
    if (executorsItem != null && this.executors != null) {
      this.executors.remove(executorsItem);
    }

    return this;
  }
/**
   **/
  public HudsonMasterComputer icon(String icon) {
    this.icon = icon;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("icon")
  public String getIcon() {
    return icon;
  }

  @JsonProperty("icon")
  public void setIcon(String icon) {
    this.icon = icon;
  }

/**
   **/
  public HudsonMasterComputer iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }

  @JsonProperty("iconClassName")
  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

/**
   **/
  public HudsonMasterComputer idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("idle")
  public Boolean getIdle() {
    return idle;
  }

  @JsonProperty("idle")
  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

/**
   **/
  public HudsonMasterComputer jnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("jnlpAgent")
  public Boolean getJnlpAgent() {
    return jnlpAgent;
  }

  @JsonProperty("jnlpAgent")
  public void setJnlpAgent(Boolean jnlpAgent) {
    this.jnlpAgent = jnlpAgent;
  }

/**
   **/
  public HudsonMasterComputer launchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("launchSupported")
  public Boolean getLaunchSupported() {
    return launchSupported;
  }

  @JsonProperty("launchSupported")
  public void setLaunchSupported(Boolean launchSupported) {
    this.launchSupported = launchSupported;
  }

/**
   **/
  public HudsonMasterComputer loadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("loadStatistics")
  public Label1 getLoadStatistics() {
    return loadStatistics;
  }

  @JsonProperty("loadStatistics")
  public void setLoadStatistics(Label1 loadStatistics) {
    this.loadStatistics = loadStatistics;
  }

/**
   **/
  public HudsonMasterComputer manualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("manualLaunchAllowed")
  public Boolean getManualLaunchAllowed() {
    return manualLaunchAllowed;
  }

  @JsonProperty("manualLaunchAllowed")
  public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
    this.manualLaunchAllowed = manualLaunchAllowed;
  }

/**
   **/
  public HudsonMasterComputer monitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("monitorData")
  public HudsonMasterComputermonitorData getMonitorData() {
    return monitorData;
  }

  @JsonProperty("monitorData")
  public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
    this.monitorData = monitorData;
  }

/**
   **/
  public HudsonMasterComputer numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }

  @JsonProperty("numExecutors")
  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

/**
   **/
  public HudsonMasterComputer offline(Boolean offline) {
    this.offline = offline;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("offline")
  public Boolean getOffline() {
    return offline;
  }

  @JsonProperty("offline")
  public void setOffline(Boolean offline) {
    this.offline = offline;
  }

/**
   **/
  public HudsonMasterComputer offlineCause(String offlineCause) {
    this.offlineCause = offlineCause;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("offlineCause")
  public String getOfflineCause() {
    return offlineCause;
  }

  @JsonProperty("offlineCause")
  public void setOfflineCause(String offlineCause) {
    this.offlineCause = offlineCause;
  }

/**
   **/
  public HudsonMasterComputer offlineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("offlineCauseReason")
  public String getOfflineCauseReason() {
    return offlineCauseReason;
  }

  @JsonProperty("offlineCauseReason")
  public void setOfflineCauseReason(String offlineCauseReason) {
    this.offlineCauseReason = offlineCauseReason;
  }

/**
   **/
  public HudsonMasterComputer temporarilyOffline(Boolean temporarilyOffline) {
    this.temporarilyOffline = temporarilyOffline;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("temporarilyOffline")
  public Boolean getTemporarilyOffline() {
    return temporarilyOffline;
  }

  @JsonProperty("temporarilyOffline")
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

