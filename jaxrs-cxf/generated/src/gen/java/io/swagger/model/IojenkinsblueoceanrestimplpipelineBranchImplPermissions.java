package io.swagger.model;

import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class IojenkinsblueoceanrestimplpipelineBranchImplPermissions  {
  
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
  public Boolean getCreate() {
    return create;
  }

  public void setCreate(Boolean create) {
    this.create = create;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions create(Boolean create) {
    this.create = create;
    return this;
  }

 /**
   * Get read
   * @return read
  **/
  public Boolean getRead() {
    return read;
  }

  public void setRead(Boolean read) {
    this.read = read;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions read(Boolean read) {
    this.read = read;
    return this;
  }

 /**
   * Get start
   * @return start
  **/
  public Boolean getStart() {
    return start;
  }

  public void setStart(Boolean start) {
    this.start = start;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions start(Boolean start) {
    this.start = start;
    return this;
  }

 /**
   * Get stop
   * @return stop
  **/
  public Boolean getStop() {
    return stop;
  }

  public void setStop(Boolean stop) {
    this.stop = stop;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions stop(Boolean stop) {
    this.stop = stop;
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

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanrestimplpipelineBranchImplPermissions {\n");
    
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

