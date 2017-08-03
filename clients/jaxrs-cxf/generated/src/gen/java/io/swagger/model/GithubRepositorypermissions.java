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

public class GithubRepositorypermissions  {
  
  @ApiModelProperty(value = "")
  private Boolean admin = null;
  @ApiModelProperty(value = "")
  private Boolean push = null;
  @ApiModelProperty(value = "")
  private Boolean pull = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

 /**
   * Get admin
   * @return admin
  **/
  public Boolean isAdmin() {
    return admin;
  }

  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

  public GithubRepositorypermissions admin(Boolean admin) {
    this.admin = admin;
    return this;
  }

 /**
   * Get push
   * @return push
  **/
  public Boolean isPush() {
    return push;
  }

  public void setPush(Boolean push) {
    this.push = push;
  }

  public GithubRepositorypermissions push(Boolean push) {
    this.push = push;
    return this;
  }

 /**
   * Get pull
   * @return pull
  **/
  public Boolean isPull() {
    return pull;
  }

  public void setPull(Boolean pull) {
    this.pull = pull;
  }

  public GithubRepositorypermissions pull(Boolean pull) {
    this.pull = pull;
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

  public GithubRepositorypermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorypermissions {\n");
    
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    push: ").append(toIndentedString(push)).append("\n");
    sb.append("    pull: ").append(toIndentedString(pull)).append("\n");
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

