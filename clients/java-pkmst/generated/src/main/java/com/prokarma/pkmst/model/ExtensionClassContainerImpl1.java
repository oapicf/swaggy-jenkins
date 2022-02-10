package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ExtensionClassContainerImpl1links;
import com.prokarma.pkmst.model.ExtensionClassContainerImpl1map;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ExtensionClassContainerImpl1
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2022-02-10T09:46:03.315402Z[Etc/UTC]")
public class ExtensionClassContainerImpl1   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("_links")
  private ExtensionClassContainerImpl1links links;

  @JsonProperty("map")
  private ExtensionClassContainerImpl1map map;

  public ExtensionClassContainerImpl1 propertyClass(String propertyClass) {
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

  public ExtensionClassContainerImpl1 links(ExtensionClassContainerImpl1links links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @ApiModelProperty(value = "")
  public ExtensionClassContainerImpl1links getLinks() {
    return links;
  }

  public void setLinks(ExtensionClassContainerImpl1links links) {
    this.links = links;
  }

  public ExtensionClassContainerImpl1 map(ExtensionClassContainerImpl1map map) {
    this.map = map;
    return this;
  }

   /**
   * Get map
   * @return map
  **/
  @ApiModelProperty(value = "")
  public ExtensionClassContainerImpl1map getMap() {
    return map;
  }

  public void setMap(ExtensionClassContainerImpl1map map) {
    this.map = map;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtensionClassContainerImpl1 extensionClassContainerImpl1 = (ExtensionClassContainerImpl1) o;
    return Objects.equals(this.propertyClass, extensionClassContainerImpl1.propertyClass) &&
        Objects.equals(this.links, extensionClassContainerImpl1.links) &&
        Objects.equals(this.map, extensionClassContainerImpl1.map);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

