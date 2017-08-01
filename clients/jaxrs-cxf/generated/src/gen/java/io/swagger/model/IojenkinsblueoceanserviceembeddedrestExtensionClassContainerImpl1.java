package io.swagger.model;

import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links = null;
  @ApiModelProperty(value = "")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map = null;

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

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links getLinks() {
    return links;
  }

  public void setLinks(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links) {
    this.links = links;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 links(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links) {
    this.links = links;
    return this;
  }

 /**
   * Get map
   * @return map
  **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map getMap() {
    return map;
  }

  public void setMap(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map) {
    this.map = map;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 map(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map) {
    this.map = map;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    map: ").append(toIndentedString(map)).append("\n");
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

