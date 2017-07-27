package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl   {
  
  private String propertyClass = null;
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links = null;
  private List<String> classes = new ArrayList<String>();

  /**
   **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl propertyClass(String propertyClass) {
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
  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl links(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks getLinks() {
    return links;
  }
  public void setLinks(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links) {
    this.links = links;
  }

  /**
   **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }
  public void setClasses(List<String> classes) {
    this.classes = classes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestExtensionClassImpl iojenkinsblueoceanserviceembeddedrestExtensionClassImpl = (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl) o;
    return Objects.equals(propertyClass, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.propertyClass) &&
        Objects.equals(links, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.links) &&
        Objects.equals(classes, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

