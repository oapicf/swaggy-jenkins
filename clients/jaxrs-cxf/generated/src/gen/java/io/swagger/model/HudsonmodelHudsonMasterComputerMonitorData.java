package io.swagger.model;

import io.swagger.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.model.HudsonnodeMonitorsResponseTimeMonitorData;
import io.swagger.model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2;
import io.swagger.model.HudsonutilClockDifference;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class HudsonmodelHudsonMasterComputerMonitorData  {
  
  @ApiModelProperty(value = "")
  private HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  @ApiModelProperty(value = "")
  private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  @ApiModelProperty(value = "")
  private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  @ApiModelProperty(value = "")
  private String hudsonNodeMonitorsArchitectureMonitor = null;
  @ApiModelProperty(value = "")
  private HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  @ApiModelProperty(value = "")
  private HudsonutilClockDifference hudsonNodeMonitorsClockMonitor = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

 /**
   * Get hudsonNodeMonitorsSwapSpaceMonitor
   * @return hudsonNodeMonitorsSwapSpaceMonitor
  **/
  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }

  public void setHudsonNodeMonitorsSwapSpaceMonitor(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsSwapSpaceMonitor(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

 /**
   * Get hudsonNodeMonitorsTemporarySpaceMonitor
   * @return hudsonNodeMonitorsTemporarySpaceMonitor
  **/
  public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  public void setHudsonNodeMonitorsTemporarySpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsTemporarySpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    return this;
  }

 /**
   * Get hudsonNodeMonitorsDiskSpaceMonitor
   * @return hudsonNodeMonitorsDiskSpaceMonitor
  **/
  public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }

  public void setHudsonNodeMonitorsDiskSpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsDiskSpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    return this;
  }

 /**
   * Get hudsonNodeMonitorsArchitectureMonitor
   * @return hudsonNodeMonitorsArchitectureMonitor
  **/
  public String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }

  public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    return this;
  }

 /**
   * Get hudsonNodeMonitorsResponseTimeMonitor
   * @return hudsonNodeMonitorsResponseTimeMonitor
  **/
  public HudsonnodeMonitorsResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }

  public void setHudsonNodeMonitorsResponseTimeMonitor(HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsResponseTimeMonitor(HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    return this;
  }

 /**
   * Get hudsonNodeMonitorsClockMonitor
   * @return hudsonNodeMonitorsClockMonitor
  **/
  public HudsonutilClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }

  public void setHudsonNodeMonitorsClockMonitor(HudsonutilClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsClockMonitor(HudsonutilClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    return this;
  }

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

  public HudsonmodelHudsonMasterComputerMonitorData propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelHudsonMasterComputerMonitorData {\n");
    
    sb.append("    hudsonNodeMonitorsSwapSpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsSwapSpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsTemporarySpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsTemporarySpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsDiskSpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsDiskSpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsArchitectureMonitor: ").append(toIndentedString(hudsonNodeMonitorsArchitectureMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsResponseTimeMonitor: ").append(toIndentedString(hudsonNodeMonitorsResponseTimeMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsClockMonitor: ").append(toIndentedString(hudsonNodeMonitorsClockMonitor)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

