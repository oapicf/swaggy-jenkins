package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BranchImplpermissions  {
  
  @ApiModelProperty(value = "")
  private Boolean create = null;

  @ApiModelProperty(value = "")
  private Boolean read = null;

  @ApiModelProperty(value = "")
  private Boolean start = null;

  @ApiModelProperty(value = "")
  private Boolean stop = null;

  @ApiModelProperty(value = "")
  private String propertyClass = null;
 /**
   * Get create
   * @return create
  **/
  @JsonProperty("create")
  public Boolean getCreate() {
    return create;
  }

  public void setCreate(Boolean create) {
    this.create = create;
  }

  public BranchImplpermissions create(Boolean create) {
    this.create = create;
    return this;
  }

 /**
   * Get read
   * @return read
  **/
  @JsonProperty("read")
  public Boolean getRead() {
    return read;
  }

  public void setRead(Boolean read) {
    this.read = read;
  }

  public BranchImplpermissions read(Boolean read) {
    this.read = read;
    return this;
  }

 /**
   * Get start
   * @return start
  **/
  @JsonProperty("start")
  public Boolean getStart() {
    return start;
  }

  public void setStart(Boolean start) {
    this.start = start;
  }

  public BranchImplpermissions start(Boolean start) {
    this.start = start;
    return this;
  }

 /**
   * Get stop
   * @return stop
  **/
  @JsonProperty("stop")
  public Boolean getStop() {
    return stop;
  }

  public void setStop(Boolean stop) {
    this.stop = stop;
  }

  public BranchImplpermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public BranchImplpermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImplpermissions {\n");
    
    sb.append("    create: ").append(toIndentedString(create)).append("\n");
    sb.append("    read: ").append(toIndentedString(read)).append("\n");
    sb.append("    start: ").append(toIndentedString(start)).append("\n");
    sb.append("    stop: ").append(toIndentedString(stop)).append("\n");
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

