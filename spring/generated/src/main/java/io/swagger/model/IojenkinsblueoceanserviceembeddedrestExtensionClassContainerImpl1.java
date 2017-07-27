package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links = null;

  @JsonProperty("map")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map = null;

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 links(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @ApiModelProperty(value = "")

  @Valid

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links getLinks() {
    return links;
  }

  public void setLinks(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links links) {
    this.links = links;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 map(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map) {
    this.map = map;
    return this;
  }

   /**
   * Get map
   * @return map
  **/
  @ApiModelProperty(value = "")

  @Valid

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map getMap() {
    return map;
  }

  public void setMap(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map map) {
    this.map = map;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 = (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1) o;
    return Objects.equals(this.propertyClass, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.propertyClass) &&
        Objects.equals(this.links, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.links) &&
        Objects.equals(this.map, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.map);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, map);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

