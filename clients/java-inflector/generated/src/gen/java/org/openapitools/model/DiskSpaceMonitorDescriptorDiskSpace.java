package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2024-03-15T14:11:48.924355048Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class DiskSpaceMonitorDescriptorDiskSpace   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("timestamp")
  private Integer timestamp;

  @JsonProperty("path")
  private String path;

  @JsonProperty("size")
  private Integer size;

  /**
   **/
  public DiskSpaceMonitorDescriptorDiskSpace propertyClass(String propertyClass) {
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
  public DiskSpaceMonitorDescriptorDiskSpace timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   **/
  public DiskSpaceMonitorDescriptorDiskSpace path(String path) {
    this.path = path;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("path")
  public String getPath() {
    return path;
  }
  public void setPath(String path) {
    this.path = path;
  }

  /**
   **/
  public DiskSpaceMonitorDescriptorDiskSpace size(Integer size) {
    this.size = size;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("size")
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
    return Objects.equals(propertyClass, diskSpaceMonitorDescriptorDiskSpace.propertyClass) &&
        Objects.equals(timestamp, diskSpaceMonitorDescriptorDiskSpace.timestamp) &&
        Objects.equals(path, diskSpaceMonitorDescriptorDiskSpace.path) &&
        Objects.equals(size, diskSpaceMonitorDescriptorDiskSpace.size);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, timestamp, path, size);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DiskSpaceMonitorDescriptorDiskSpace {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
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

