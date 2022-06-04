/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class DiskSpaceMonitorDescriptorDiskSpace {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("timestamp")
  private Integer timestamp = null;
  @SerializedName("path")
  private String path = null;
  @SerializedName("size")
  private Integer size = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPath() {
    return path;
  }
  public void setPath(String path) {
    this.path = path;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getSize() {
    return size;
  }
  public void setSize(Integer size) {
    this.size = size;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DiskSpaceMonitorDescriptorDiskSpace diskSpaceMonitorDescriptorDiskSpace = (DiskSpaceMonitorDescriptorDiskSpace) o;
    return (this._class == null ? diskSpaceMonitorDescriptorDiskSpace._class == null : this._class.equals(diskSpaceMonitorDescriptorDiskSpace._class)) &&
        (this.timestamp == null ? diskSpaceMonitorDescriptorDiskSpace.timestamp == null : this.timestamp.equals(diskSpaceMonitorDescriptorDiskSpace.timestamp)) &&
        (this.path == null ? diskSpaceMonitorDescriptorDiskSpace.path == null : this.path.equals(diskSpaceMonitorDescriptorDiskSpace.path)) &&
        (this.size == null ? diskSpaceMonitorDescriptorDiskSpace.size == null : this.size.equals(diskSpaceMonitorDescriptorDiskSpace.size));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.path == null ? 0: this.path.hashCode());
    result = 31 * result + (this.size == null ? 0: this.size.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DiskSpaceMonitorDescriptorDiskSpace {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  path: ").append(path).append("\n");
    sb.append("  size: ").append(size).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
