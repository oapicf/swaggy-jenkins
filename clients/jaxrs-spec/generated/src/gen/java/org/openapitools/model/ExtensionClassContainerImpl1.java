package org.openapitools.model;

import org.openapitools.model.ExtensionClassContainerImpl1links;
import org.openapitools.model.ExtensionClassContainerImpl1map;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExtensionClassContainerImpl1   {
  
  private @Valid String propertyClass = null;
  private @Valid ExtensionClassContainerImpl1links links = null;
  private @Valid ExtensionClassContainerImpl1map map = null;

  /**
   **/
  public ExtensionClassContainerImpl1 propertyClass(String propertyClass) {
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
  public ExtensionClassContainerImpl1 links(ExtensionClassContainerImpl1links links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public ExtensionClassContainerImpl1links getLinks() {
    return links;
  }
  public void setLinks(ExtensionClassContainerImpl1links links) {
    this.links = links;
  }

  /**
   **/
  public ExtensionClassContainerImpl1 map(ExtensionClassContainerImpl1map map) {
    this.map = map;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("map")
  public ExtensionClassContainerImpl1map getMap() {
    return map;
  }
  public void setMap(ExtensionClassContainerImpl1map map) {
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
    ExtensionClassContainerImpl1 extensionClassContainerImpl1 = (ExtensionClassContainerImpl1) o;
    return Objects.equals(propertyClass, extensionClassContainerImpl1.propertyClass) &&
        Objects.equals(links, extensionClassContainerImpl1.links) &&
        Objects.equals(map, extensionClassContainerImpl1.map);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, map);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtensionClassContainerImpl1 {\n");
    
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

