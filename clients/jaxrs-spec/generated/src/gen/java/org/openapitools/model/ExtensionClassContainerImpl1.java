package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ExtensionClassContainerImpl1links;
import org.openapitools.model.ExtensionClassContainerImpl1map;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("ExtensionClassContainerImpl1")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-05-10T02:40:32.828902557Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class ExtensionClassContainerImpl1   {
  private String propertyClass;
  private ExtensionClassContainerImpl1links links;
  private ExtensionClassContainerImpl1map map;

  public ExtensionClassContainerImpl1() {
  }

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

  @JsonProperty("_class")
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
  @Valid public ExtensionClassContainerImpl1links getLinks() {
    return links;
  }

  @JsonProperty("_links")
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
  @Valid public ExtensionClassContainerImpl1map getMap() {
    return map;
  }

  @JsonProperty("map")
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

