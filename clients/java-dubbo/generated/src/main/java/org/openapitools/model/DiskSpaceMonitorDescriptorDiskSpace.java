package org.openapitools.model;

import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class DiskSpaceMonitorDescriptorDiskSpace implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("timestamp")
  private Integer timestamp;

  @JsonProperty("path")
  private String path;

  @JsonProperty("size")
  private Integer size;

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
   * @return timestamp
   */
  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * 
   * @return path
   */
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  /**
   * 
   * @return size
   */
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
    return Objects.equals(this.propertyClass, diskSpaceMonitorDescriptorDiskSpace.propertyClass) &&
        Objects.equals(this.timestamp, diskSpaceMonitorDescriptorDiskSpace.timestamp) &&
        Objects.equals(this.path, diskSpaceMonitorDescriptorDiskSpace.path) &&
        Objects.equals(this.size, diskSpaceMonitorDescriptorDiskSpace.size);
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
