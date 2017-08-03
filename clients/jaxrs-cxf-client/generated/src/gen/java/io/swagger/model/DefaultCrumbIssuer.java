package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class DefaultCrumbIssuer  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private String crumb = null;
  @ApiModelProperty(value = "")
  private String crumbRequestField = null;

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

  public DefaultCrumbIssuer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get crumb
   * @return crumb
  **/
  public String getCrumb() {
    return crumb;
  }

  public void setCrumb(String crumb) {
    this.crumb = crumb;
  }

  public DefaultCrumbIssuer crumb(String crumb) {
    this.crumb = crumb;
    return this;
  }

 /**
   * Get crumbRequestField
   * @return crumbRequestField
  **/
  public String getCrumbRequestField() {
    return crumbRequestField;
  }

  public void setCrumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
  }

  public DefaultCrumbIssuer crumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultCrumbIssuer {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    crumb: ").append(toIndentedString(crumb)).append("\n");
    sb.append("    crumbRequestField: ").append(toIndentedString(crumbRequestField)).append("\n");
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

